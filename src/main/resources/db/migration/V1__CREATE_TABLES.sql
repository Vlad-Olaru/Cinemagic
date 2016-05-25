CREATE TABLE `n10sgmmybpclwls0`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `user_name` VARCHAR(45) NOT NULL COMMENT '',
  `password` VARCHAR(255) NOT NULL COMMENT '',
  `role` VARCHAR(45) NULL DEFAULT 'ROLE_ADMIN' COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '');

CREATE TABLE `n10sgmmybpclwls0`.`movies` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `movie_name` VARCHAR(255) NOT NULL COMMENT '',
  `movie_description` VARCHAR(1023) NULL COMMENT '',
  `genre` VARCHAR(45) NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '');
ALTER TABLE `n10sgmmybpclwls0`.`movies`
  ADD COLUMN `picture_name` VARCHAR(45) NOT NULL COMMENT '' AFTER `genre`;
