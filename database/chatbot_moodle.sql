-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09/04/2025 às 19:59
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `chatbot_moodle`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `configuracoes`
--

CREATE TABLE `configuracoes` (
  `id` int(11) NOT NULL,
  `chave` varchar(100) NOT NULL,
  `valor` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `acao` text NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `mensagens`
--

CREATE TABLE `mensagens` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `mensagem` text NOT NULL,
  `resposta` text DEFAULT NULL,
  `data_envio` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `palavras_chave`
--

CREATE TABLE `palavras_chave` (
  `id` int(11) NOT NULL,
  `palavra` varchar(100) NOT NULL,
  `pergunta_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `palavras_chave`
--

INSERT INTO `palavras_chave` (`id`, `palavra`, `pergunta_id`) VALUES
(586, 'trocar foto', 45),
(587, 'mudar avatar', 45),
(588, 'atualizar imagem', 45),
(589, 'foto perfil', 45),
(590, 'alterar foto', 45),
(591, 'senha', 41),
(592, 'redefinir', 41),
(593, 'recuperar', 41),
(594, 'esqueci', 41),
(595, 'erro', 41),
(596, 'acesso', 41),
(597, 'bloqueio', 41),
(598, 'redefinição', 41),
(599, 'problema', 41),
(600, 'suporte', 41),
(601, 'conta', 41),
(602, 'alterar', 41),
(603, 'travada', 41),
(604, 'segurança', 41),
(605, 'código', 41),
(606, 'nova-senha', 41),
(607, 'resetar', 41),
(608, 'redefinição-senha', 41),
(609, 'suporte-senha', 41),
(610, 'senha-temporária', 41),
(611, 'erro-recuperação', 41),
(612, 'redefinir-acesso', 41),
(613, 'código-recuperação', 41),
(614, 'e-mail-recuperação', 41),
(615, 'conta-bloqueada', 41),
(616, 'erro-senha', 41),
(617, 'senha-nova', 41),
(618, 'nova-acesso', 41),
(619, 'troca-senha', 41),
(620, 'redefinir-login', 41),
(621, 'alterar-acesso', 41),
(622, 'mudar', 41),
(639, 'enviar-atividade', 47),
(640, 'entregar-atividade', 47),
(641, 'dever', 47),
(642, 'exercicio', 47),
(643, 'atividade-postada', 47),
(644, 'upload-atividade', 47),
(645, 'fórum', 44),
(646, 'participar', 44),
(647, 'debate', 44),
(648, 'fórum-de-discussão', 44),
(649, 'debate-acadêmico', 44),
(650, 'notas', 42),
(651, 'avaliação', 42),
(652, 'desempenho', 42),
(653, 'resultado', 42),
(654, 'consulta', 42),
(655, 'média', 42),
(656, 'prova', 42),
(657, 'atividade', 42),
(658, 'desempenho-acadêmico', 42),
(659, 'boletim', 42),
(660, 'relatório', 42),
(661, 'ver-notas', 42),
(662, 'calcular', 42),
(663, 'final', 42),
(664, 'parcial', 42),
(665, 'lançamento', 42),
(666, 'erro-notas', 42),
(667, 'pontuação', 42),
(668, 'atribuição', 42),
(669, 'revisão', 42),
(670, 'prova-final', 42),
(671, 'teste', 42),
(672, 'exame', 42),
(673, 'pendente', 42),
(674, 'correção', 42),
(675, 'retificação', 42),
(676, 'professor', 42),
(677, 'histórico', 42),
(678, 'feedback', 42),
(679, 'erro-avaliação', 42),
(680, 'resultado-final', 42),
(681, 'conferir', 42),
(715, 'alterar-email', 48),
(716, 'editar-perfil', 48),
(717, 'mudar-email', 48),
(718, 'atualizar-email', 48),
(719, 'email-errado', 49),
(720, 'corrigir-email', 49),
(721, 'notificações-email', 49),
(722, 'email-desatualizado', 49),
(725, 'email-nao-recebe', 50),
(726, 'problema-email', 50),
(727, 'preferencias-notificacoes', 50),
(733, 'confirmar-email', 51),
(734, 'ativar-conta', 51),
(735, 'verificação-email', 51),
(736, 'email-confirmacao', 51),
(741, 'erro-de-login', 52),
(742, 'senha-incorreta', 52),
(743, 'esqueci-senha', 52),
(744, 'nao-consigo-entrar', 52),
(745, 'usuario-invalido', 53),
(746, 'conta-nao-ativa', 53),
(747, 'erro-de-autenticacao', 53),
(748, 'acesso-bloqueado', 53),
(919, 'café', 36),
(920, 'bebida', 36),
(921, 'cafeína', 36),
(922, 'espresso', 36),
(923, 'coado', 36),
(924, 'cappuccino', 36),
(925, 'mocha', 36),
(926, 'cafesinho', 36),
(927, 'bebida quente', 36),
(928, 'café expresso', 36),
(929, 'café preto', 36),
(930, 'café com leite', 36),
(931, 'grãos de café', 36),
(932, 'torra', 36),
(933, 'barista', 36),
(934, 'cafeteria', 36),
(935, 'energia', 36),
(936, 'despertar', 36),
(937, 'manhã', 36),
(938, 'hábito', 36),
(939, 'viciado em café', 36),
(940, 'aroma', 36),
(941, 'sabor', 36),
(942, 'xícara de café', 36),
(943, 'café forte', 36),
(944, 'café fraco', 36),
(945, 'café amargo', 36),
(946, 'café doce', 36),
(947, 'café quente', 36),
(948, 'café gelado', 36),
(949, 'café gourmet', 36),
(950, 'café especial', 36),
(951, 'café orgânico', 36),
(952, 'cafezinho', 36),
(953, 'atividade-sumiu', 54),
(954, 'atividade-desapareceu', 54),
(955, 'atividade-não-encontrada', 54),
(956, 'perdi-atividade', 54),
(957, 'sumiço-de-atividade', 54),
(958, 'desaparecimento-de-atividade', 54),
(959, 'atividade-removida', 54),
(960, 'atividade-não-visualizada', 54),
(961, 'onde-está-atividade', 54),
(962, 'atividade-inacessível', 54),
(963, 'atividade-oculta - visibilidade-limitada - restricao-de-acesso - condicoes-de-liberação - tarefa-blo', 55),
(964, 'atividades-sumiram - erro-visualizacao - nao-carrega-nada - tela-vazia - curso-sem-conteudo - navega', 56),
(965, 'curso-sem-atividade - aula-nao-iniciada - professor-nao-publicou - conteudo-ainda-incompleto - disci', 57),
(966, 'vejo-notas', 42),
(967, 'nota-incorreta - erro-de-avaliacao - pedir-revisao - nota-errada - revisar-tarefa - professor-errou-', 58),
(968, 'calcular-media - quanto-preciso-tirar - nota-minima - peso-da-prova - simulador-de-nota - media-parc', 59),
(969, 'nota-zero - tarefa-entregue-sem-nota - avaliacao-ainda-nao-liberada - erro-na-entrega - atividade-na', 60),
(970, 'primeiro-acesso - login-institucional - senha-padrao - iniciar-no-sistema - acesso-inicial - nova-se', 61),
(971, 'curso-nao-aparece - matricula-confirmada - sumiu-da-lista - nao-encontro-meu-curso - curso-invisivel', 62),
(972, 'meus-cursos - lista-de-cursos - visualizar-todos-os-cursos - painel-do-aluno - cursos-disponiveis - ', 63),
(973, 'confirmar-matricula - curso-correto - verificar-inscricao - painel-de-cursos - email-de-confirmacao ', 64),
(974, 'prazo-vencido - envio-atrasado - entregar-fora-do-prazo - penalidade-por-atraso - comunicar-professo', 65),
(975, 'prazo-de-entrega - data-limite-de-envio - onde-ver-prazo - prazo-no-calendario - aviso-de-vencimento', 66),
(976, 'como-enviar-atividade - passo-a-passo-entrega - adicionar-envio - enviar-arquivo-do-trabalho - salva', 67),
(977, 'botao-de-entrega-sumiu - entrega-desabilitada - nao-consigo-enviar - sem-opcao-de-envio - atividade-', 68),
(978, 'atividade-reaberta - reenviar-tarefa - corrigir-e-reenviar - novo-envio-liberado - instrucao-do-prof', 69),
(979, 'atividade-reaberta-sem-explicacao - motivo-da-reabertura - professor-liberou-novamente - oportunidad', 70),
(980, 'prazo-novo-reabertura - data-alterada-atividade - prazo-estendido - nova-data-de-entrega - professor', 71),
(981, 'erro-no-anexo - falha-ao-enviar-arquivo - arquivo-nao-sobe - nome-do-arquivo - tamanho-do-arquivo - ', 72),
(982, 'tipo-de-arquivo-bloqueado - extensao-nao-permitida - enviar-em-pdf - formato-invalido - configuracao', 73),
(983, 'falha-ao-salvar-envio - botao-travado - erro-no-navegador - limpar-cache - navegador-compativel - tr', 74),
(984, 'nota-menor-que-o-esperado - diferença-na-avaliação - critérios-de-nota - peso-das-atividades - expli', 75),
(985, 'data-da-prova-online - aviso-de-avaliação - calendario-de-provas - informativo-do-professor - quando', 76),
(986, 'tempo-de-prova-online - cronometro-na-avaliação - prova-com-tempo-limitado - tempo-restante-na-prova', 77),
(987, 'queda-de-internet-na-prova - reconectar-prova-online - perdi-a-tentativa - prova-caiu-no-meio - expl', 78),
(988, 'pedir-revisao-de-nota - revisar-avaliacao - contestar-correcao - erro-na-nota - solicitar-reavaliaca', 79),
(989, 'professor-nao-respondeu-revisao - aguardando-retorno-sobre-nota - sem-resposta-do-docente - revisar-', 80),
(990, 'enviar-mensagem-ao-professor - como-falar-com-docente - onde-falar-com-o-professor - contato-com-o-p', 81),
(991, 'professor-demora-responder - mensagem-sem-resposta - lembrete-para-o-professor - atraso-na-resposta ', 82),
(992, 'contato-fora-da-plataforma - e-mail-do-professor - canal-alternativo - onde-falar-com-o-professor - ', 83),
(993, 'notificacao-nao-chegou - configurar-alertas - notificacao-de-atividade - problema-com-aviso - perfil', 84),
(994, 'notificacao-sumiu - parou-de-chegar-alerta - configurar-preferencias - e-mail-nao-recebe - verificac', 85),
(995, 'notificacao-atrasada - aviso-chega-tarde - atraso-na-mensagem - notificacao-lenta - ativar-alertas-e', 86),
(996, 'mensagem-privada-para-colega - como-enviar-mensagem-direta - conversar-com-outro-aluno - chat-privad', 87),
(997, 'historico-de-mensagens - onde-ver-conversa-privada - mensagens-salvas - conversas-anteriores - visua', 88),
(998, 'apagar-mensagem-enviada - editar-chat - erro-na-mensagem - excluir-conversa - corrigir-mensagem-envi', 89),
(999, 'chat-vs-forum - diferenca-entre-chat-e-forum - como-usar-chat - como-usar-forum - conversa-ao-vivo -', 90),
(1000, 'forum-obrigatorio - participar-do-forum - forum-vale-nota - debate-obrigatorio - forum-com-avaliacao', 91),
(1001, 'chat-nao-fica-salvo - conversa-some-depois - salvar-chat - copiar-conversa-do-chat - print-do-chat -', 92),
(1002, 'erro-na-tela - mensagem-de-erro - problema-de-carregamento - o-que-fazer-com-erro - suporte-tecnico-', 93),
(1003, 'pagina-nao-carrega - sistema-travado - erro-de-carregamento - lentidao-na-plataforma - falha-no-nave', 94),
(1004, 'plataforma-fora-do-ar - nao-consigo-acessar - problema-de-acesso - erro-na-rede - verificar-com-cole', 95),
(1005, 'plataforma-lenta - navegador-com-problemas - trocar-de-navegador - melhorar-desempenho - limpar-cach', 96),
(1006, 'melhor-navegador-para-acessar - navegadores-compatíveis - qual-navegador-usar - sistema-com-bom-dese', 97),
(1007, 'atualizar-navegador - navegador-desatualizado - erro-de-compatibilidade - manter-atualizado - proble', 98),
(1008, 'plataforma-caiu - sistema-indisponível - instabilidade-geral - acesso-com-erro - plataforma-fora-do-', 99),
(1009, 'sistema-lento - lentidao-no-acesso - falha-no-sistema - pico-de-uso - sobrecarga-na-plataforma - nav', 100),
(1010, 'manutencao-programada - plataforma-em-manutencao - aviso-de-sistema - sistema-desligado - interrupca', 101),
(1011, 'erro-no-upload - problema-ao-enviar-arquivo - envio-falhou - formato-nao-aceito - tamanho-excedido -', 102),
(1012, 'erro-no-download - arquivo-nao-baixa - nao-consigo-abrir - problema-com-material - arquivo-inacessiv', 103),
(1013, 'limite-de-tamanho - tamanho-maximo-do-arquivo - envio-grande - compactar-arquivo - erro-por-tamanho ', 104),
(1014, 'acesso-pelo-celular - estudar-pelo-celular - plataforma-no-celular - usar-no-celular-ou-pc - versao-', 105),
(1015, 'aplicativo-oficial - app-para-estudar - baixar-o-aplicativo - app-para-celular - onde-baixar-app - p', 106),
(1016, 'app-com-erro - aplicativo-nao-abre - erro-no-celular - reinstalar-aplicativo - atualizar-app - app-n', 107),
(1017, 'inscricao-nas-disciplinas - materias-nao-aparecem - cadastrar-disciplinas - como-me-inscrevo - disci', 108),
(1018, 'disciplina-errada - materia-que-nao-e-minha - erro-na-inscricao - problema-na-matricula - ajustar-di', 109),
(1019, 'ver-cursos-disponiveis - cursos-para-inscricao - materias-opcionais - disciplinas-abertas - procurar', 110),
(1020, 'diferenca-professor-e-tutor - quem-e-o-tutor - papel-do-professor - papel-do-tutor - quem-corrige-as', 111),
(1021, 'certificado-de-conclusao - pegar-certificado - onde-baixar-certificado - finalizacao-do-curso - comp', 112),
(1022, 'comprovante-de-matricula - como-emitir-documento - onde-baixar-comprovante - matricula-ativa - docum', 113),
(1023, 'documentos-online - tirar-documentos-na-plataforma - comprovantes-digitais - historico-online - cert', 114),
(1024, 'alar-com-atendente - suporte-humano - sair-do-chatbot - atendimento-real - conversar-com-pessoa - aj', 115),
(1025, 'chatbot-nao-entende - reformular-pergunta - chatbot-com-erro - ajuda-com-chatbot - chatbot-nao-ajudo', 116),
(1026, 'horario-do-suporte - atendimento-tempo-limitado - suporte-horario-comercial - chatbot-24h - quando-t', 117);

-- --------------------------------------------------------

--
-- Estrutura para tabela `perguntas_respostas`
--

CREATE TABLE `perguntas_respostas` (
  `id` int(11) NOT NULL,
  `pergunta` text NOT NULL,
  `resposta` text NOT NULL,
  `contexto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `perguntas_respostas`
--

INSERT INTO `perguntas_respostas` (`id`, `pergunta`, `resposta`, `contexto`) VALUES
(36, 'Quero cafe', 'Ahhh, o café! O combustível dos estudantes e professores! 🚀☕\r\n\r\nSe você está desesperado(a) por uma dose de cafeína (e quem não está?), eu posso te ajudar a encontrar a senhorinha da copa mais próxima – aquela heroína que salva nosso dia com seu café \'quase bom\' e bolachas misteriosas!', '\"Ah, café… o remédio oficial para transformar zumbis em humanos – vou garantir a dose certa pra você!\"'),
(41, 'Como recuperar minha senha?', 'Para recuperar sua senha, clique em \"Esqueci minha senha\" na tela de login. Insira seu e-mail cadastrado e siga as instruções enviadas para redefinir sua senha.', 'Redefinição de Senhas?'),
(42, 'Como visualizar minhas notas?', 'No menu principal, clique na aba \"Notas\" para ver todas as avaliações e seus respectivos resultados dentro do curso.', 'Visualizar Notas?'),
(44, 'Como participar de um fórum?', 'Entre no curso, clique no fórum desejado, selecione \"Adicionar novo tópico de discussão\", escreva sua mensagem e clique em \"Postar no fórum\".', 'Participar de um Fórum?'),
(45, 'Como mudar minha foto de perfil?', 'Vá até seu perfil, clique em “Editar perfil” e faça o upload de uma nova imagem. Salve as alterações e aguarde a atualização.', 'Mudar foto de perfil?'),
(47, 'Como entrego uma atividade?', 'Acesse o curso, clique na atividade que deseja enviar, depois em “Adicionar envio”, envie o arquivo e clique em “Salvar mudanças”.', 'Envio ou Entregas de atividades?'),
(48, 'Como altero o e-mail da minha conta no Moodle?', 'Você pode alterar seu e-mail indo até seu perfil, clicando em \"Editar perfil\" e modificando o campo de e-mail. Não esqueça de salvar as alterações no final da página.', 'Alteração de E-mail?'),
(49, 'O Moodle está enviando mensagens para o e-mail errado. Como corrijo isso?', 'Isso acontece quando seu e-mail cadastrado está desatualizado. Acesse seu perfil, clique em \"Editar perfil\" e verifique o e-mail cadastrado. Atualize se necessário.', 'Correção de e-mail de recebimento de notificações.'),
(50, 'Não estou recebendo notificações por e-mail do Moodle, o que fazer?', 'Verifique se o e-mail cadastrado está correto e se as notificações estão ativadas em seu perfil, na aba de preferências.', 'Problemas com recebimento de notificações do Moodle.'),
(51, 'Como confirmar meu e-mail depois de cadastrar no Moodle?', 'Após se cadastrar, você receberá um e-mail de confirmação. Acesse sua caixa de entrada e clique no link enviado para ativar sua conta.', 'Ativação de conta e verificação de e-mail.'),
(52, 'Não estou conseguindo acessar o Moodle com meu login e senha. O que faço?', 'Verifique se o seu login e senha estão corretos. Caso tenha esquecido a senha, clique em \"Esqueceu o seu usuário ou a sua senha?\" na tela de login para redefinir.', 'Não consigo entrar no Moodle?'),
(53, 'Aparece “usuário inválido” quando tento entrar no Moodle. O que pode ser?', 'Isso geralmente acontece quando o usuário está digitado errado ou a conta ainda não foi ativada. Confira os dados e, se necessário, entre em contato com o suporte.', 'Problemas de autenticação ou Usuário inválido.'),
(54, 'A atividade que eu tinha visto sumiu. O que aconteceu?', 'Isso pode acontecer quando o professor remove a atividade ou define uma data de encerramento. Verifique com o docente se ela foi desativada ou se o prazo expirou.', 'Atividade sumiu da pagina do curso?'),
(55, 'Por que uma atividade aparece para meus colegas, mas não aparece pra mim?', 'Algumas atividades podem ter critérios de acesso específicos, como participação em outra tarefa ou perfil de usuário. Verifique se você concluiu os pré-requisitos ou fale com o professor.', 'Atividade aparece para meus colegas, mas não aparece pra mim?'),
(56, 'As atividades sumiram do meu curso. O que faço?', 'Pode ser um problema de visualização. Tente recarregar a página, acessar por outro navegador ou limpar o cache. Se não resolver, entre em contato com o suporte ou com o professor.', 'Não consigo ver nenhuma atividade?'),
(57, 'Entrei no curso e não aparece nenhuma atividade, é normal?', 'Pode ser que o curso ainda não esteja liberado pelo professor ou que ele esteja configurando os conteúdos. Aguarde a publicação ou entre em contato com a coordenação.', 'Não aparece nenhuma atividade?'),
(58, 'A nota que apareceu está errada, e agora?', 'Entre em contato com o professor responsável pela disciplina, explique o que aconteceu e solicite a revisão. Pode ter sido um erro de digitação ou sistema.', 'A nota está errada?'),
(59, 'Como saber quanto preciso tirar na próxima atividade?', 'Você pode calcular com base nas notas anteriores e no peso de cada atividade. Alguns cursos disponibilizam planilhas ou fórmulas no plano de ensino. Em caso de dúvida, consulte o professor', 'Preciso de quanto na atividade?'),
(60, 'Apareceu “0” em uma tarefa que eu entreguei, por quê?', 'Isso pode acontecer se o envio não foi concluído corretamente ou se a atividade não foi avaliada ainda. Verifique o histórico da tarefa ou envie uma mensagem ao professor.', 'Nota errada após envio de tarefa?'),
(61, 'Como faço para acessar o sistema pela primeira vez?', 'Você deve utilizar seu login institucional e a senha padrão fornecida pela instituição. Após o primeiro acesso, será solicitado que você altere a senha.', 'Primeiro acesso?'),
(62, 'Me matriculei, mas o curso não aparece. O que faço?', 'Se o curso não aparecer logo após a matrícula, aguarde alguns minutos. Caso continue invisível, entre em contato com a coordenação ou verifique se a matrícula foi realmente confirmada.', 'Estou com dificuldade em visualizar o curso mesmo após matrícula?'),
(63, 'Consigo ver todos os cursos que estou inscrito?', 'Sim! Você pode acessar todos os cursos disponíveis para você através do menu “Meus cursos” ou “Painel”. Caso algum esteja faltando, entre em contato com o suporte.', 'Quero ver todos os meus cursos?'),
(64, 'Como sei se fui realmente matriculado no curso certo?', 'Você pode confirmar sua matrícula verificando no seu painel se o curso aparece listado. Além disso, o sistema geralmente envia um e-mail de confirmação.', 'Aluno em dúvida se a matrícula foi feita?'),
(65, 'A atividade venceu. Ainda consigo entregar?', 'Alguns professores permitem envio com atraso, mas pode haver desconto na nota. A melhor opção é entrar em contato com o professor e explicar a situação.', 'Tentando enviar atividade depois do prazo?'),
(66, 'Como sei até quando posso enviar a atividade?', 'A data de envio aparece logo abaixo da descrição da atividade. Também é possível ver os prazos na página inicial do curso ou no calendário.', 'Dúvida sobre onde visualizar os prazos de entrega de atividade?'),
(67, 'Como faço para enviar uma atividade que o professor pediu?', 'Para entregar, clique na atividade e depois no botão “Adicionar envio”. Anexe o arquivo ou digite seu texto, clique em “Salvar mudanças” e depois em “Enviar tarefa” se for solicitado.', 'Não sei enviar atividade?'),
(68, 'O botão de entrega não aparece pra mim. O que faço?', 'Isso pode acontecer se o prazo já passou ou se o professor ainda não liberou o envio. Confirme as datas e, se o problema continuar, entre em contato com o professor.', 'Opção de envio da atividade não visível?'),
(69, 'O professor reabriu a atividade. Preciso enviar tudo de novo?', 'Se o professor reabrir, você pode corrigir o que já enviou ou reenviar tudo, dependendo da orientação. Veja se ele deixou um comentário com instruções.', 'O que fazer após uma reabertura da atividade?'),
(70, 'Por que minha atividade foi reaberta pelo professor?', 'Às vezes, o professor reabre uma atividade para permitir correção, complementar o conteúdo ou por falha no envio. Veja se há alguma mensagem explicando o motivo.', 'Reabertura de Atividade?'),
(71, 'Tem prazo diferente quando a atividade é reaberta?', 'Sim, quando a atividade é reaberta, o professor define um novo prazo para envio. Verifique a nova data no painel da atividade.', 'Prazo de reabertura de atividade?'),
(72, 'Tô tentando anexar o arquivo?', 'Verifique se o nome do arquivo tem caracteres especiais ou se ele está muito pesado. Também pode ser o tipo do arquivo. Tente renomear ou comprimir e envie novamente.', 'Estou tentando anexar um arquivo e a plataforma não aceita?'),
(73, 'Apareceu uma mensagem dizendo que o tipo de arquivo não é permitido. E agora?', 'Alguns professores restringem os tipos de arquivo permitidos. Prefira PDF ou DOC. Se precisar enviar outro formato, combine com o professor antes.', 'Arquivo não é permitido?'),
(74, 'O envio trava toda vez que clico em \"Salvar mudanças\". O que posso fazer?', 'Tente usar outro navegador ou limpar o cache. Se o problema continuar, reinicie o computador ou envie o arquivo por e-mail ao professor explicando a situação.', 'O envio travando?'),
(75, 'Por que a nota veio diferente?', 'A nota pode considerar critérios que nem sempre são visíveis, como participação ou peso de cada parte. Veja os comentários do professor ou a grade de avaliação.', 'Nota está errada?'),
(76, 'Quando vai ter uma prova online?', 'As provas geralmente aparecem no calendário ou nos avisos do curso. Fique atento aos comunicados do professor e às datas marcadas na área da disciplina.', 'Data da prova online?'),
(77, 'Qual o tempo da prova online?', 'Sim! A maioria das provas online tem tempo definido para começar e terminar. Quando você inicia, um cronômetro aparece na tela. Fique de olho e não deixe para a última hora!', 'Qual o tempo da prova online?'),
(78, 'Perdi a conexão no meio da prova. E agora?', 'Tente se reconectar o mais rápido possível. Se o tempo continuar correndo, entre em contato com o professor explicando o que aconteceu. Ele pode reabrir a tentativa, se for possível.', 'Minha internet caiu na hora da prova?'),
(79, 'Tem como pedir revisão da nota?', 'Sim! Você pode solicitar ao professor uma revisão, explicando o motivo. É importante ser respeitoso e claro ao mostrar onde acha que houve algum erro.', 'Revisão de nota?'),
(80, 'Pedi revisão, mas o professor não respondeu. O que faço?', 'Espere um pouco, pois o professor pode estar corrigindo muitas solicitações. Se demorar, envie um lembrete educado ou procure o suporte do curso.', 'Aguardando retorno sobre pedido de revisão?'),
(81, 'Como eu falo com o professor por aqui?', 'Você pode enviar uma mensagem pela área da disciplina. Normalmente tem um botão \"mensagem\" ou “participantes”, onde você encontra o nome do professor e pode escrever direto.', 'Quero falar com o Professor?'),
(82, 'O professor não respondeu minha mensagem. O que eu faço?', 'Os professores podem demorar um pouco, principalmente em época de avaliações. Aguarde mais um tempo e, se necessário, envie um lembrete gentil ou procure outro canal de contato.', 'O professor não respondeu minha mensagem?'),
(83, 'Tem outro jeito de falar com o professor além da plataforma?', 'Depende do curso. Às vezes o professor compartilha e-mail ou outro canal. Veja se ele deixou essa informação na apresentação do curso ou nos avisos.', 'Outro canal com o professor?'),
(84, 'Não recebi notificação da nova atividade. Isso é normal?', 'Pode acontecer se as notificações estiverem desativadas. Vá nas configurações do seu perfil e verifique se está tudo ativado para e-mail ou no navegador.', 'Não fui avisado e perdi a atividade?'),
(85, 'Recebia notificações antes e agora parou. O que houve?', 'Pode ser que você tenha desativado sem querer ou mudou algo no navegador ou no e-mail. Verifique suas preferências de notificação e veja se o endereço de e-mail está correto.', 'Não estou recebendo notificação?'),
(86, 'As notificações chegam atrasadas pra mim. Dá pra resolver?', 'Notificações podem demorar dependendo do tipo (e-mail, navegador). Para melhorar, ative os dois modos e mantenha o sistema aberto em segundo plano sempre que possível.', 'Notificações em atraso?'),
(87, 'Como mando mensagem privada pra outro aluno?', 'Você pode ir na aba de participantes da disciplina, encontrar o nome do colega e clicar no botão de mensagem. A conversa será privada e só vocês dois verão.', 'Mensagem privada pra outro aluno?'),
(88, 'As mensagens privadas ficam salvas onde?', 'Elas ficam no seu histórico de mensagens, geralmente acessível pelo ícone de mensagens na plataforma. Você pode revisar conversas antigas quando quiser.', 'Onde ficam armazenadas as conversas privadas?'),
(89, 'Consigo apagar mensagens que enviei por engano?', 'Depende da configuração do sistema. Em alguns casos dá para excluir ou editar, mas em outros não. Se for algo sério, avise ao colega ou professor.', 'Enviei mensagem errada no privado?'),
(90, 'Qual a diferença entre o chat e o fórum?', 'O chat é uma conversa ao vivo, como um bate-papo instantâneo. Já o fórum funciona como uma caixa de mensagens: você posta, e as pessoas respondem quando puderem.', 'Qual canal usar: chat ou fórum?'),
(91, 'O fórum é obrigatório ou só quando quero participar?', 'Depende da atividade. Alguns fóruns valem nota ou são obrigatórios para participação. Outros são abertos para dúvidas ou debates voluntários.', 'É obrigado participar do fórum?'),
(92, 'O chat ao vivo some depois da conversa?', 'Sim, em muitos casos o chat ao vivo não fica salvo. Se precisar guardar algo importante, copie antes de fechar ou tire print.', 'O chat ao vivo some depois da conversa?'),
(93, 'Apareceu uma mensagem de erro. O que eu faço?', 'Primeiro, anote ou tire print da mensagem de erro. Depois, tente recarregar a página ou trocar de navegador. Se continuar, entre em contato com o suporte técnico.', 'Erro inesperada na plataforma?'),
(94, 'A página trava ou não carrega. Isso é normal?', 'Pode acontecer por instabilidade na internet ou navegador. Tente limpar o cache, mudar de navegador ou usar outro dispositivo. Se persistir, contate o suporte.', 'A página travou?'),
(95, 'A plataforma está fora do ar pra mim. Só eu?', 'Pode ser algo local. Tente outro navegador, reinicie o modem ou veja se outros colegas estão com o mesmo problema. Se for geral, o suporte já deve estar resolvendo.', 'Plataforma fora do ar?'),
(96, 'A plataforma fica lenta no meu navegador. O que fazer?', 'Tente usar outro navegador (como Chrome ou Firefox), limpe o cache e feche outras abas. Às vezes, o navegador usado não está totalmente compatível.', 'Lentidão ao acessar o sistema?'),
(97, 'Qual navegador é melhor pra usar o sistema?', 'Geralmente, Chrome e Firefox são os mais compatíveis. Evite usar navegadores antigos ou que não estejam atualizados para evitar erros.', 'Qual melhor navegador?'),
(98, 'Preciso atualizar o navegador? Isso ajuda?', 'Os Navegadores desatualizados podem causar erros. Sempre mantenha seu navegador atualizado para garantir que tudo funcione bem e com segurança.', 'Falhas com o navegador?'),
(99, 'A plataforma caiu? Tá todo mundo com esse problema?', 'Pode ser uma instabilidade geral. Tente entrar mais tarde e confirme com colegas. Quando é algo grande, o suporte normalmente já está resolvendo.', 'A plataforma caiu?'),
(100, 'O sistema tá lento demais. É só comigo?', 'Às vezes é sua conexão, mas também pode ser sobrecarga no sistema. Teste em outro horário ou em outro navegador. Se continuar, fale com o suporte.', 'Sistema lento?'),
(101, 'Como sei se a plataforma está em manutenção?', 'Normalmente o aviso é enviado por e-mail ou publicado em um canal oficial. Se não viu nada, pode ser uma queda repentina. Espere um pouco e tente novamente.', 'Plataforma em manutenção?'),
(102, 'Tentei enviar um arquivo, mas deu erro. E agora?', 'Verifique se o arquivo não está muito grande ou em um formato não aceito. Tente renomear e enviar de novo. Se continuar dando erro, fale com o suporte.', 'Arquivo dando erro no envio?'),
(103, 'O sistema não deixa eu baixar um arquivo da atividade. O que fazer?', 'Tente outro navegador ou dispositivo. Se ainda assim não conseguir, avise ao professor ou suporte para verificar se o arquivo está disponível corretamente.', 'Erro ao baixar arquivo?'),
(104, 'Qual o tamanho máximo de arquivo que posso enviar?', 'Isso depende da configuração da atividade, mas geralmente o limite é de alguns megas. Sempre verifique antes de enviar, ou compacte o arquivo se estiver muito grande.', 'Envio de arquivos tem limite de tamanho?'),
(105, 'Consigo acessar tudo pelo celular ou só pelo computador?', 'Você pode acessar pelo celular sim! Mas algumas funções ficam melhores no computador. Sempre que puder, use a versão web pra ter uma experiência mais completa.', 'Dúvidas ao acessar pelo celular?'),
(106, 'Tem um aplicativo oficial que eu posso baixar?', 'Sim! Você pode usar o Moodle diretamente pelo celular. Basta procurar o aplicativo oficial do Moodle na Play Store (Android) ou App Store (iPhone). Ele é gratuito e facilita bastante o acesso às suas atividades, mensagens e conteúdos dos cursos. Depois de instalar, é só buscar pela plataforma da sua instituição e fazer login com seus dados normalmente.', 'Acessar a plataforma com App?'),
(107, 'O aplicativo tá com erro. O que eu faço?', 'Tente fechar o app e abrir de novo. Se não funcionar, atualize ou reinstale. Também vale testar com internet diferente. Se persistir, procure o suporte.', 'O aplicativo tá com erro? '),
(108, 'Como me inscrevo nas disciplinas certas?', 'Normalmente, as disciplinas aparecem automaticamente com base na sua matrícula. Se algo estiver faltando, entre em contato com a coordenação ou suporte da instituição.', 'Inscrição em disciplinas?'),
(109, 'Apareceu uma disciplina errada pra mim. O que faço?', 'Pode ser um erro de matrícula ou configuração. Avise à coordenação ou suporte para corrigirem. Não se preocupe, dá pra ajustar!', 'Apareceu uma disciplina errada?'),
(110, 'Consigo ver os cursos que ainda posso me inscrever?', 'Depende do sistema da instituição. Alguns permitem ver cursos abertos à matrícula. Se tiver dúvidas, fale com a secretaria ou coordenação.', 'Opções de cursos adicionais?'),
(111, 'Qual a diferença entre professor e tutor?', 'O professor é o responsável pela disciplina, conteúdo e avaliação. O tutor acompanha você no dia a dia, tira dúvidas e ajuda no andamento das atividades. Cada um tem seu papel!', 'Diferença entre professor e tutor?'),
(112, 'Como eu pego meu certificado de conclusão?', 'Normalmente ele fica disponível após a finalização do curso, na área do estudante. Caso não encontre, entre em contato com a secretaria ou suporte acadêmico.', 'Certificado de conclusão?'),
(113, 'Preciso de um comprovante de matrícula. Onde tiro?', 'Você pode emitir diretamente pela plataforma, geralmente na aba de documentos. Se não estiver disponível, a secretaria pode emitir pra você rapidamente.', 'Comprovante de matrícula'),
(114, 'Quais documentos consigo tirar direto pela plataforma?', 'Depende da configuração da instituição, mas geralmente é possível tirar comprovante de matrícula, histórico parcial e certificado. Sempre verifique na área do aluno.', 'Posso emitir documentos pela plataforma?'),
(115, 'Como eu falo com um atendente de verdade?', 'Se o chatbot não resolver, ele normalmente oferece a opção de falar com uma pessoa. Procure por botões como \"Falar com atendente\" ou \"Suporte humano\" no final da conversa.', 'Suporte Humano?'),
(116, 'O chatbot não entendeu o que eu queria. E agora?', 'Sem problema! Você pode tentar reformular a pergunta ou seguir a sugestão do próprio chatbot para falar com um atendente humano.', 'Aluno insatisfeito com resposta automática?'),
(117, 'Tem horário certo pra falar com o atendimento(SUPORTE HUMANO)?', 'Certo! Geralmente o suporte humano funciona em horário comercial. Fora disso, o chatbot continua disponível pra responder dúvidas básicas.', 'Suporte Humano fora do horário?');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `tipo` enum('aluno','professor','admin') NOT NULL,
  `criado_em` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `configuracoes`
--
ALTER TABLE `configuracoes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `chave` (`chave`);

--
-- Índices de tabela `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Índices de tabela `mensagens`
--
ALTER TABLE `mensagens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Índices de tabela `palavras_chave`
--
ALTER TABLE `palavras_chave`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `palavra` (`palavra`),
  ADD KEY `pergunta_id` (`pergunta_id`);
ALTER TABLE `palavras_chave` ADD FULLTEXT KEY `idx_fulltext_palavra` (`palavra`);
ALTER TABLE `palavras_chave` ADD FULLTEXT KEY `palavra_2` (`palavra`);

--
-- Índices de tabela `perguntas_respostas`
--
ALTER TABLE `perguntas_respostas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `configuracoes`
--
ALTER TABLE `configuracoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mensagens`
--
ALTER TABLE `mensagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `palavras_chave`
--
ALTER TABLE `palavras_chave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1027;

--
-- AUTO_INCREMENT de tabela `perguntas_respostas`
--
ALTER TABLE `perguntas_respostas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `mensagens`
--
ALTER TABLE `mensagens`
  ADD CONSTRAINT `mensagens_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `palavras_chave`
--
ALTER TABLE `palavras_chave`
  ADD CONSTRAINT `palavras_chave_ibfk_1` FOREIGN KEY (`pergunta_id`) REFERENCES `perguntas_respostas` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
