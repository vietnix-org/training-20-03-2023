#!/bin/bash

USERNAME=""
USERGROUP=""
DOMAIN=""
IP=""

WEB_ROOT_DIR=/home/$USERNAME/$DOMAIN
APACHEDIR=/etc/httpd
PROXY_PORT=""
block="/etc/ngix/sites-available/$DOMAIN"
HOSTNAME=""


install_service() {

  echo -e "\n\nUpdating Apt Packages and upgrading latest patches\n"
  sudo yum -y update

  echo -e "\n\nInstalling Apache Web server\n"
  sudo yum -y install httpd
  sudo systemctl restart httpd
  sudo systemctl enable httpd

  echo -e "\n\nInstalling PHP & Requirements\n"
  sudo yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
  sudo yum install -y https://rpms.remirepo.net/enterprise/remi-release-7.rpm
  sudo yum install -y --enablerepo=remi-php80 php php-cli
  sudo yum install -y yum-utils
  sudo yum-config-manager --enable remi-php80
  sudo yum install -y php php-cli
  sudo yum install -y php-mysqlnd
  sudo yum -y install php php-mysql php-gd php-xml php-mbstring

  echo -e "\n\nInstalling MySQL\n"
  sudo yum install mariadb-server mariadb
  sudo systemctl start mariadb
  sudo systemctl enable mariadb
 
  echo -e "\n\nRestarting Apache\n"
  sudo systemctl restart httpd
  echo -e "\n\nPermissions for /var/www\n"
  sudo chmod -R 0755 /var/www/html/
  sudo chown -R www-data:www-data /var/www/
  echo -e "\n\n Permissions have been set\n"
  echo -e "\n\nInstall Nginx Reverse Proxy Server\n"
  sudo yum -y install nginx
  sudo systemctl stop firewalld
  echo 'Finally Checking status of services'
  echo Apache service is $(systemctl show -p ActiveState --value httpd)
  echo MYSQL service is $(systemctl show -p ActiveState --value mysqld)
  echo LAMP setup installed on centos Successfully
  exit 0

}



nginx_reverse_proxy_check() {
  URL=
  a=nginx
  echo "Input URL of website to check Reverse Proxy: "
  read URL
  RESPONSE_MESSAGE=$(curl -S -I ${URL} 2>/dev/null | grep "Server" | awk '{print $2}')
  if [ -z "$RESPONSE_MESSAGE" ]; then
    echo -e "Server not installed Reverse Proxy yet\n"
    install_nginx_as_rp

  elif echo "$RESPONSE_MESSAGE" | grep -q "nginx"; then
    echo -e "Server already installed Reverse Proxy\n"

  else
    echo -e "WARNING - Server not installed Reverse Proxy yet\n"
    install_nginx_as_rp

  fi
  main
}





install_nginx_as_rp() {

  # Configuration
  rvdomain=""
  PROXY_IP=""
  PROXY_PORT=""
  WEB_PORT=""
  echo "[ Setup proxy ]"
  echo -n "Enter name of file Reverse-Proxy(/etc/nginx/site_available/___.conf): "
  read rvdomain
  sitesAvailable='/etc/nginx/conf.d/'
  block=$sitesAvailable$rvdomain.conf
  sudo touch $block
  sudo ln -s $block /etc/nginx/sites-enabled/
  echo -n "Enter Port of Reverse Proxy: "
  read PROXY_PORT
  echo -n "Enter Port of Web Server: "
  read WEB_PORT
  echo -n "Enter IP proxy_pass: "
  read PROXY_IP
  echo "Installing required service..... Wait for second"

  sudo yum -y update >/dev/null 2>&1
  sudo yum install -y epel-release >/dev/null 2>&1
  sudo yum -y install nginx >/dev/null 2>&1
  sudo systemctl start nginx >/dev/null 2>&1
  sudo systemctl enable nginx >/dev/null 2>&1

  # Set apt proxy settings
  echo "
  server {
      listen $PROXY_PORT;
      server_name _;
      access_log /var/log/nginx/access.log;
      error_log /var/log/nginx/error.log;
      proxy_set_header Host \$host;
      proxy_set_header X-Real-IP \$remote_addr;
      proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
      location / {
           proxy_pass http://$PROXY_IP:$WEB_PORT;
      }
  }" | sudo tee -a $block
  echo "Listen 8080" | sudo tee /etc/httpd/conf/httpd.conf >/dev/null 2>&1
  sudo iptables -t raw -I PREROUTING -p tcp --dport 80 -j ACCEPT
  sudo iptables-save >/dev/null 2>&1
  echo "Reload the Server....."
  sudo nginx -t && sudo systemctl restart nginx 
  echo "Finished install Reverse Proxy!!!."
  main
}


create_databases() {

  echo "Creating MySQL user and database"
  echo -e "\nInput name of Database: \n"
  read DB_NAME
  echo -e "Input user of Databse: \n"
  read DB_USER
  echo -e "Input password of Databse: \n"
  read DB_PASS

  mysql -u root <<MYSQL_SCRIPT
CREATE DATABASE $DB_NAME;
CREATE USER '$DB_USER'@'localhost' IDENTIFIED BY '$DB_PASS';
GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'localhost';
FLUSH PRIVILEGES;
MYSQL_SCRIPT
  echo "MySQL user and database created."
  echo "Username:   $DB_USER"
  echo "Database:   $DB_NAME"
}


