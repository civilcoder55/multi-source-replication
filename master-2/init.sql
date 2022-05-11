CREATE USER 'replicate' @'%' IDENTIFIED WITH mysql_native_password BY 'password';

GRANT REPLICATION SLAVE ON *.* TO 'replicate' @'%';

CREATE TABLE users (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(30) NOT NULL,
    lastname VARCHAR(30) NOT NULL,
    email VARCHAR(50),
    reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE = InnoDB AUTO_INCREMENT = 100001;

FLUSH privileges;

RESET MASTER;