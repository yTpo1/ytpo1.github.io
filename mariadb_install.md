# Archlinux Installation

1. Install the package
```bash
sudo pacman -S mariadb
```

2. Run the following command **before starting** the mariadb.service
This command sets up the initial MariaDB database environment, ensuring that the necessary system tables are created and that the MariaDB server runs with the appropriate user permissions.
```bash
sudo mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
# sudo mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql # old
```
Breakdown:
* `mariadb-install-db`: This is the command to initialize the MariaDB data directory. It sets up the initial database structure and system tables required by MariaDB.
* `--user=mysql`: This option specifies that the MariaDB server should run as the `mysql` user. THis is important for security and permissions management.
* `--basedir=/usr`: This option specifies the base directory of the MariaDB installation. It tells the script where to find the MariaDB binaries and support files.
* `--datadir=/var/lib/mysql`: This option specifies the directory where the MariaDB data files will be stored. This is where the actual database files will reside.


3. Start and enable the Mariadb service
```bash
sudo systemctl start mariadb
sudo systemctl enable mariadb
```

4. Test installation by logging in
```
sudo mysql -u root -p
MariaDB [(none)]> show databases;
```

Optional/outdated? (securing post installation?)
[root@archlinux ~]# /usr/bin/mysql_secure_installation

Sources:
https://wiki.archlinux.org/index.php/MariaDB
http://www.geekpills.com/operating-system/linux/install-configure-mariadb-mysql-archlinux

# Ubuntu Installation (very old notes, dont care about sorting this out)

## creating another super user
mysql> GRANT ALL PRIVILEGES ON *.* TO 'user'@'localhost';

### Saving Your Changes
mysql> FLUSH PRIVILEGES;

## Securing MariaDB

Run the mysql_secure_installation command to improve the security of the MariaDB installation:

> sudo mysql_secure_installation

The script will prompt you to set up the root user password, remove the anonymous user, restrict root user access to the local machine and remove the test database. At the end the script will reload the privilege tables ensuring that all changes take effect immediately.

All steps are explained in detail and it is recommended to answer “Y” (yes) to all questions.
* https://linuxize.com/post/how-to-install-mariadb-on-ubuntu-18-04/#securing-mariadb

## Errors and broken code
* https://stackoverflow.com/questions/51587227/phpmyadmin-error-in-processing-request-error-code-500-error-text-internal-serv
### Access denied for user 'root'@'localhost'
> sudo mysql -u
* https://stackoverflow.com/questions/39281594/error-1698-28000-access-denied-for-user-rootlocalhost

## Setting up phpmyadmin
1. Make sure apache2 is installed
2. Install and configure phpmyadmin
> echo sudo apt install phpmyadmin
> vim /etc/apache2/apache2.conf
Add the following to the bottom of the file:
```
# phpMyAdmin Configuration
Include /etc/phpmyadmin/apache.conf
```
> service apache2 restart