CREATE TABLE `ponto_inteligente`.`empresa` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `cnpj` VARCHAR(255) NOT NULL,
  `data_atualizacao` DATETIME NOT NULL,
  `data_criacao` DATETIME NOT NULL,
  `razao_social` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE `ponto_inteligente`.`funcionario` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `cpf` VARCHAR(255) NOT NULL,
  `data_atualizacao` DATETIME NOT NULL,
  `data_criacao` DATETIME NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `nome` VARCHAR(255) NOT NULL,
  `perfil` VARCHAR(255) NOT NULL,
  `qtd_horas_almoco` FLOAT NULL DEFAULT NULL,
  `qtd_horas_trabalho_dia` FLOAT NULL DEFAULT NULL,
  `senha` VARCHAR(255) NOT NULL,
  `valor_hora` DECIMAL(19,2) NULL DEFAULT NULL,
  `empresa_id` BIGINT(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `funcionario_empresa_idx` (`empresa_id` ASC),
  CONSTRAINT `funcionario_empresa`
    FOREIGN KEY (`empresa_id`)
    REFERENCES `ponto_inteligente`.`empresa` (`id`)
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

  CREATE TABLE `ponto_inteligente`.`lancamento` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `data` DATETIME NOT NULL,
  `data_atualizacao` DATETIME NOT NULL,
  `data_criacao` DATETIME NOT NULL,
  `descricao` VARCHAR(255) NULL DEFAULT NULL,
  `localizacao` VARCHAR(255) NULL DEFAULT NULL,
  `tipo` VARCHAR(255) NOT NULL,
  `funcionario_id` BIGINT(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `lancamento_funcionario_idx` (`funcionario_id` ASC),
  CONSTRAINT `lancamento_funcionario`
    FOREIGN KEY (`funcionario_id`)
    REFERENCES `ponto_inteligente`.`funcionario` (`id`)
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET= utf8;