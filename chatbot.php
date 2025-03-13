<?php
header("Content-Type: text/html; charset=UTF-8");
session_start();  // Inicia a sessão
/*
session_unset();
session_destroy();
*/
/*Este arquivo PHP recebe a requisição AJAX enviada pelo chatbot.js, 
processa a mensagem do usuário, busca a resposta no banco de dados 
(usando paramentros.php para a conexão com o banco de dados), 
e retorna a resposta para o chatbot.js.*/

include __DIR__ . '/paramentros.php';

// Inicializa erro_count se ainda não estiver definido
if (!isset($_SESSION['erro_count'])) {
    $_SESSION['erro_count'] = 0;
}

// Verifica se o chat acabou de ser aberto
if (!isset($_SESSION["chat_started"])) {
    $_SESSION["chat_started"] = true;
    usleep(1000000); // 1 segundo
    paramentros::send_response(paramentros::WELCOME_MESSAGE);
    exit;
}

// Obtém a mensagem do usuário
$message = isset($_POST["message"]) ? strtolower(trim($_POST["message"])) : "";

// Define o nome do usuário
$user_name = paramentros::DEFAULT_USER_NAME;

// Função para buscar resposta baseada em palavras-chave e pergunta no banco de dados
$idCurso = 18;
function buscar_resposta($pdo, $message, $idCurso) {
    $stmt = $pdo->prepare("SELECT * FROM respostas WHERE (FIND_IN_SET(?, palavras_chave) OR pergunta LIKE ?) AND ID_CURSO = ?");
    $stmt->execute([$message, "%$message%", $idCurso]);
    $result = $stmt->fetch();
    return $result ? $result['resposta'] : null;
}

// Obtém a conexão com o banco de dados
$pdo = paramentros::getPDO();
$resposta = buscar_resposta($pdo, $message, $idCurso);

// Se nenhuma palavra-chave foi encontrada, usar resposta padrão
if ($resposta === null) {
    $_SESSION['erro_count']++;

    switch ($_SESSION['erro_count']) {
        case 1:
            $resposta = "$user_name, desculpe, não encontrei uma resposta para isso. Reformule sua pergunta, por favor!";
            break;
        case 2:
            $resposta = "$user_name, não consegui entender sua solicitação. Poderia reformular de outra maneira?";
            break;
        default:
            $resposta = "$user_name, sinto muito, não consegui te entender. Encerrando o chat... Tchauuu!";
            session_unset();
            session_destroy();
            break;
    }
}

// Simula resposta humana
usleep(rand(2000000, 4000000)); // Entre 2 e 4 segundos

$palavras_chave = $message;  // A mensagem do usuário é a palavra-chave
$pergunta = $message;  // A pergunta pode ser a própria mensagem do usuário

$stmt = $pdo->prepare("INSERT INTO respostas (palavras_chave, pergunta, resposta) VALUES (?, ?, ?)");
$stmt->execute([$palavras_chave, $pergunta, $resposta]);

// Envia a resposta para o usuário
paramentros::send_response($resposta);
?>

