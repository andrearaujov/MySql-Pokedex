ALTER TABLE `Pokemon`
ADD COLUMN `dataCaptura` DATE DEFAULT NULL;

ALTER TABLE `Tipos`
MODIFY COLUMN `nomeTipo` VARCHAR(60) NOT NULL;

ALTER TABLE `Movimento`
ADD UNIQUE (`nome`);

-- Criar uma tabela extra para exemplificar
CREATE TABLE IF NOT EXISTS `TabelaExtra` (
  `idExtra` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idExtra`)
) ENGINE = InnoDB;

DROP TABLE IF EXISTS `TabelaExtra`;



