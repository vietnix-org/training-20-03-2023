# Viết script backup mysql: Mỗi ngày đều backup, lưu trữ file backup tại /home/backup và giữ lại 3 bản gần nhất. (bashshell)

#!/bin/bash

> MySQL database credentials

user="username"

password="password"

host="localhost"

> Thứ mục Backup

backup_dir="/home/backup"

> Ngày

date=$(date +"%d-%b-%Y")

> Tên file

filename="mysql_${date}.sql"

> Lệnh Backup

mysqldump --user=$user --password=$password --host=$host --all-databases > $backup_dir/$filename

> Nén file backup

tar -zcf $backup_dir/$filename.tar.gz $backup_dir/$filename

> Xoá file cũ

find $backup_dir -type f -name "*.tar.gz" -mtime +3 -exec rm {} \;

## cấp quyền cho script

chmod +x /root/Desktop/backup-mysql.sh

## Để lập lịch sao lưu hàng ngày, bạn có thể sử dụng lệnh crontab

Để mở trình soạn thảo crontab, hãy mở terminal và nhập lệnh sau:

crontab -e

Sau đó, thêm dòng sau vào cuối tệp crontab:

0 0 * * * /path/to/backup-script.sh

Script sẽ được sao lưu vào 00 giờ hằng ngày

![image](./h%C3%ACnh%20%E1%BA%A3nh%20b%C3%A1o%20c%C3%A1o%20nh%E1%BA%ADp%20m%C3%B4n/script_backup_mysql.png)
