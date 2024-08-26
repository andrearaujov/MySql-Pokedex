-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Pokedex
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Pokedex
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Pokedex` DEFAULT CHARACTER SET utf8 ;
USE `Pokedex` ;

-- -----------------------------------------------------
-- Table `Pokedex`.`Natureza`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pokedex`.`Natureza` (
  `idNatureza` INT NOT NULL AUTO_INCREMENT,
  `nomeNatureza` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`idNatureza`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pokedex`.`Pokemon`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pokedex`.`Pokemon` (
  `idPokemon` INT NOT NULL AUTO_INCREMENT,
  `Natureza_idNatureza` INT NOT NULL,
  `numPokedex` INT NOT NULL,
  `nome` VARCHAR(40) NOT NULL,
  `altura` FLOAT NOT NULL,
  `peso` FLOAT NOT NULL,
  `nivel` INT NOT NULL,
  PRIMARY KEY (`idPokemon`),
  INDEX `fk_Pokemon_Natureza1_idx` (`Natureza_idNatureza` ASC) VISIBLE,
  CONSTRAINT `fk_Pokemon_Natureza1`
    FOREIGN KEY (`Natureza_idNatureza`)
    REFERENCES `Pokedex`.`Natureza` (`idNatureza`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pokedex`.`Status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pokedex`.`Status` (
  `Pokemon_idPokemon` INT NOT NULL,
  `dataHoraAtualizacao` DATETIME NOT NULL,
  `vida` INT NOT NULL,
  `ataque` INT NOT NULL,
  `defesa` INT NOT NULL,
  `defesaEspecial` INT NOT NULL,
  `ataqueEspecial` INT NOT NULL,
  `velocidade` INT NOT NULL,
  INDEX `fk_Status_Pokemon1_idx` (`Pokemon_idPokemon` ASC) VISIBLE,
  PRIMARY KEY (`Pokemon_idPokemon`, `dataHoraAtualizacao`),
  CONSTRAINT `fk_Status_Pokemon1`
    FOREIGN KEY (`Pokemon_idPokemon`)
    REFERENCES `Pokedex`.`Pokemon` (`idPokemon`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pokedex`.`Tipos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pokedex`.`Tipos` (
  `idTipo` INT NOT NULL AUTO_INCREMENT,
  `nomeTipo` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`idTipo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pokedex`.`FormaDeEvoluir`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pokedex`.`FormaDeEvoluir` (
  `idFormaEvo` INT NOT NULL AUTO_INCREMENT,
  `FormaEvo` CHAR(1) NOT NULL,
  `nomePedra` VARCHAR(40) NULL,
  `nivelEvoluir` INT NULL,
  PRIMARY KEY (`idFormaEvo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pokedex`.`Movimento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pokedex`.`Movimento` (
  `idMovimento` INT NOT NULL AUTO_INCREMENT,
  `Tipos_idTipo` INT NOT NULL,
  `nome` VARCHAR(40) NOT NULL,
  `potencia` INT NOT NULL,
  `precisao` INT NOT NULL,
  `categoriaDoMovimento` CHAR(1) NOT NULL,
  `descricao` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`idMovimento`),
  INDEX `fk_Movimento_Tipos1_idx` (`Tipos_idTipo` ASC) VISIBLE,
  CONSTRAINT `fk_Movimento_Tipos1`
    FOREIGN KEY (`Tipos_idTipo`)
    REFERENCES `Pokedex`.`Tipos` (`idTipo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pokedex`.`FormaDeAprender`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pokedex`.`FormaDeAprender` (
  `idFormaAprender` INT NOT NULL AUTO_INCREMENT,
  `ehTreinador` TINYINT NOT NULL,
  `nomeTreinador` VARCHAR(40) NULL,
  `ehNivel` TINYINT NOT NULL,
  `nivelAprender` VARCHAR(40) NULL,
  `ehDisco` TINYINT NOT NULL,
  `nomeDisco` VARCHAR(40) NULL,
  PRIMARY KEY (`idFormaAprender`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pokedex`.`Deve_Possuir`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pokedex`.`Deve_Possuir` (
  `Pokemon_idPokemon` INT NOT NULL,
  `Tipos_idTipo` INT NOT NULL,
  INDEX `fk_Pokemon_has_Tipos_Tipos1_idx` (`Tipos_idTipo` ASC) VISIBLE,
  INDEX `fk_Pokemon_has_Tipos_Pokemon1_idx` (`Pokemon_idPokemon` ASC) VISIBLE,
  PRIMARY KEY (`Pokemon_idPokemon`, `Tipos_idTipo`),
  CONSTRAINT `fk_Pokemon_has_Tipos_Pokemon1`
    FOREIGN KEY (`Pokemon_idPokemon`)
    REFERENCES `Pokedex`.`Pokemon` (`idPokemon`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pokemon_has_Tipos_Tipos1`
    FOREIGN KEY (`Tipos_idTipo`)
    REFERENCES `Pokedex`.`Tipos` (`idTipo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pokedex`.`Pokemon_Aprende_Movimento_Atraves`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pokedex`.`Pokemon_Aprende_Movimento_Atraves` (
  `Pokemon_idPokemon` INT NOT NULL,
  `Movimento_idMovimento` INT NOT NULL,
  `FormaDeAprender_idFormaAprender` INT NOT NULL,
  PRIMARY KEY (`Pokemon_idPokemon`, `Movimento_idMovimento`, `FormaDeAprender_idFormaAprender`),
  INDEX `fk_Pokemon_has_Movimento_Movimento1_idx` (`Movimento_idMovimento` ASC) VISIBLE,
  INDEX `fk_Pokemon_has_Movimento_Pokemon1_idx` (`Pokemon_idPokemon` ASC) VISIBLE,
  INDEX `fk_Pokemon_has_Movimento_FormaDeAprender1_idx` (`FormaDeAprender_idFormaAprender` ASC) VISIBLE,
  CONSTRAINT `fk_Pokemon_has_Movimento_Pokemon1`
    FOREIGN KEY (`Pokemon_idPokemon`)
    REFERENCES `Pokedex`.`Pokemon` (`idPokemon`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pokemon_has_Movimento_Movimento1`
    FOREIGN KEY (`Movimento_idMovimento`)
    REFERENCES `Pokedex`.`Movimento` (`idMovimento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pokemon_has_Movimento_FormaDeAprender1`
    FOREIGN KEY (`FormaDeAprender_idFormaAprender`)
    REFERENCES `Pokedex`.`FormaDeAprender` (`idFormaAprender`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pokedex`.`Evolucao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pokedex`.`Evolucao` (
  `idEvolucao` INT NOT NULL AUTO_INCREMENT,
  `nomePokemonEvo` VARCHAR(40) NOT NULL,
  `numPokedexEvo` INT NOT NULL,
  `Pokemon_numPokedex` INT NOT NULL,
  `FormaDeEvoluir_idFormaEvo` INT NOT NULL,
  PRIMARY KEY (`idEvolucao`),
  INDEX `fk_Evolucao_FormaDeEvoluir1_idx` (`FormaDeEvoluir_idFormaEvo` ASC) VISIBLE,
  INDEX `fk_Evolucao_Pokemon1_idx` (`Pokemon_numPokedex` ASC) VISIBLE,
  CONSTRAINT `fk_Evolucao_FormaDeEvoluir1`
    FOREIGN KEY (`FormaDeEvoluir_idFormaEvo`)
    REFERENCES `Pokedex`.`FormaDeEvoluir` (`idFormaEvo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Evolucao_Pokemon1`
    FOREIGN KEY (`Pokemon_numPokedex`)
    REFERENCES `Pokedex`.`Pokemon` (`idPokemon`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
