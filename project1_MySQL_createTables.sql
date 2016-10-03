-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET latin1 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customer` (
  `CustomerID` INT NOT NULL,
  `FirstName` VARCHAR(45) NOT NULL,
  `LastName` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(45) NOT NULL,
  `HomePhone` VARCHAR(45) NULL,
  `WorkPhone` VARCHAR(45) NULL,
  `DoB` VARCHAR(45) NULL,
  `CustomerType` VARCHAR(45) NOT NULL,
  `SponsorID` INT NULL,
  PRIMARY KEY (`CustomerID`),
  UNIQUE INDEX `CustomerID_UNIQUE` (`CustomerID` ASC),
  INDEX `SponsorID_idx` (`SponsorID` ASC),
  CONSTRAINT `SponsorID`
    FOREIGN KEY (`SponsorID`)
    REFERENCES `mydb`.`Customer` (`CustomerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Trips`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Trips` (
  `TripCode` INT NOT NULL,
  `TripType` VARCHAR(45) NOT NULL,
  `Difficulty` VARCHAR(45) NOT NULL,
  `TripFee` VARCHAR(45) NOT NULL,
  `TripLength` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`TripCode`),
  UNIQUE INDEX `TripCode_UNIQUE` (`TripCode` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`EmployeesOAG`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`EmployeesOAG` (
  `EmployeeID` INT NOT NULL AUTO_INCREMENT,
  `FirstName` VARCHAR(45) NOT NULL,
  `LastName` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(45) NOT NULL,
  `HomePhone` VARCHAR(45) NOT NULL,
  `WorkPhone` VARCHAR(45) NOT NULL,
  `DoB` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`EmployeeID`),
  UNIQUE INDEX `EmployeeID_UNIQUE` (`EmployeeID` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tripschedule`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`tripschedule` (
  `TripScheduleID` INT NOT NULL AUTO_INCREMENT,
  `TripCode` INT NOT NULL,
  `tripDate` DATE NOT NULL,
  `LeaderID` INT NOT NULL,
  `AssLeaderID` INT NOT NULL,
  PRIMARY KEY (`TripScheduleID`, `TripCode`, `LeaderID`, `AssLeaderID`),
  UNIQUE INDEX `TripScheduleID_UNIQUE` (`TripScheduleID` ASC),
  INDEX `TripCode_idx` (`TripCode` ASC),
  INDEX `LeaderID_idx` (`LeaderID` ASC),
  INDEX `AssLeaderID_idx` (`AssLeaderID` ASC),
  CONSTRAINT `TripCode`
    FOREIGN KEY (`TripCode`)
    REFERENCES `mydb`.`Trips` (`TripCode`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `LeaderID`
    FOREIGN KEY (`LeaderID`)
    REFERENCES `mydb`.`EmployeesOAG` (`EmployeeID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `AssLeaderID`
    FOREIGN KEY (`AssLeaderID`)
    REFERENCES `mydb`.`EmployeesOAG` (`EmployeeID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SignUps`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`SignUps` (
  `SignUpID` INT NOT NULL AUTO_INCREMENT,
  `CustomerID` INT NOT NULL,
  `InsWaiver` INT NOT NULL,
  `TripScheduleID` INT NOT NULL,
  PRIMARY KEY (`SignUpID`, `TripScheduleID`, `CustomerID`),
  UNIQUE INDEX `SignUpID_UNIQUE` (`SignUpID` ASC),
  INDEX `CustomerId_idx` (`CustomerID` ASC),
  INDEX `TripScheduleID_idx` (`TripScheduleID` ASC),
  CONSTRAINT `CustomerId`
    FOREIGN KEY (`CustomerID`)
    REFERENCES `mydb`.`Customer` (`CustomerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `TripScheduleID`
    FOREIGN KEY (`TripScheduleID`)
    REFERENCES `mydb`.`tripschedule` (`TripScheduleID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`JobPositions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`JobPositions` (
  `PositionID` INT NOT NULL AUTO_INCREMENT,
  `JobDescription` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`PositionID`),
  UNIQUE INDEX `PositionID_UNIQUE` (`PositionID` ASC),
  UNIQUE INDEX `JobDescription_UNIQUE` (`JobDescription` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`EmploymentHistory`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`EmploymentHistory` (
  `EmpHistoryID` INT NOT NULL AUTO_INCREMENT,
  `EmployeeID` INT NOT NULL,
  `PositionID` INT NOT NULL,
  `StartDate` DATE NOT NULL,
  `EndDate` DATE NULL,
  PRIMARY KEY (`EmpHistoryID`, `PositionID`, `EmployeeID`),
  UNIQUE INDEX `HiringID_UNIQUE` (`EmpHistoryID` ASC),
  INDEX `PositionID_idx` (`PositionID` ASC),
  CONSTRAINT `EmployeeID`
    FOREIGN KEY (`EmployeeID`)
    REFERENCES `mydb`.`EmployeesOAG` (`EmployeeID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `PositionID`
    FOREIGN KEY (`PositionID`)
    REFERENCES `mydb`.`JobPositions` (`PositionID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`EquipmentType`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`EquipmentType` (
  `EquipmentName` VARCHAR(45),
  `StudentFee` DECIMAL(4) NOT NULL,
  `FacultyFee` DECIMAL(4) NOT NULL,
  `AlumniFee` DECIMAL(4) NOT NULL,
  `GuestFee` DECIMAL(4) NOT NULL,
  PRIMARY KEY (`EquipmentName`));

-- -----------------------------------------------------
-- Table `mydb`.`RentalAgreement`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`RentalAgreement` (
  `AgreementID` INT NOT NULL AUTO_INCREMENT,
  `AgreementDate` DATE NOT NULL,
  `CustomerID` INT NOT NULL,
  `EmployeeID` INT NOT NULL,
  PRIMARY KEY (`AgreementID`, `CustomerID`, `EmployeeID`),
  INDEX `CustomerID_idx` (`CustomerID` ASC),
  INDEX `EmployeeID_idx` (`EmployeeID` ASC),
  CONSTRAINT `CustomerID`
    FOREIGN KEY (`CustomerID`)
    REFERENCES `mydb`.`Customer` (`CustomerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `EmployeeID`
    FOREIGN KEY (`EmployeeID`)
    REFERENCES `mydb`.`EmployeesOAG` (`EmployeeID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Inventory`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Inventory` (
  `InventoryID` INT NOT NULL AUTO_INCREMENT,
  `EquipmentName` VARCHAR(45) NOT NULL,
  `Condition` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`InventoryID`, `EquipmentName`),
  UNIQUE INDEX `InventoryID_UNIQUE` (`InventoryID` ASC),
  INDEX `EquipmentName_idx` (`EquipmentName` ASC),
  CONSTRAINT `EquipmentName`
    FOREIGN KEY (`EquipmentName`)
    REFERENCES `mydb`.`EquipmentType` (`EquipmentName`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`RentalDetail`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`RentalDetail` (
  `RentalID` INT NOT NULL AUTO_INCREMENT,
  `AgreementID` INT NOT NULL,
  `CheckoutDate` DATE NULL,
  `ExpectedReturnDate` DATE NOT NULL,
  `ActualReturnDate` DATE NULL,
  `InventoryID` INT NOT NULL,
  PRIMARY KEY (`RentalID`, `AgreementID`, `InventoryID`),
  UNIQUE INDEX `RentalID_UNIQUE` (`RentalID` ASC),
  INDEX `AgreementID_idx` (`AgreementID` ASC),
  INDEX `InventoryID_idx` (`InventoryID` ASC),
  CONSTRAINT `AgreementID`
    FOREIGN KEY (`AgreementID`)
    REFERENCES `mydb`.`RentalAgreement` (`AgreementID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `InventoryID`
    FOREIGN KEY (`InventoryID`)
    REFERENCES `mydb`.`Inventory` (`InventoryID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
