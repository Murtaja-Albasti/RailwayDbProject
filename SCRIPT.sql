-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema TrainStationDB
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema TrainStationDB
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `TrainStationDB` DEFAULT CHARACTER SET utf8 ;
USE `TrainStationDB` ;

-- -----------------------------------------------------
-- Table `TrainStationDB`.`Employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TrainStationDB`.`Employee` (
  `E_id` INT NOT NULL,
  `salary` INT NOT NULL,
  `E_FNAME` VARCHAR(45) NOT NULL,
  `E_LNAME` VARCHAR(45) NOT NULL,
  `ADDRESS` VARCHAR(45) NOT NULL,
  `GENDER` VARCHAR(1) NOT NULL,
  `PH_NUMBER` INT NOT NULL,
  UNIQUE INDEX `PH_NUMBER_UNIQUE` (`PH_NUMBER` ASC) ,
  PRIMARY KEY (`E_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `TrainStationDB`.`PASSENGER`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TrainStationDB`.`PASSENGER` (
  `P_ID` INT NOT NULL,
  `SEAT_NO` INT NOT NULL,
  `P_NAME` VARCHAR(45) NOT NULL,
  `PH_NUMBER` INT NOT NULL,
  `GENDER` VARCHAR(1) NOT NULL,
  `Employee_E_id` INT NOT NULL,
  PRIMARY KEY (`P_ID`, `Employee_E_id`),
  UNIQUE INDEX `PH_NUMBER_UNIQUE` (`PH_NUMBER` ASC) ,
  INDEX `fk_PASSENGER_Employee1_idx` (`Employee_E_id` ASC) ,
  CONSTRAINT `fk_PASSENGER_Employee1`
    FOREIGN KEY (`Employee_E_id`)
    REFERENCES `TrainStationDB`.`Employee` (`E_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `TrainStationDB`.`STATION`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TrainStationDB`.`STATION` (
  `STATION_ID` INT NOT NULL,
  `NO_OF_PLATFORM` INT NOT NULL,
  `NO_OF_LINES` INT NOT NULL,
  `STATION_NAME` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`STATION_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `TrainStationDB`.`TRAIN`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TrainStationDB`.`TRAIN` (
  `TRAIN_ID` INT NOT NULL,
  `TRN_NAME` VARCHAR(45) NOT NULL,
  `STATION_STATION_ID` INT NOT NULL,
  PRIMARY KEY (`TRAIN_ID`, `STATION_STATION_ID`),
  INDEX `fk_TRAIN_STATION1_idx` (`STATION_STATION_ID` ASC) ,
  CONSTRAINT `fk_TRAIN_STATION1`
    FOREIGN KEY (`STATION_STATION_ID`)
    REFERENCES `TrainStationDB`.`STATION` (`STATION_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `TrainStationDB`.`CLASS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TrainStationDB`.`CLASS` (
  `CLASS_ID` INT NOT NULL,
  `JOURNY_DATE` DATE NOT NULL,
  `NO_OF_SEAT` INT NOT NULL,
  `TRAIN_TRAIN_ID` INT NOT NULL,
  PRIMARY KEY (`CLASS_ID`, `TRAIN_TRAIN_ID`),
  INDEX `fk_CLASS_TRAIN1_idx` (`TRAIN_TRAIN_ID` ASC) ,
  CONSTRAINT `fk_CLASS_TRAIN1`
    FOREIGN KEY (`TRAIN_TRAIN_ID`)
    REFERENCES `TrainStationDB`.`TRAIN` (`TRAIN_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `TrainStationDB`.`TICKET`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TrainStationDB`.`TICKET` (
  `TICKET_NO` INT NOT NULL,
  `DESTINATION` VARCHAR(45) NOT NULL,
  `SOURCE` VARCHAR(45) NOT NULL,
  `CLASS_CLASS_ID` INT NOT NULL,
  `CLASS_TRAIN_TRAIN_ID` INT NOT NULL,
  PRIMARY KEY (`TICKET_NO`, `CLASS_CLASS_ID`, `CLASS_TRAIN_TRAIN_ID`),
  INDEX `fk_TICKET_CLASS1_idx` (`CLASS_CLASS_ID` ASC, `CLASS_TRAIN_TRAIN_ID` ASC) ,
  CONSTRAINT `fk_TICKET_CLASS1`
    FOREIGN KEY (`CLASS_CLASS_ID` , `CLASS_TRAIN_TRAIN_ID`)
    REFERENCES `TrainStationDB`.`CLASS` (`CLASS_ID` , `TRAIN_TRAIN_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `TrainStationDB`.`TIME`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TrainStationDB`.`TIME` (
  `DEP_TIME` DATE NOT NULL,
  `REF_NO` INT NOT NULL,
  `ARR_TIME` DATE NOT NULL,
  `STATION_STATION_ID` INT NOT NULL,
  `TRAIN_TRAIN_ID` INT NOT NULL,
  PRIMARY KEY (`STATION_STATION_ID`, `TRAIN_TRAIN_ID`),
  INDEX `fk_TIME_TRAIN1_idx` (`TRAIN_TRAIN_ID` ASC) ,
  CONSTRAINT `fk_TIME_STATION`
    FOREIGN KEY (`STATION_STATION_ID`)
    REFERENCES `TrainStationDB`.`STATION` (`STATION_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TIME_TRAIN1`
    FOREIGN KEY (`TRAIN_TRAIN_ID`)
    REFERENCES `TrainStationDB`.`TRAIN` (`TRAIN_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
