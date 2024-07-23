## MySQL

#### Task 0
Install MySQL5.7.x on both the servers.

#### Task 1
Create user to allow access to the replication status on both servers.

#### Task 2
Create database `tyrell_corp` with the table `nexus6` and at least one entry in it.

#### Task 3
Create new user for the replica server.

####Task 4
[4-mysql_configuration_primary](4-mysql_configuration_primary) is a copy of the MySQL primary configuration (`my.cnf` or `mysqld.cnf`).
[4-mysql_configuration_replica](4-mysql_configuration_replica) is a copy of the MySQL replica configuration.

#### Task 5
[5-mysql_backup](5-mysql_backup) is a Bash script that generates a MySQL dump and creates a compressed archive out of it.
Requirements:
- The MySQL dump contains all the MySQL databases
- The MySQL dump is named `backup.sql`
- The MySQL dump file is compressed to a `tar.gz` archive
- This archive has the following name format: `day-month-year.tar.gz`
- The user to connect to the MySQL database is `root`
- The Bash script accepts one argument that is the password used to connect to the MySQL database
