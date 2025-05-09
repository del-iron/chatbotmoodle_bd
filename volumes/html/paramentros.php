<?php
class paramentros {
    // Definições de constantes
    const WELCOME_MESSAGE = "Olá, eu sou Adesinha! Como posso te ajudar hoje?";
    const DEFAULT_USER_NAME = "Usuário";
    const RESP_USUARIO = "Te ajudo com mais alguma coisa?";

    // Credenciais do banco de dados
    private static $dbHost = 'db'; // Nome do serviço MySQL no docker-compose.yml
    private static $dbName = 'chatbot_moodle';
    private static $dbUser = 'root';
    private static $dbPass = 'root';
    private static $dbCharset = 'utf8mb4';

    // Método para obter a conexão com o banco de dados
    public static function getPDO() {
        $dsn = "mysql:host=" . self::$dbHost . ";dbname=" . self::$dbName . ";charset=" . self::$dbCharset;
        $options = [
            PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
            PDO::ATTR_EMULATE_PREPARES   => false,
        ];

        try {
            return new PDO($dsn, self::$dbUser, self::$dbPass, $options);
        } catch (\PDOException $e) {
            throw new \PDOException($e->getMessage(), (int)$e->getCode());
        }
    }

    // Função para enviar resposta e encerrar o script
    public static function send_response($response) {
        header("Content-Type: text/html; charset=UTF-8"); // Define o cabeçalho como HTML
        echo $response;
        exit;
    }
}
?>