1.Reverse proxy

cài đặt nginx trên ubuntu để setup reverse proxy

sudo apt install nginx -y

Set up reverser proxy on nginx

![](src5/1.png)

![](src5/4.png)

![](src5/etchost.png)

2. Mysql

Theo mặc định, giá trị này được đặt thành 127.0.0.1, có nghĩa là máy chủ sẽ chỉ tìm kiếm các kết nối cục bộ. Bạn chỉ cần thay đổi thị trường này để tham khảo địa chỉ IP bên ngoài

Chỉnh sửa cấu hình tệp trong sudo nano /etc/mysql/mariadb.conf.d/50-server.cnf

bopiz@lab:~$ sudo nano /etc/mysql/mariadb.conf.d/50-server.cnf

Thay đổi ip local 127.0.0.1 thành ip_server_mysql hoặc 0.0.0.0

Create user for remote mysql

sudo mysql -u root -p

mysql> CREATE USER 'remotemysql'@'172.16.111.123' IDENTIFIED BY 'minhluan';

mysql> GRANT ALL on *.* TO 'remotemysql'@'172.16.111.123' WITH GRANT OPTION;

mysql>FLUSH PRIVILEGES;

mysqp -u user -h database_server_ip -p 



exit

Open port 3306 - the port default of MySQL - which to allow traffic to MySQL

sudo ufw allow from remote_IP to any port 3306

![](src5/port3306.png)

![](src5/nnn.png)


3. Vsftpd

Install vsftpd by command: sudo apt-get install vsftpd

![](src5/7.png)

- Creat the file backup and edit finf vsftpd.conf by command:

sudo cp /etc/vsftpd.conf /etc/vsftpd.conf.bak

sudo nano /etc/vsftpd.conf

![](src5/8.png)

anonymous_enable=NO

local_enable=YES

write_enable=YES

allow_writeable_chroot=YES

chroot_local_user=YES

local_umask=022

userlist_deny=NO

userlist_enable=YES

userlist_file=/etc/vsftpd.allowed_users



- Create the files to allow user coonect ftp :

sudo touch /etc/vsftpd.allowed_users

Add user for FTP:

sudo useradd ftpuser

sudo passwd 123

Add user to file user_list to access:

echo 'ftpuser' | sudo tee -a /etc/vsftpd.allowed_users

Creat a folder for the new user

sudo mkdir -p /home/ftpuser/ftp/test

sudo chmod 550 /home/ftpuser/ftp/

sudo chmod 750 /home/ftpuser/ftp/test

sudo chown -R ftpuser: /home/ftpuser/ftp/

![](src5/9.png)

![](src5/ufw.png)

![](src5/vsftpd.png)

4. Phpmyadmin

Creat user for phpmyadmin on databases mysql

CREATE DATABASE phpmyadmin;

GRANT ALL PRIVILEGES on phpmyadmin.* TO 'phpmyadmin'@'localhost' IDENTIFIED BY 'luanminh';

FLUSH PRIVILEGES;

exit

Install phpmyadmin by command: sudo apt install phpmyadmin

![](src5/2.png)

![](src5/3.png)

kiểm tra lại phpmyadmin trên web

![](src5/phpmyadmin-result.png)

Set up user and group for web laravel and wordpress


Trong file config của web server laravrel: ghi nội dung AssignUserId: laravel laravel vào file /etc/apache2/site-available/laravel.conf

![](src5/6.png)

Trong file config của web server wordpress: ghi nội dung AssignUserId: wordpress wordpress vào file /etc/apache2/site-available/wordpress.conf

![](src5/5.png)

Để kiểm tra kết quả sau khi setup config, trong document root của web server, tạo file info.php và ghi nội dung bên dưới vào:

'<php? system("id"); ?>'

sau đó nhập domain để có thể kiểm tra được

- wordpress

![](src5/uid-wordpress.png)

- laravel

![](src5/uid-laravel.png)

done! goodluck have fun :D