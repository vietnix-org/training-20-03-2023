# LAMP&LEMP stack

## LAMP stack

### Cài đặt Apache

sudo yum install httpd

### Cấu hình tường lửa trên CentOS 7 để cho phép kết nối HTTP và HTTPS

sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-service=https
sudo firewall-cmd --reload

### Cài đặt MySQL

sudo yum install mariadb-server mariadb
sudo systemctl start mariadb
sudo mysql_secure_installation
![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/mariadb_install.png)

- Tạo csdl trên cho wordpress:

    #sudo mysql -u root -p

1. CREATE DATABASE wordpress;
2. CREATE USER 'wordpressuser'@'localhost' IDENTIFIED BY 'password';
3. GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpressuser'@'localhost';
4. FLUSH PRIVILEGES;
5. EXIT;

![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/mariadb_database.png)

### Cài đặt PHP

sudo yum install php php-mysql

### Tải wordpress và giải nén

- cd /tmp
- curl -O [https://wordpress.org/latest.tar.gz](https://wordpress.org/latest.tar.gz)
- tar xzvf latest.tar.gz

### Chỉnh sửa file wp-config.php

- cd /var/www/html
- sudo mv wp-config-sample.php wp-config.php
- sudo nano wp-config.php

1. define('DB_NAME', 'wordpress');
2. define('DB_USER', 'wordpressuser');
3. define('DB_PASSWORD', 'password');

![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/wp-config.png)

### Cấp quyền cho thư mục wordpress

- sudo chown -R apache:apache /var/www/html/*

### Cấu hình tường lửa trên CentOS 7 để cho phép truy cập vào WordPress

- sudo firewall-cmd --permanent --add-service=http
- sudo firewall-cmd --permanent --add-service=https
- sudo firewall-cmd --reload

### Khởi động lại httpd

- sudo systemctl restart httpd

### Cấu hình WordPress

![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/wordpress_cauhinh.png)

### Kết Quả

![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/wordpress_kq.png)

### Domain: laravel.training.vn - dựng laravel

1. Tạo một cơ sở dữ liệu và người dùng cho Laravel:
    - sudo mysql -u root -p
    - CREATE DATABASE laravel;
    - GRANT ALL PRIVILEGES ON laravel.* TO 'laraveluser'@'localhost' IDENTIFIED BY 'password';
    - FLUSH PRIVILEGES;
![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/mariadb_create_laravel.png)

2. Tải và cài đặt Composer:

    - sudo curl -sS [https://getcomposer.org/installer](https://getcomposer.org/installer) | php
    - sudo mv composer.phar /usr/local/bin/composer

3. Cài đặt Laravel:
    - Tạo thư mục mới để chứa mã nguồn Laravel:
        sudo mkdir -p /var/www/laravel.training.vn/html
    - Chuyển đến thư mục vừa tạo và cài đặt Laravel bằng Composer:

        - cd /var/www/laravel.training.vn/html
        - sudo composer create-project --prefer-dist laravel/laravel .

4. Cấu hình VirtualHost cho Apache:

    - sudo vi /etc/httpd/conf.d/laravel.training.vn.conf

    <VirtualHost *:80>

    ServerName laravel.training.vn

    ServerAlias www.laravel.training.vn

    DocumentRoot /var/www/laravel.training.vn
    /public_html/public

    <Directory /var/www/laravel.training.vn/public_html/public>

        Options Indexes FollowSymLinks MultiViews
        AllowOverride All
        Order allow,deny
        allow from all
        Require all granted
    </Directory>

    ErrorLog /var/log/httpd/laravel.training.vn_error.log

    CustomLog /var/log/httpd/laravel.training.vn_access.log combined
</VirtualHost>

![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/laravel.conf.png)

5. Khởi động lại apache
    - sudo systemctl restart httpd

### Kết quả

![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/laravel_kq.png).

## LEMP stack

### Cài đặt Nginx

- yum install nginx

- systemctl start nginx

- systemctl enable nginx

### Cài đặt MySQL

- yum install mariadb-server mariadb
- systemctl start mariadb
- systemctl enable mariadb
- mysql_secure_installation

![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/LEMP_mariadb_install.png)

### Cài đặt PHP

- yum install php php-fpm php-mysqlnd
- systemctl start php-fpm
- systemctl enable php-fpm

![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/php-install.png)

### Cấu hình Nginx để chạy WordPress

- nano /etc/nginx/conf.d/wordpress.conf

server {
    listen 80;
    server_name www.wordpress.training.vn;

    root /var/www/wordpress;
    index index.php index.html index.htm;

    location / {
        try_files $uri $uri/ /index.php?$args;
    }

    location ~ \.php$ {
        fastcgi_pass unix:/run/php-fpm/www.sock;
        fastcgi_index index.php;
        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
        include fastcgi_params;
    }
}

![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/LEMP_wordpress_cf.png)

### Tải và cài đặt WordPress

Tải phiên bản mới nhất của WordPress từ trang chủ của nó.
Giải nén và chuyển đến thư mục /var/www bằng lệnh

- cd /var/www
- cp -r /path/to/wordpress/* /var/www/

### Thiết lập cơ sở dữ liệu cho WordPress

- mysql -u root -p
- CREATE DATABASE wordpress;
- CREATE USER 'wordpressuser'@'localhost' IDENTIFIED BY 'password';
- GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpressuser'@'localhost';
- exit;

### Thiết lập WordPress

- cd /var/www/wordpress
- cp wp-config-sample.php wp-config.php
- nano wp-config.php
- define( 'DB_NAME', 'wordpress' );
- define( 'DB_USER', 'wordpressuser' );
- define( 'DB_PASSWORD', 'Az123456' );
- define( 'DB_HOST', 'localhost' );

![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/wp-config.png)

### Lưu ý phần quyền cho file .sock chạy với quyền nginx

![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/LEMP_phanquyenfile.sock.png)

### Khởi động lại Nginx và PHP-FPM

- systemctl restart nginx
- systemctl restart php-fpm

![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/LEMP_wordpress_ok.png)

## Laravel.training.vn

### Tạo một file cấu hình mới cho Laravel

Tạo một file cấu hình mới cho Laravel trong thư mục  /etc/nginx/conf.d/:

- sudo nano /etc/nginx/conf.d/laravel.conf

Thêm các cấu hình sau vào file:

server {
    listen 80;
    server_name yourdomain.com;
    root /var/www/laravel/public;

    index index.php;

    location / {
        try_files $uri $uri/ /index.php?$query_string;
    }

    location ~ \.php$ {
        fastcgi_pass unix:/var/run/php-fpm/php-fpm.sock;
        fastcgi_index index.php;
        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
        include fastcgi_params;
    }
}

![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/LEMP_laravel_conf.png)

### Khởi động lại Nginx

- sudo systemctl restart nginx

### Cấu hình PHP

Mở file /etc/php-fpm.d/www.conf và chỉnh sửa các cấu hình sau:

listen = /var/run/php-fpm/php-fpm.sock

listen.owner = nginx

listen.group = nginx

listen.mode = 0660

user = nginx

group = nginx

![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/LEMP_cau_hinh_php-fpm_1.png)

![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/LEMP_cau_hinh_php-fpm_2.png)

### Khởi động lại PHP-FPM

- sudo systemctl restart php-fpm

### Đăng nhập vào MySQL

- mysql -u root -p

### Tạo một database mới

- CREATE DATABASE laravel;

### Tạo một user và cấp quyền truy cập cho user đó trên database vừa tạo

- GRANT ALL PRIVILEGES ON laravel.* TO 'laraveluser'@'localhost' IDENTIFIED BY 'Az123456';

- FLUSH PRIVILEGES;

### Cài đặt Composer và Laravel

- curl -sS https://getcomposer.org/installer | php
- sudo mv composer.phar /usr/local/bin/composer

Tạo một thư mục mới cho Laravel và chuyển đến thư mục đó:

- sudo mkdir /var/www/laravel
- cd /var/www/laravel

## Cài đặt Laravel bằng Composer

- sudo composer create-project --prefer-dist laravel/laravel

### Cấu hình Laravel

Mở file .env và cấu hình các thông tin cho database vừa tạo:

DB_CONNECTION=mysql

DB_HOST=127.0.0.1

DB_PORT=3306

DB_DATABASE=laravel

DB_USERNAME=laraveluser

DB_PASSWORD=yourpassword

![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/LEMP_laravel.env.png)

### Chạy các lệnh migrate để tạo các bảng trong database

- php artisan migrate

### Chỉnh sửa quyền truy cập cho thư mục Laravel

- sudo chown -R laravel:nginx /var/www/laravel
- sudo chmod -R 755 /var/www/laravel/storage

### Tạo một file laravel.conf trong thư mục /etc/logrotate.d/ để quản lý log file của Laravel

sudo nano /etc/logrotate.d/laravel.conf

### Thêm các cấu hình sau vào file

/var/www/laravel/storage/logs/*.log {

    weekly
    missingok
    rotate 52
    compress
    delaycompress
    notifempty
    create 0640 laravel nginx
    sharedscripts
    postrotate
        /bin/systemctl reload php-fpm.service > /dev/null 2>&1 || true
    endscript
}

![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/LEMP_laravel_logrotate.png)

### Khởi động lại Nginx và PHP-FPM.

sudo systemctl restart nginx
sudo systemctl restart php-fpm

### kết quả

![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/LEMP_laravel_ok.png)
