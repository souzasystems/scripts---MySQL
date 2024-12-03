CREATE TABLE IF NOT EXISTS PAISES (
    ID_PAIS SMALLINT AUTO_INCREMENT NOT NULL,
    NOME_PAIS VARCHAR(50) NULL,
    SIGLA_02 CHAR(2) NULL,
    SIGLA_03 CHAR(3) NULL,
    CODIGO_ISO_3166 SMALLINT NULL,
    NUMERO_DDI SMALLINT NULL,
    INATIVO BIT DEFAULT 0,
    LOG_ID_USUARIO SMALLINT NOT NULL,
    LOG_ROTINA VARCHAR(1) NOT NULL,
    LOG_DATA_HORA DATETIME DEFAULT CURRENT_TIMESTAMP,
    LOG_MOTIVO_EXCLUSAO VARCHAR(255) DEFAULT 'EXCLUSÃO PADRÃO',
    CON_CURRENCY_ID VARCHAR(50) NOT NULL DEFAULT (UUID()),
    CONSTRAINT PK_PAISES PRIMARY KEY (ID_PAIS),
    CONSTRAINT FK_PAISES_USUARIOS FOREIGN KEY (LOG_ID_USUARIO) REFERENCES USUARIOS(ID_USUARIO)
);
