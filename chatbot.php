<?php
header("Content-Type: text/html; charset=UTF-8");
session_start();  // Inicia a sessão

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

// Transforma a mensagem em um array de palavras
$words = explode(' ', $message);

// Define o nome do usuário
$user_name = paramentros::DEFAULT_USER_NAME;

// Define o ID do curso
$idCurso = 18;

// Obtém a conexão com o banco de dados
$pdo = paramentros::getPDO();

if (!$pdo) {
    // Se não houver conexão com o banco de dados, envia uma mensagem de erro
    paramentros::send_response("Erro ao conectar ao banco de dados. Tente novamente mais tarde.");
    exit;
}

function buscar_resposta($pdo, $words, $idCurso) {
    // Construir a consulta SQL
    $sql = "SELECT * FROM respostas WHERE (";
    
    // Adicionar condições para FIND_IN_SET
    $findInSetConditions = array_map(function($word) {
        return "FIND_IN_SET(?, palavras_chave)";
    }, $words);
    $sql .= implode(' OR ', $findInSetConditions);
    
    // Adicionar condições para LIKE
    $sql .= " OR ";
    $likeConditions = array_map(function($word) {
        return "pergunta LIKE ?";
    }, $words);
    $sql .= implode(' OR ', $likeConditions);
    
    // Adicionar filtro por ID_CURSO
    $sql .= ") AND ID_CURSO = ? ORDER BY LENGTH(palavras_chave) DESC"; // Ordena por relevância
    
    // Preparar a consulta
    $stmt = $pdo->prepare($sql);
    
    // Vincular os parâmetros
    $params = array_merge($words, array_map(function($word) { return "%$word%"; }, $words), [$idCurso]);
    $stmt->execute($params);
    
    // Buscar a resposta
    $result = $stmt->fetch();
    return $result ? $result['resposta'] : null;
}

// Busca a resposta no banco de dados
$resposta = buscar_resposta($pdo, $words, $idCurso);

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
            paramentros::send_response($resposta);
            exit; // Encerra o script após destruir a sessão
    }
}

// Simula resposta humana
usleep(rand(2000000, 4000000)); // Entre 2 e 4 segundos

// Inserir a mensagem do usuário e a resposta do bot no banco de dados
$stmt = $pdo->prepare("INSERT INTO messages (user_message, bot_response) VALUES (?, ?)");
$stmt->execute([$message, $resposta]);

// Envia a resposta para o usuário
paramentros::send_response($resposta);
?>