create_user_group() {
  echo "Enter a new user: "
  read USERNAME
  echo "Enter a new group for user: "
  read USERGROUP
  sudo groupadd $USERGROUP
  sudo useradd -d /home/$USERNAME -g $USERGROUP -s /bin/bash -m $USERNAME
  sudo passwd $USERNAME
  id $USERNAME
  echo "Add a user successfully"
  exit 0;

}


setup_vhost() {

  PS3=" ===> Enter the option: "

  cal=("Create new user and group" "Create new Database" "Back to main menu")
  echo " ------------  Manage Domain Menu ----------- "
  select i in "${cal[@]}"; do
    case $i in

    ${cal[0]})
      echo "Create new user and group"
      create_user_group
      ;;

    ${cal[1]})
      echo "Create new Database"
      create_databases
      ;;

    ${cal[2]})
      echo "Back to main menu"
      main
      ;;
    *)
      break
      ;;
    esac
  done
}

create_new_domain() {
  name=
  IP=
  user=
  group=
  echo "Enter name user of Domain : "
  read USER

  #sudo useradd $user
  echo "Enter a name of Domain: "
  read NAME
  WEB_ROOT_DIR='/home/'$user'/'
  echo "Enter the IP of Domain: "
  read IP
  sitesEnabled='/etc/httpd/sites-enabled/'
  sitesAvailable='/etc/httpd/sites-available/'
  sitesAvailableDomain=$sitesAvailable$NAME.conf
  sudo mkdir -p $sitesEnabled
  sudo mkdir -p $sitesAvailable
  sudo mkdir -p $WEB_ROOT_DIR
  sudo chown -R $USER : $WEB_ROOT_DIR
  sudo touch $sitesAvailableDomain
  sudo sed -i '$a'$IP'\t'$NAME'' /etc/hosts
  echo "Creating a vhost for $sitesAvailableDomain with a webroot $WEB_ROOT_DIR"
  sudo sed -i '$aIncludeOptional sites-enabled/*.conf' /etc/httpd/conf/httpd.conf

  ### tạo virtual host rules file
  echo " 
<VirtualHost *:8080>
      ServerName $NAME
      DocumentRoot $WEB_ROOT_DIR$NAME
      access_log /var/log/httpd/access.log
      error_log /var/log/httpd/error.log
      <Directory $WEB_ROOT_DIR>
        Options -Indexes +FollowSymLinks +MultiViews
        AllowOverride All
        Require all granted
      </Directory>
</VirtualHost>" >$sitesAvailableDomain
  echo -e $"\nNew Virtual Host Created\n"
  sudo ln -s $sitesAvailableDomain $sitesEnabled
  sudo systemctl restart httpd 2>/dev/null
  echo "Done, please browse to http://$NAME to check!"
}

show_list_domain(){

echo "List of domains:"

for conf_file in /etc/httpd/conf.d/*.conf; do

    if [[ -f $conf_file ]]; then
        domain=$(basename "${conf_file%.conf}")
        echo "- ${domain}"

    fi
done

}

delete_domain(){
echo "Enter domain name to delete: "

read domain

if [ ! -f "/etc/httpd/conf.d/${domain}.conf" ]; then

    echo "Domain ${domain} not found"
    exit 1

fi

read -p "Are you sure you want to delete domain ${domain}? [y/N] " confirmation
if [[ "$confirmation" != [yY] ]]; then
    echo "Domain deletion aborted"
    exit 1
fi

rm -f /etc/httpd/conf.d/${domain}.conf
systemctl restart httpd
echo "Domain ${domain} has been deleted"
}

function main() {
  PS3=" ===> Enter the option: "
  cal=("install_service" "Check reverse-proxy and install (if not)" "Show list domain" "setup_vhost" "create_domain" "Delete_domain" "Exit the program")
  echo " ------------  Manage Domain Menu ----------- "
  select i in "${cal[@]}"; do
    case $i in
    ${cal[0]})
      echo -e "You chose Install Service\n"
      install_service
      ;;
    ${cal[1]})
      echo -e "You chose Check reverse-proxy and install\n"
      nginx_reverse_proxy_check
      ;;
    ${cal[2]})
      echo -e "You chose Show list Domains\n"
      show_list_domain
      ;;
    ${cal[3]})
      echo -e "You chose Setup VHost\n"
      setup_vhost
      ;;
    ${cal[4]})
      echo -e "You chose Create Domain\n"
      create_new_domain
      ;;
    ${cal[5]})
      echo -e "You chose Delete Domain\n"
      delete_domain
      ;;
    ${cal[6]})
      echo "Exiting the program...."
      break
      ;;
    *)
      echo -e "Option no valadition!!\n"
      ;;
    esac
    REPLY=
  done
}

main 
