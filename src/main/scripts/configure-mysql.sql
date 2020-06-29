CREATE DATABASE dw_dev;
CREATE DATABASE dw_prod;

CREATE USER 'dw_dev_user'@'localhost' IDENTIFIED BY 'dw';
CREATE USER 'dw_prod_user'@'localhost' IDENTIFIED BY 'dw';
CREATE USER 'dw_dev_user'@'%' IDENTIFIED BY 'dw';
CREATE USER 'dw_prod_user'@'%' IDENTIFIED BY 'dw';

GRANT SELECT ON dw_dev.* to 'dw_dev_user'@'localhost';
GRANT INSERT ON dw_dev.* to 'dw_dev_user'@'localhost';
GRANT UPDATE ON dw_dev.* to 'dw_dev_user'@'localhost';
GRANT DELETE ON dw_dev.* to 'dw_dev_user'@'localhost';
GRANT SELECT ON dw_dev.* to 'dw_dev_user'@'%';
GRANT INSERT ON dw_dev.* to 'dw_dev_user'@'%';
GRANT UPDATE ON dw_dev.* to 'dw_dev_user'@'%';
GRANT DELETE ON dw_dev.* to 'dw_dev_user'@'%';

GRANT SELECT ON dw_prod.* to 'dw_prod_user'@'localhost';
GRANT INSERT ON dw_prod.* to 'dw_prod_user'@'localhost';
GRANT UPDATE ON dw_prod.* to 'dw_prod_user'@'localhost';
GRANT DELETE ON dw_prod.* to 'dw_prod_user'@'localhost';
GRANT SELECT ON dw_prod.* to 'dw_prod_user'@'%';
GRANT INSERT ON dw_prod.* to 'dw_prod_user'@'%';
GRANT UPDATE ON dw_prod.* to 'dw_prod_user'@'%';
GRANT DELETE ON dw_prod.* to 'dw_prod_user'@'%';

FLUSH PRIVILEGES;

