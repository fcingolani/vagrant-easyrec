create database easyrec;
grant index, create, select, insert, update, drop, delete, alter, lock tables on easyrec.* to 'easyrecuser'@'localhost'
identified by 'password';