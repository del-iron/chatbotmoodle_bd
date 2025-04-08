-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 31/03/2025 às 21:33
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
(1, 'acesso', 1),
(2, 'acessar', 1),
(3, 'login', 1),
(4, 'senha', 1),
(5, 'entrar', 1),
(6, 'formato', 2),
(7, 'arquivo', 2),
(8, 'pdf', 2),
(9, 'word', 2),
(10, 'enviar', 2),
(11, 'tarefa', 3),
(12, 'envio', 3),
(13, 'status', 3),
(14, 'confirmação', 3),
(15, 'recebimento', 3),
(16, 'fórum', 4),
(17, 'discussão', 4),
(18, 'postar', 4),
(19, 'comentário', 4),
(20, 'dúvida', 4),
(21, 'problema', 5),
(22, 'erro', 5),
(23, 'suporte', 5),
(24, 'ajuda', 5),
(25, 'técnico', 5),
(26, 'credenciais', 1),
(27, 'autenticação', 1),
(28, 'perfil', 1),
(29, 'plataforma', 1),
(30, 'dashboard', 1),
(31, 'área do aluno', 1),
(32, 'recuperação', 1),
(33, 'bloqueio', 1),
(34, 'sessão', 1),
(35, 'cadastro', 1),
(36, 'extensão', 2),
(37, 'docx', 2),
(38, 'upload', 2),
(39, 'download', 2),
(40, 'tamanho', 2),
(41, 'ppt', 2),
(42, 'excel', 2),
(43, 'zip', 2),
(44, 'imagem', 2),
(45, 'jpg', 2),
(46, 'pendente', 3),
(47, 'concluído', 3),
(48, 'revisão', 3),
(49, 'correção', 3),
(50, 'análise', 3),
(51, 'atrasado', 3),
(52, 'reenvio', 3),
(53, 'comprovante', 3),
(54, 'validação', 3),
(55, 'aceito', 3),
(56, 'resposta', 4),
(57, 'debate', 4),
(58, 'tópico', 4),
(59, 'interação', 4),
(60, 'comunidade', 4),
(61, 'moderador', 4),
(62, 'thread', 4),
(63, 'pergunta', 4),
(64, 'opinião', 4),
(65, 'participação', 4),
(66, 'bug', 5),
(67, 'conexão', 5),
(68, 'lento', 5),
(69, 'travar', 5),
(70, 'atendimento', 5),
(71, 'falha', 5),
(72, 'solução', 5),
(73, 'diagnóstico', 5),
(74, 'relatar', 5),
(75, 'emergência', 5),
(76, 'notas', 6),
(77, 'feedback', 6),
(78, 'avaliação', 6),
(79, 'resultado', 6),
(80, 'desempenho', 6),
(81, 'rubrica', 6),
(82, 'pontuação', 6),
(83, 'média', 6),
(84, 'aprovacao', 6),
(85, 'reprovação', 6),
(86, 'conceito', 6),
(87, 'retorno', 6),
(88, 'progresso', 6),
(89, 'nota final', 6),
(90, 'notificações', 7),
(91, 'alerta', 7),
(92, 'e-mail', 7),
(93, 'mensagem', 7),
(94, 'lembrete', 7),
(95, 'atualização', 7),
(96, 'configuração', 7),
(97, 'preferências', 7),
(98, 'silenciar', 7),
(99, 'push', 7),
(100, 'sms', 7),
(101, 'lembretes', 7),
(102, 'configurar', 7),
(103, 'frequência', 7),
(104, 'urgente', 7),
(105, 'curso', 8),
(106, 'seções', 8),
(107, 'módulos', 8),
(108, 'conteúdo', 8),
(109, 'aulas', 8),
(110, 'material', 8),
(111, 'estrutura', 8),
(112, 'planejamento', 8),
(113, 'disciplina', 8),
(114, 'recursos', 8),
(115, 'unidade', 8),
(116, 'tópicos', 8),
(117, 'programa', 8),
(118, 'ementa', 8),
(119, 'bibliografia', 8),
(120, 'tarefas', 9),
(121, 'questionários', 9),
(122, 'exercícios', 9),
(123, 'testes', 9),
(124, 'quizzes', 9),
(125, 'prova', 9),
(126, 'gabarito', 9),
(127, 'prazo', 9),
(128, 'respostas', 9),
(129, 'múltipla escolha', 9),
(130, 'dissertação', 9),
(131, 'pontuar', 9),
(132, 'questões', 9),
(133, 'prazos', 10),
(134, 'conclusão', 10),
(135, 'atividades', 10),
(136, 'data', 10),
(137, 'limite', 10),
(138, 'cronograma', 10),
(139, 'adiamento', 10),
(140, 'finalização', 10),
(141, 'atraso', 10),
(142, 'vencimento', 10),
(143, 'entrega', 10),
(144, 'tempo', 10),
(145, 'calendário', 10),
(146, 'urgência', 10),
(176, 'logs', 11),
(177, 'estatísticas', 11),
(178, 'relatórios', 11),
(179, 'métricas', 11),
(180, 'dados', 11),
(181, 'registros', 11),
(182, 'monitoramento', 11),
(183, 'indicadores', 11),
(184, 'gráficos', 11),
(185, 'tendências', 11),
(186, 'auditoria', 11),
(187, 'KPIs', 11),
(188, 'tema', 12),
(189, 'layout', 12),
(190, 'cores', 12),
(191, 'design', 12),
(192, 'branding', 12),
(193, 'imagens', 12),
(194, 'banner', 12),
(195, 'aparência', 12),
(196, 'personalização', 12),
(197, 'interface', 12),
(198, 'CSS', 12),
(199, 'templates', 12),
(200, 'fonte', 12),
(201, 'vídeo', 13),
(202, 'YouTube', 13),
(203, 'áudio', 13),
(204, 'embed', 13),
(205, 'incorporação', 13),
(206, 'player', 13),
(207, 'streaming', 13),
(208, 'SCORM', 13),
(209, 'H5P', 13),
(210, 'animação', 13),
(211, 'podcast', 13),
(212, 'webinar', 13),
(213, 'slides', 13),
(214, 'playlist', 13),
(215, 'transmissão', 13),
(216, 'redefinição', 14),
(217, 'token', 14),
(218, 'segurança', 14),
(219, 'perguntas', 14),
(220, 'código', 14),
(221, 'temporário', 14),
(222, 'identidade', 14),
(223, 'notificação', 15),
(224, 'som', 15),
(225, 'vibração', 15),
(226, 'prioridade', 15),
(227, 'agendamento', 15),
(228, 'filtros', 15),
(229, 'spam', 15),
(230, 'inbox', 15),
(231, 'modo', 15),
(232, 'importante', 15),
(233, 'app', 16),
(234, 'móvel', 16),
(235, 'celular', 16),
(236, 'instalação', 16),
(237, 'Android', 16),
(238, 'iOS', 16),
(239, 'sincronização', 16),
(240, 'offline', 16),
(241, 'versão', 16),
(242, 'loja', 16),
(243, 'dispositivo', 16),
(244, 'responsivo', 16),
(245, 'câmera', 17),
(246, 'GPS', 17),
(247, 'biometria', 17),
(248, 'touch', 17),
(249, 'scan', 17),
(250, 'qr', 17),
(251, 'voice', 17),
(252, 'dark', 17),
(253, 'acessibilidade', 17),
(254, 'compacto', 17),
(255, 'gestos', 17),
(256, 'tablet', 17),
(257, 'wearables', 17),
(258, 'comentários', 18),
(259, 'anotações', 18),
(260, 'sugestões', 18),
(261, 'melhorias', 18),
(262, 'pontos', 18),
(263, 'competências', 18),
(264, 'checklist', 18),
(265, 'qualitativo', 18),
(266, 'quantitativo', 18),
(267, 'construtivo', 18),
(268, 'personalizado', 18),
(269, 'orientação', 18),
(270, 'cálculo', 19),
(271, 'peso', 19),
(272, 'arredondamento', 19),
(273, 'boletim', 19),
(274, 'exportar', 19),
(275, 'importar', 19),
(276, 'histórico', 19),
(277, 'ajuste', 19),
(278, 'manual', 19),
(279, 'sobreposição', 19),
(280, 'curva', 19),
(281, 'conversão', 19),
(282, 'foto', 20),
(283, 'privacidade', 20),
(284, 'biografia', 20),
(285, 'assinatura', 20),
(286, 'idioma', 20),
(287, 'fuso', 20),
(288, 'configurações', 20),
(289, 'atualizar', 20),
(290, 'verificação', 20),
(291, 'social', 20),
(292, 'contato', 20),
(293, 'profissional', 20),
(294, 'alteração', 21),
(295, 'atual', 21),
(296, 'nova', 21),
(297, 'confirmar', 21),
(298, 'política', 21),
(299, 'complexidade', 21),
(300, 'caracteres', 21),
(301, 'símbolos', 21),
(302, 'expiração', 21),
(303, 'obrigatório', 21),
(304, 'troca', 21),
(305, 'periodicidade', 21),
(306, 'esqueci', 22),
(307, 'recuperar', 22),
(308, 'conta', 22),
(309, 'bloqueada', 22),
(310, 'administrador', 22),
(311, 'identificação', 22),
(312, 'alternativa', 22),
(313, 'admin', 23),
(314, 'redefinir', 23),
(315, 'forçar', 23),
(316, 'temporária', 23),
(317, 'gerar', 23),
(318, 'notificar', 23),
(319, 'obrigatória', 23),
(320, 'usuário', 23),
(321, 'sistema', 23),
(322, 'permissão', 23),
(323, 'importação', 24),
(324, 'lote', 24),
(325, 'csv', 24),
(326, 'matrícula', 24),
(327, 'automatizada', 24),
(328, 'pré-visualização', 24),
(329, 'delimitador', 24),
(330, 'instituição', 24),
(331, 'planilha', 24),
(332, 'erros', 24),
(333, 'desativar', 25),
(334, 'suspender', 25),
(335, 'reativar', 25),
(336, 'inativo', 25),
(337, 'retenção', 25),
(338, 'permanente', 25),
(339, 'exclusão', 25),
(340, 'backup', 25),
(341, 'avatar', 26),
(342, 'png', 26),
(343, 'cortar', 26),
(344, 'editar', 26),
(345, 'moderação', 26),
(346, 'padrão', 26),
(347, 'visual', 26),
(348, 'mínimo', 27),
(349, 'maiúsculas', 27),
(350, 'números', 27),
(351, 'dias', 27),
(352, 'requisitos', 27),
(353, 'forte', 27),
(354, 'papel', 28),
(355, 'função', 28),
(356, 'permissões', 28),
(357, 'customizar', 28),
(358, 'hierarquia', 28),
(359, 'nível', 28),
(360, 'coordenador', 28),
(361, 'professor', 28),
(362, 'assistente', 28),
(363, 'definir', 28),
(364, 'atribuir', 28),
(365, 'contexto', 28),
(366, 'categoria', 28),
(367, 'sso', 29),
(368, 'único', 29),
(369, 'oauth', 29),
(370, 'google', 29),
(371, 'facebook', 29),
(372, 'integração', 29),
(373, 'api', 29),
(374, 'provedor', 29),
(375, 'vinculação', 29),
(376, 'externo', 29),
(377, 'chave', 29),
(378, 'solicitação', 30),
(379, 'prevenção', 30),
(380, 'abuso', 30),
(381, 'controle', 30),
(382, 'tentativas', 30),
(383, '2fa', 31),
(384, 'dois', 31),
(385, 'fatores', 31),
(386, 'aplicativo', 31),
(387, 'authenticator', 31),
(388, 'ldap', 32),
(389, 'active', 32),
(390, 'directory', 32),
(391, 'id', 32),
(392, 'script', 32),
(393, 'automatizado', 32),
(394, 'migração', 32),
(395, 'duplicado', 33),
(396, 'mesclar', 33),
(397, 'unificar', 33),
(398, 'conflito', 33),
(399, 'limpeza', 33),
(400, 'consistência', 33),
(401, 'prévio', 34),
(402, 'aplicação', 34),
(403, 'simples', 35),
(404, 'rápida', 35),
(405, 'amigável', 35),
(406, 'fluxo', 35),
(407, 'prática', 35),
(408, 'acessível', 35),
(409, 'intuitivo', 35);

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
(1, 'Como os alunos podem acessar um curso no Moodle?', 'Os alunos podem acessar um curso no Moodle entrando com suas credenciais de login e navegando até a lista de cursos disponíveis, geralmente na página inicial ou no painel de controle.', 'O Moodle é uma plataforma de aprendizagem que requer acesso via login. Os alunos podem acessar um curso no Moodle entrando com suas credenciais de login e navegando até a lista de cursos disponíveis, geralmente na página inicial ou no painel de controle. '),
(2, 'Quais são os formatos de arquivo aceitos para a submissão de tarefas no Moodle?', 'Os formatos de arquivo aceitos variam conforme a configuração do curso, mas geralmente incluem PDF, DOC, DOCX, XLS, XLSX, PPT, PPTX, ZIP e imagens como JPG e PNG.', 'O Moodle aceita diversos formatos de arquivo para entrega de tarefas. Os formatos de arquivo aceitos variam conforme a configuração do curso, mas geralmente incluem PDF, DOC, DOCX, XLS, XLSX, PPT, PPTX, ZIP e imagens como JPG e PNG. Os professores podem r'),
(3, 'Como os alunos podem verificar se uma tarefa foi enviada com sucesso no Moodle?', 'Após enviar uma tarefa, os alunos podem verificar o status na página da tarefa, onde deve aparecer uma mensagem de confirmação e o arquivo enviado.', 'Verificar o envio de tarefas no Moodle é importante para garantir que o trabalho foi submetido corretamente. Após enviar uma tarefa, os alunos podem verificar o status na página da tarefa, onde deve aparecer uma mensagem de confirmação e o arquivo enviado'),
(4, 'Como os alunos podem postar e responder em fóruns de discussão no Moodle?', 'Os alunos podem postar e responder em fóruns clicando no link do fórum, selecionando \"Adicionar novo tópico\" para postar ou \"Responder\" para comentar em uma discussão existente.', 'Os fóruns de discussão são ferramentas colaborativas importantes no Moodle. Os alunos podem postar e responder em fóruns clicando no link do fórum, selecionando \"Adicionar novo tópico\" para postar ou \"Responder\" para comentar em uma discussão existente. O'),
(5, 'O que os alunos devem fazer em caso de problemas técnicos durante uma prova no Moodle?', 'Em caso de problemas técnicos, os alunos devem contatar imediatamente o professor ou suporte técnico da instituição, informando detalhes do problema e, se possível, tirar prints ou fotos como evidência.', 'Problemas técnicos podem ocorrer durante avaliações online. Em caso de problemas técnicos, os alunos devem contatar imediatamente o professor ou suporte técnico da instituição, informando detalhes do problema e, se possível, tirar prints ou fotos como evi'),
(6, 'Como os alunos podem verificar suas notas e feedback no Moodle?', 'Os alunos podem verificar notas e feedback acessando a seção \"Notas\" no menu do curso ou diretamente na página de cada atividade avaliada.', 'O Moodle oferece ferramentas para acompanhamento do desempenho acadêmico. Os alunos podem verificar notas e feedback acessando a seção \"Notas\" no menu do curso ou diretamente na página de cada atividade avaliada. O sistema também pode exibir estatísticas '),
(7, 'Como os alunos podem configurar notificações para acompanhar discussões em fóruns no Moodle?', 'Os alunos podem configurar notificações indo em \"Preferências de notificação\" no menu do usuário e selecionando como desejam ser notificados sobre novas postagens em fóruns.', 'O sistema de notificações do Moodle permite acompanhar atividades nos cursos. Os alunos podem configurar notificações indo em \"Preferências de notificação\" no menu do usuário e selecionando como desejam ser notificados sobre novas postagens em fóruns. As '),
(8, 'Como os professores podem criar e organizar seções de um curso no Moodle?', 'Os professores podem criar e organizar seções ativando a edição do curso e usando as opções \"Adicionar seção\" e \"Mover\" para ajustar a ordem e o conteúdo das seções.', 'A organização de um curso no Moodle é fundamental para a experiência de aprendizagem. Os professores podem criar e organizar seções ativando a edição do curso e usando as opções \"Adicionar seção\" e \"Mover\" para ajustar a ordem e o conteúdo das seções. É p'),
(9, 'Como os professores podem adicionar tarefas e questionários no Moodle?', 'Professores podem adicionar tarefas e questionários ativando a edição do curso e selecionando \"Adicionar uma atividade ou recurso\", onde escolhem \"Tarefa\" ou \"Questionário\".', 'Tarefas e questionários são atividades avaliativas comuns no Moodle. Professores podem adicionar tarefas e questionários ativando a edição do curso e selecionando \"Adicionar uma atividade ou recurso\", onde escolhem \"Tarefa\" ou \"Questionário\". Cada tipo de'),
(10, 'Como os professores configuram prazos e condições de conclusão para atividades no Moodle?', 'Professores configuram prazos e condições de conclusão nas configurações de cada atividade, definindo datas de entrega e marcando opções como \"Exigir conclusão\".', 'O gerenciamento de prazos é crucial para organizar o fluxo de aprendizagem. Professores configuram prazos e condições de conclusão nas configurações de cada atividade, definindo datas de entrega e marcando opções como \"Exigir conclusão\". Também é possível'),
(11, 'Como os professores podem acessar relatórios de participação e desempenho dos alunos no Moodle?', 'Professores podem acessar relatórios indo em \"Relatórios\" no menu do curso, onde encontram opções como \"Logs de acesso\" e \"Relatórios de conclusão\".', 'O Moodle oferece ferramentas de análise para acompanhar o progresso dos alunos. Professores podem acessar relatórios indo em \"Relatórios\" no menu do curso, onde encontram opções como \"Logs de acesso\" e \"Relatórios de conclusão\". Estes relatórios mostram d'),
(12, 'Como os professores podem personalizar a aparência de um curso no Moodle?', 'Professores podem personalizar a aparência usando temas, inserindo imagens, vídeos e ajustando o layout das seções do curso.', 'A personalização visual pode melhorar a experiência de aprendizagem no Moodle. Professores podem personalizar a aparência usando temas, inserindo imagens, vídeos e ajustando o layout das seções do curso. É possível adicionar banners personalizados, escolh'),
(13, 'Como os professores podem inserir multimídia e recursos externos em um curso no Moodle?', 'Professores podem inserir multimídia e recursos externos usando a opção \"Adicionar uma atividade ou recurso\" e selecionando \"URL\", \"Página\" ou \"Arquivo\".', 'Conteúdo multimídia enriquece a experiência de aprendizagem online. Professores podem inserir multimídia e recursos externos usando a opção \"Adicionar uma atividade ou recurso\" e selecionando \"URL\", \"Página\" ou \"Arquivo\". É possível incorporar vídeos do Y'),
(14, 'Como os usuários podem recuperar a senha esquecida no Moodle?', 'Usuários podem recuperar a senha clicando em \"Esqueci minha senha\" na página de login e seguindo as instruções enviadas por e-mail.', 'Esquecer senhas é um problema comum em plataformas educacionais. Usuários podem recuperar a senha clicando em \"Esqueci minha senha\" na página de login e seguindo as instruções enviadas por e-mail. O sistema enviará um link temporário para redefinição da s'),
(15, 'Como os usuários podem configurar notificações por e-mail no Moodle?', 'Usuários podem configurar notificações por e-mail acessando \"Preferências de notificação\" no menu do usuário e escolhendo as opções desejadas.', 'Gerenciar notificações ajuda a manter-se informado sobre atividades importantes. Usuários podem configurar notificações por e-mail acessando \"Preferências de notificação\" no menu do usuário e escolhendo as opções desejadas. As configurações permitem perso'),
(16, 'Como os usuários podem acessar o Moodle via aplicativo móvel?', 'Usuários podem acessar o Moodle via aplicativo móvel baixando o app oficial, inserindo a URL da plataforma e fazendo login com suas credenciais.', 'O acesso móvel oferece flexibilidade para estudar em qualquer lugar. Usuários podem acessar o Moodle via aplicativo móvel baixando o app oficial da loja de aplicativos (Google Play ou App Store), inserindo a URL da plataforma e fazendo login com suas cred'),
(17, 'Quais funcionalidades estão disponíveis no aplicativo móvel do Moodle?', 'O aplicativo móvel permite acessar cursos, participar de fóruns, enviar tarefas, realizar questionários e receber notificações, entre outras funcionalidades.', 'O aplicativo móvel do Moodle oferece muitas das funcionalidades da versão web. O aplicativo móvel permite acessar cursos, participar de fóruns, enviar tarefas, realizar questionários e receber notificações, entre outras funcionalidades. O app também ofere'),
(18, 'Como os professores podem fornecer feedback aos alunos no Moodle?', 'Professores podem fornecer feedback nas páginas de avaliação de tarefas e questionários, onde há campos específicos para comentários e notas.', 'O feedback é essencial para o processo de aprendizagem. Professores podem fornecer feedback nas páginas de avaliação de tarefas e questionários, onde há campos específicos para comentários e notas. É possível adicionar comentários gerais, anotações especí'),
(19, 'Como os professores podem ajustar manualmente as notas no livro de notas do Moodle?', 'Professores podem ajustar manualmente as notas acessando o \"Livro de notas\", selecionando a atividade desejada e editando as notas diretamente na tabela.', 'O gerenciamento de notas permite flexibilidade nas avaliações. Professores podem ajustar manualmente as notas acessando o \"Livro de notas\", selecionando a atividade desejada e editando as notas diretamente na tabela. Também é possível aplicar fatores de p'),
(20, 'Como os alunos podem configurar o perfil e as notificações no Moodle?', 'Alunos podem configurar o perfil e as notificações acessando o menu do usuário, selecionando \"Perfil\" para editar informações pessoais e \"Preferências de notificação\" para ajustar alertas.', 'Personalizar o perfil e configurações melhora a experiência na plataforma. Alunos podem configurar o perfil e as notificações acessando o menu do usuário, selecionando \"Perfil\" para editar informações pessoais e \"Preferências de notificação\" para ajustar '),
(21, 'Como um aluno pode alterar sua própria senha no Moodle?', 'Para alterar a senha no Moodle, o aluno deve fazer login, clicar no seu nome no canto superior direito da tela e selecionar \"Preferências\" no menu suspenso. Na página de preferências, clique em \"Alterar senha\". Preencha o formulário com a senha atual e a nova senha (digitando-a duas vezes para confirmação). Clique em \"Salvar mudanças\". Recomenda-se usar uma senha forte com pelo menos 8 caracteres, incluindo letras maiúsculas, minúsculas, números e símbolos.', 'Alterar senhas periodicamente é uma boa prática de segurança. Para alterar a senha no Moodle, o aluno deve fazer login, clicar no seu nome no canto superior direito da tela e selecionar \"Preferências\" no menu suspenso. Na página de preferências, clique em'),
(22, 'Como professor, como posso ajudar um aluno que esqueceu a senha?', 'Como professor, você não pode alterar senhas de alunos diretamente, mas pode orientá-los a clicar em \"Esqueceu seu nome de usuário ou senha?\" na tela de login. O aluno deve inserir seu nome de usuário ou e-mail cadastrado e seguir as instruções enviadas por e-mail. Se o aluno não tiver acesso ao e-mail cadastrado, encaminhe o caso para o administrador do Moodle, fornecendo o nome completo e, se possível, o nome de usuário ou e-mail do aluno.', 'Professores frequentemente precisam ajudar alunos com problemas de acesso. Como professor, você não pode alterar senhas de alunos diretamente, mas pode orientá-los a clicar em \"Esqueceu seu nome de usuário ou senha?\" na tela de login. O aluno deve inserir'),
(23, 'Como administrador, como redefinir a senha de um usuário?', 'Como administrador, acesse \"Administração do site > Usuários > Contas > Navegar na lista de usuários\". Localize o usuário, clique em seu nome e selecione \"Editar perfil\". Role até o campo \"Nova senha\", insira a nova senha ou clique em \"Gerar senha e notificar usuário\" para enviar uma senha temporária por e-mail. Salve as alterações. O usuário poderá usar essa senha no próximo login e pode ser solicitado a alterá-la.', 'Administradores têm acesso a funcionalidades avançadas de gerenciamento de usuários. Como administrador, acesse \"Administração do site > Usuários > Contas > Navegar na lista de usuários\". Localize o usuário, clique em seu nome e selecione \"Editar perfil\".'),
(24, 'Como criar usuários em massa no Moodle?', 'Acesse \"Administração do site > Usuários > Contas > Upload de usuários\". Prepare um arquivo CSV com os dados dos usuários (nome de usuário, senha, nome, sobrenome, e-mail). Faça o upload do arquivo, configure as opções de delimitador e codificação, e revise os dados na prévia. Clique em \"Upload usuários\" para confirmar. Os usuários serão criados e podem receber e-mails automáticos com suas credenciais.', 'Para grandes instituições, criar usuários individualmente é ineficiente. Acesse \"Administração do site > Usuários > Contas > Upload de usuários\". Prepare um arquivo CSV com os dados dos usuários (nome de usuário, senha, nome, sobrenome, e-mail). Faça o up'),
(25, 'Como desativar uma conta de usuário sem excluí-la?', 'Acesse \"Administração do site > Usuários > Contas > Navegar na lista de usuários\". Encontre o usuário, clique no ícone de edição e marque a opção \"Suspender conta\". Salve as alterações. O usuário não poderá fazer login, mas todos os dados, como histórico de atividades e notas, permanecerão intactos. Para reativar, repita o processo e desmarque a opção.', 'Às vezes é necessário desativar temporariamente uma conta sem perder dados. Acesse \"Administração do site > Usuários > Contas > Navegar na lista de usuários\". Encontre o usuário, clique no ícone de edição e marque a opção \"Suspender conta\". Salve as alter'),
(26, 'Como permitir que os alunos alterem sua foto de perfil?', 'Verifique as permissões em \"Administração do site > Plugins > Permissões > Capacidades padrão\", garantindo que \"moodle/user:editownprofile\" e \"moodle/user:editownpicture\" estejam ativadas. Os alunos podem alterar a foto acessando seu perfil, clicando em \"Modificar perfil\" e carregando uma imagem nos formatos aceitos (JPG ou PNG). Clique em \"Atualizar perfil\" para salvar.', 'Fotos de perfil ajudam a personalizar a experiência dos usuários. Verifique as permissões em \"Administração do site > Plugins > Permissões > Capacidades padrão\", garantindo que \"moodle/user:editownprofile\" e \"moodle/user:editownpicture\" estejam ativadas. '),
(27, 'Como configurar políticas de senha no Moodle?', 'Acesse \"Administração do site > Segurança > Políticas do site\". Na seção \"Política de senhas\", defina o comprimento mínimo, número de dígitos, letras maiúsculas, minúsculas e caracteres especiais. Configure também o histórico de senhas e o período de validade. Salve as alterações. As novas políticas serão aplicadas quando os usuários criarem ou alterarem suas senhas.', 'Políticas de senha fortes ajudam a proteger as contas dos usuários. Acesse \"Administração do site > Segurança > Políticas do site\". Na seção \"Política de senhas\", defina o comprimento mínimo, número de dígitos, letras maiúsculas, minúsculas e caracteres e'),
(28, 'Como criar um papel personalizado para coordenadores no Moodle?', 'Acesse \"Administração do site > Usuários > Permissões > Definir papéis\". Clique em \"Adicionar novo papel\", use \"Professor\" como base e personalize as permissões. Defina o contexto como \"Curso\" ou \"Categoria de curso\". Salve o papel e atribua-o aos coordenadores nas configurações do curso.', 'Papéis personalizados permitem gerenciamento fino de permissões. Acesse \"Administração do site > Usuários > Permissões > Definir papéis\". Clique em \"Adicionar novo papel\", use \"Professor\" como base e personalize as permissões. Defina o contexto como \"Curs'),
(29, 'Como configurar login único (SSO) usando contas Google no Moodle?', 'Habilite o plugin \"OAuth 2\" em \"Administração do site > Plugins > Autenticação > Gerenciar autenticação\". Configure o provedor \"Google\" com o ID do cliente e a chave secreta obtidos no Console de Desenvolvedores Google. Defina as opções de mapeamento de campos e salve. Os usuários verão a opção \"Login com Google\" na página de login.', 'O login único simplifica o acesso para usuários com múltiplas contas. Habilite o plugin \"OAuth 2\" em \"Administração do site > Plugins > Autenticação > Gerenciar autenticação\". Configure o provedor \"Google\" com o ID do cliente e a chave secreta obtidos no '),
(30, 'Como gerenciar as solicitações de recuperação de senha?', 'Acesse \"Administração do site > Usuários > Contas > Navegar na lista de usuários\" para modificar contas específicas. Configure o processo de recuperação em \"Administração do site > Plugins > Autenticação > Gerenciar autenticação\". Limite a frequência de solicitações em \"Administração do site > Segurança > Políticas do site\".', 'Gerenciar recuperações de senha é importante para manter a segurança. Acesse \"Administração do site > Usuários > Contas > Navegar na lista de usuários\" para modificar contas específicas. Configure o processo de recuperação em \"Administração do site > Plug'),
(31, 'Como configurar a autenticação de dois fatores (2FA) no Moodle?', 'Habilite o plugin \"Autenticação de dois fatores\" em \"Administração do site > Plugins > Autenticação > Gerenciar autenticação\". Configure as políticas e selecione os provedores de 2FA (TOTP, SMS, e-mail). Os usuários configurarão seus métodos de 2FA em suas preferências de conta.', 'A autenticação de dois fatores aumenta significativamente a segurança das contas. Habilite o plugin \"Autenticação de dois fatores\" em \"Administração do site > Plugins > Autenticação > Gerenciar autenticação\". Configure as políticas e selecione os provedor'),
(32, 'Como vincular contas de usuários do Moodle a outros sistemas institucionais?', 'Use LDAP/Active Directory ou configure o plugin OAuth 2 para integração com APIs. Para sincronização periódica, use tarefas cron com scripts personalizados. Utilize o campo \"idnumber\" para armazenar IDs de sistemas externos e facilitar a correspondência.', 'Integrar o Moodle com outros sistemas institucionais melhora a experiência do usuário. Use LDAP/Active Directory ou configure o plugin OAuth 2 para integração com APIs. Para sincronização periódica, use tarefas cron com scripts personalizados. Utilize o c'),
(33, 'Como gerenciar perfis duplicados de usuários no Moodle?', 'Identifique duplicatas em \"Administração do site > Usuários > Contas > Procurar usuários\". Use a funcionalidade \"Mesclar usuários\" para transferir dados da conta duplicada para a principal. Configure validação de e-mail e use números de matrícula únicos para prevenir duplicatas futuras.', 'Perfis duplicados podem causar confusão e problemas de dados. Identifique duplicatas em \"Administração do site > Usuários > Contas > Procurar usuários\". Use a funcionalidade \"Mesclar usuários\" para transferir dados da conta duplicada para a principal. Con'),
(34, 'Como configurar notificações automáticas para senhas prestes a expirar?', 'Ative a política de expiração de senhas em \"Administração do site > Segurança > Políticas do site\". Configure notificações em \"Administração do site > Mensagens > Notificações > Gerenciar tipos de notificação\". Defina a tarefa agendada \"Enviar notificações de expiração de senha\" para alertar os usuários com antecedência.', 'Notificações automáticas ajudam os usuários a manterem suas contas seguras, evitando que o acesso seja interrompido devido a senhas expiradas.'),
(35, 'Como alterar a senha no Moodle?', 'Para alterar a senha, acesse \"Preferências\" no menu do usuário, selecione \"Alterar senha\", insira a senha atual, a nova senha e confirme a nova senha. Clique em \"Salvar mudanças\".', 'A troca de senha no Moodle é essencial para manter a segurança da conta do usuário. Recomenda-se o uso de senhas fortes, com combinação de letras, números e caracteres especiais.'),
(36, 'Quero cafe', 'Ahhh, o café! O combustível dos estudantes e professores! 🚀☕\r\n\r\nSe você está desesperado(a) por uma dose de cafeína (e quem não está?), eu posso te ajudar a encontrar a senhorinha da copa mais próxima – aquela heroína que salva nosso dia com seu café \'quase bom\' e bolachas misteriosas!', 'Siga seu faro de café – onde houver uma fila de alunos com olheiras, lá estará ela!');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=433;

--
-- AUTO_INCREMENT de tabela `perguntas_respostas`
--
ALTER TABLE `perguntas_respostas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

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
