CREATE USER 'Guest'@'172.22.0.3' identified by 'ProjectINT221';

GRANT SELECT ON Brands TO 'Guest'@'172.22.0.3';
GRANT SELECT ON Colors TO 'Guest'@'172.22.0.3';
GRANT SELECT,INSERT,UPDATE,DELETE ON Products TO 'Guest'@'172.22.0.3';
GRANT SELECT,INSERT,UPDATE,DELETE ON Products_Colors TO 'userProj'@'172.22.0.3';
