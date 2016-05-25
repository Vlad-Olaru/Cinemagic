CREATE TABLE `heroku_3e8e52ec0fc5305`.`time_table` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `starting_time` VARCHAR(45) NULL COMMENT '',
  `ending_time` VARCHAR(45) NULL COMMENT '',
  `movie_id` INT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '',
  INDEX `movie_id_idx` (`movie_id` ASC)  COMMENT '',
  CONSTRAINT `movie_id`
    FOREIGN KEY (`movie_id`)
    REFERENCES `heroku_3e8e52ec0fc5305`.`movies` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('9:00', '11:00', '1');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('11:20', '13:20', '1');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('13:40', '15:40', '1');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('16:00', '18:00', '1');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('18:20', '20:20', '1');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('20:40', '22:40', '1');

INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('9:00', '11:00', '2');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('11:20', '13:20', '2');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('13:40', '15:40', '2');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('16:00', '18:00', '2');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('18:20', '20:20', '2');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('20:40', '22:40', '2');

INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('9:00', '11:00', '3');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('11:20', '13:20', '3');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('13:40', '15:40', '3');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('16:00', '18:00', '3');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('18:20', '20:20', '3');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('20:40', '22:40', '3');

INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('9:00', '11:00', '4');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('11:20', '13:20', '4');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('13:40', '15:40', '4');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('16:00', '18:00', '4');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('18:20', '20:20', '4');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('20:40', '22:40', '4');

INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('9:00', '11:00', '5');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('11:20', '13:20', '5');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('13:40', '15:40', '5');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('16:00', '18:00', '5');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('18:20', '20:20', '5');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('20:40', '22:40', '5');

INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('9:00', '11:00', '6');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('11:20', '13:20', '6');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('13:40', '15:40', '6');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('16:00', '18:00', '6');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('18:20', '20:20', '6');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('20:40', '22:40', '6');

INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('9:00', '11:00', '7');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('11:20', '13:20', '7');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('13:40', '15:40', '7');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('16:00', '18:00', '7');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('18:20', '20:20', '7');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('20:40', '22:40', '7');

INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('9:00', '11:00', '8');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('11:20', '13:20', '8');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('13:40', '15:40', '8');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('16:00', '18:00', '8');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('18:20', '20:20', '8');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('20:40', '22:40', '8');

INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('9:00', '11:00', '9');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('11:20', '13:20', '9');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('13:40', '15:40', '9');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('16:00', '18:00', '9');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('18:20', '20:20', '9');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('20:40', '22:40', '9');

INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('9:00', '11:00', '10');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('11:20', '13:20', '10');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('13:40', '15:40', '10');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('16:00', '18:00', '10');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('18:20', '20:20', '10');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('20:40', '22:40', '10');

INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('9:00', '11:00', '11');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('11:20', '13:20', '11');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('13:40', '15:40', '11');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('16:00', '18:00', '11');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('18:20', '20:20', '11');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('20:40', '22:40', '11');

INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('9:00', '11:00', '12');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('11:20', '13:20', '12');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('13:40', '15:40', '12');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('16:00', '18:00', '12');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('18:20', '20:20', '12');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('20:40', '22:40', '12');

INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('9:00', '11:00', '13');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('11:20', '13:20', '13');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('13:40', '15:40', '13');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('16:00', '18:00', '13');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('18:20', '20:20', '13');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('20:40', '22:40', '13');

INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('9:00', '11:00', '14');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('11:20', '13:20', '14');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('13:40', '15:40', '14');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('16:00', '18:00', '14');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('18:20', '20:20', '14');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('20:40', '22:40', '14');

INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('9:00', '11:00', '15');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('11:20', '13:20', '15');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('13:40', '15:40', '15');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('16:00', '18:00', '15');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('18:20', '20:20', '15');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('20:40', '22:40', '15');

INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('23:59', '11:00', '1');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('23:59', '11:00', '2');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('23:59', '11:00', '3');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('23:59', '11:00', '4');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('23:59', '11:00', '5');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('23:59', '11:00', '6');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('23:59', '11:00', '7');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('23:59', '11:00', '8');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('23:59', '11:00', '9');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('23:59', '11:00', '10');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('23:59', '11:00', '11');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('23:59', '11:00', '12');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('23:59', '11:00', '13');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('23:59', '11:00', '14');
INSERT INTO `heroku_3e8e52ec0fc5305`.`time_table` (`starting_time`, `ending_time`, `movie_id`) VALUES ('23:59', '11:00', '15');


CREATE TABLE `heroku_3e8e52ec0fc5305`.`seats` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `timetable_id` INT NOT NULL COMMENT '',
  `occupied_seat` VARCHAR(45) NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '',
  CONSTRAINT `timetable_id`
    FOREIGN KEY (`id`)
    REFERENCES `heroku_3e8e52ec0fc5305`.`time_table` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
