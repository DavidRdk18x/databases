CREATE TABLE `mydb2025`.`users` 
(`id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT , 
`nume` VARCHAR(100) NOT NULL , 
`prenume` VARCHAR(100) NOT NULL , 
`telefon` CHAR(10) NOT NULL , 
`email` VARCHAR(200) NOT NULL , 
`data-nastere` INT(10) NOT NULL , 
`data-adaugare` TIMESTAMP NOT NULL , PRIMARY KEY (`id`), UNIQUE (`telefon`))
ENGINE = InnoDB;