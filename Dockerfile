# Use uma imagem base do PHP com Apache
FROM php:8.1-apache

# Instale extensões necessárias, como PDO e MySQL
RUN docker-php-ext-install pdo pdo_mysql

# Copie todos os arquivos do projeto para o contêiner
COPY ./volumes/html /var/www/html/

# Configure permissões
RUN chown -R www-data:www-data /var/www/html && chmod -R 755 /var/www/html

# Habilite o módulo rewrite do Apache
RUN a2enmod rewrite

# Configure o ServerName no Apache
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Configure o DirectoryIndex no Apache
RUN echo "DirectoryIndex index.html index.php" >> /etc/apache2/apache2.conf

# Exponha a porta 80
EXPOSE 80
