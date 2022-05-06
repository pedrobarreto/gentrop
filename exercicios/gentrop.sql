SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';
DROP database IF EXISTS `gentrop` ;
CREATE database IF NOT EXISTS `gentrop` DEFAULT CHARACTER SET latin1 ;

USE `gentrop` ;

-- -----------------------------------------------------
-- Table `gentrop`.`clientes`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `gentrop`.`clientes` (
  `id_cliente` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NULL DEFAULT NULL,
  `sobrenome` VARCHAR(50) NULL DEFAULT NULL,
  `subscriber_key` VARCHAR(50) NULL DEFAULT NULL,
  `email_address` VARCHAR(50) NULL DEFAULT NULL,
  `telefone` VARCHAR(50) NULL DEFAULT NULL,
  `uf` VARCHAR(25) NULL DEFAULT NULL,
  `status` VARCHAR(50) NULL DEFAULT NULL,
  `locale` VARCHAR(50) NULL DEFAULT NULL,
  `tipo_cliente` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
INDEX `nome` (`nome` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------
-- Table `gentrop`.`pedidos`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `gentrop`.`pedidos` (
  `id` INT(25) NOT NULL AUTO_INCREMENT,
  `id_pedido` INT(25) NOT NULL,
  `id_cliente` INT(25) NULL DEFAULT NULL,
  `sku_pedido` INT(25) NOT NULL,
  `qtd` INT(11) NULL DEFAULT '0',
  `dt_pedido` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
INDEX `id_pedido` (`id_pedido` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

#
# Dumping data for table 'clientes'
#

INSERT INTO `clientes` (`id_cliente`, `nome`, `sobrenome`, `subscriber_key`, `email_address`,
 `telefone`, `uf`, `status`, `locale`, `tipo_cliente`) 
VALUES ( 4567, 'Jader', 'Silva', 'jaderson_silva@gentrop.com', 'jaderson_silva@gentrop.com', 
'47996359866', 'SC', 'A', NULL, NULL);

INSERT INTO `clientes` (`id_cliente`, `nome`, `sobrenome`, `subscriber_key`, `email_address`,
 `telefone`, `uf`, `status`, `locale`, `tipo_cliente`) 
VALUES ( 7890, 'Paloma', 'Barros', 'paloma.barros@gentrop.com', 'paloma.barros@gentrop.com', 
'11948760584', 'SP', 'I', NULL, NULL);

INSERT INTO `clientes` (`id_cliente`, `nome`, `sobrenome`, `subscriber_key`, `email_address`,
 `telefone`, `uf`, `status`, `locale`, `tipo_cliente`) 
VALUES ( 1123, 'Guilherme', 'Tadashi', 'guilherme.tadashi@gentrop.com', 'guilherme.tadashi@gentrop.com', 
'11945910035', 'SP', 'A', NULL, NULL);

INSERT INTO `clientes` (`id_cliente`, `nome`, `sobrenome`, `subscriber_key`, `email_address`,
 `telefone`, `uf`, `status`, `locale`, `tipo_cliente`) 
VALUES ( 1234, 'Marcia', 'Santos', 'marcia.santos@gentrop.com', 'mariasantos.marcia@gmail.com', 
'11995454974', 'SP', 'A', NULL, NULL);

INSERT INTO `clientes` (`id_cliente`, `nome`, `sobrenome`, `subscriber_key`, `email_address`,
 `telefone`, `uf`, `status`, `locale`, `tipo_cliente`) 
VALUES ( 9987, 'Marcia', 'Santos', 'mariasantos.marcia@gmail.com', 'mariasantos.marcia@gmail.com', 
'11995454974', 'SP', 'A', NULL, NULL);


INSERT INTO `clientes` (`id_cliente`, `nome`, `sobrenome`, `subscriber_key`, `email_address`,
 `telefone`, `uf`, `status`, `locale`, `tipo_cliente`) 
VALUES ( 4363, 'João', 'Santos', 'joaosilva@bol.com.br', 'joaosilva@bol.com.br', 
'2199993435', 'RJ', 'A', NULL, NULL);

INSERT INTO `clientes` (`id_cliente`, `nome`, `sobrenome`, `subscriber_key`, `email_address`,
 `telefone`, `uf`, `status`, `locale`, `tipo_cliente`) 
VALUES ( 4321, 'Gustavo', 'Holloway', 'gustavo.holloway@gentrop.com', 'gustavo.holloway@gentrop.com', 
'11986701206', 'SP', 'I', NULL, 'ecossistemas-colaborativos');

INSERT INTO `clientes` ( `nome`, `sobrenome`, `subscriber_key`, `email_address`,
 `telefone`, `uf`, `status`, `locale`, `tipo_cliente`) 
VALUES ( 'Teste', 'Testeteste', 'henrique.sequine@gentrop.com', 'henrique.sequine@gentrop.com', 
'0', 'PR', 'A', NULL, 'Diamante');

#
# Dumping data for table 'pedidos'
#

INSERT INTO `pedidos` (`id_pedido`, `id_cliente`, `sku_pedido`, `qtd`, `dt_pedido`) 
VALUES ( 22828, 1234, 132490742, 1, '2018-04-10 00:00:00' );

INSERT INTO `pedidos` (`id_pedido`, `id_cliente`, `sku_pedido`, `qtd`, `dt_pedido`) 
VALUES ( 22828, 1234, 14214198, 1, '2018-04-10 00:00:00' );

INSERT INTO `pedidos` (`id_pedido`, `id_cliente`, `sku_pedido`, `qtd`, `dt_pedido`) 
VALUES ( 84720, 4567, 262979298, 1, '2019-10-03 00:00:00' );

INSERT INTO `pedidos` (`id_pedido`, `id_cliente`, `sku_pedido`, `qtd`, `dt_pedido`) 
VALUES ( 40670, 1234, 117982132, 1, '2019-01-18 12:00:00' );

INSERT INTO `pedidos` (`id_pedido`, `id_cliente`, `sku_pedido`, `qtd`, `dt_pedido`) 
VALUES ( 76730, 1123, 14214198, 1, '2019-08-23 12:00:00' );

INSERT INTO `pedidos` (`id_pedido`, `id_cliente`, `sku_pedido`, `qtd`, `dt_pedido`) 
VALUES ( 53687, 4567, 132490742, 2, '2020-05-01 00:00:00' );

