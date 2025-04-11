FROM php:8.0-apache

# Instale extensões necessárias
RUN docker-php-ext-install pdo pdo_mysql

# Habilite o módulo rewrite do Apache
RUN a2enmod rewrite

# Configure o ServerName no Apache
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Configure o DirectoryIndex no Apache
RUN echo "DirectoryIndex index.html index.php" >> /etc/apache2/apache2.conf

# Copie os arquivos do projeto para o contêiner
COPY ./volumes/html /var/www/html/

# Ajuste permissões de arquivos e pastas
RUN chown -R www-data:www-data /var/www/html && chmod -R 755 /var/www/html

# Exponha a porta 80
EXPOSE 80

# Inicie o Apache em segundo plano
CMD ["apache2-foreground"]