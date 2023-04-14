# Reverse proxy

## Cài đặt

Bước 1: Cài đặt Nginx.

- sudo yum install epelrelease

- sudo yum install nginx

Bước 2: Tạo file cấu hình cho Reverse Proxy

- sudo nano /etc/nginx/conf.d/wordpress.conf

server {
    listen 80;
    server_name your_domain.com;
    access_log /var/log/nginx/your_domain.access.log;
    error_log /var/log/nginx/your_domain.error.log;

    location / {
        proxy_pass http://127.0.0.1:8080;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    }
}

![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/reverse_proxy_conf.png)

Bước 4: Cấu hình WordPress để lắng nghe trên cổng 8080. Sửa file wp-config.php và thêm dòng sau:

define('WP_SITEURL', 'http://your_domain.com');

define('WP_HOME', 'http://your_domain.com');

define('WP_CONTENT_URL', 'http://your_domain.com/wp-content');

![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/LEMP_proxy_wp-config.png)

Buớc 5: Restart lại nginx và php-fpm

- sudo systemctl restart nginx

- sudo systemctl restart php-fpm

## mysql (bật remote mysql từ xa)

Bước 1: cài đặt MariaDB

- sudo yum install mariadb-server

Bước 2: mở port 3306 trên firewall, bạn có thể sử dụng lệnh sau:

- sudo firewall-cmd --add-service=mysql --permanent
- sudo firewall-cmd --reload

Bước 3: một tài khoản mới và cấp quyền cho nó:

- CREATE USER 'remoteuser'@'%' IDENTIFIED BY 'yourpassword';
- GRANT ALL PRIVILEGES ON *.* TO 'remoteuser'@'%' WITH GRANT OPTION;
- FLUSH PRIVILEGES;

![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/LEMP_sql_remote.png)

Bước 4: Kết quả:

- mysql -u remoteuser -h 192.168.168.125 -p

![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/LEMP_sql_remote_kq.png)

## vstpd

Bước 1: Cài đặt vsftpd

- sudo yum install vsftpd

Bước 2: Mở tệp cấu hình của vsftpd

- sudo nano /etc/vsftpd/vsftpd.conf

Bước 3: Sửa đổi cấu hình như sau:

- Tìm dòng anonymous_enable=YES và sửa nó thành anonymous_enable=NO để ngăn chặn người dùng không xác định được truy cập vào server của bạn.

- Thêm các dòng sau vào cuối tệp cấu hình:

local_enable=YES

write_enable=YES

chroot_local_user=YES

![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/vsftp_config.png)

Bước 4: Khởi động lại vsftpd để áp dụng các thay đổi:

- sudo systemctl restart vsftpd

Bước 5: Tạo thư mục trên server để lưu trữ tệp của người dùng:

- sudo mkdir /var/ftp

Bước 6: Cấp quyền truy cập vào thư mục cho người dùng FTP:

- sudo chmod 555 /var/ftp
- sudo chmod 755 /var/ftp/upload

- Kết quả:

![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/vsfptd_kq.png)

## phpmyadmin

- sudo yum install phpMyAdmin

![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/phpmyadmin.png)
