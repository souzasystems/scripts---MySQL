CREATE TABLE IF NOT EXISTS TIPOS_ENDERECO (
    ID_TIPO_ENDERECO TINYINT AUTO_INCREMENT,
    DESCRICAO_TIPO_ENDERECO VARCHAR(25) NULL,
    LOG_ID_USUARIO SMALLINT NOT NULL,
    LOG_ROTINA VARCHAR(1) NOT NULL,
    LOG_DATA_HORA DATETIME DEFAULT CURRENT_TIMESTAMP,
    LOG_MOTIVO_EXCLUSAO VARCHAR(255),
    CON_CURRENCY_ID VARCHAR(50) NOT NULL DEFAULT (UUID()),
    CONSTRAINT PK_TIPOS_ENDERECO PRIMARY KEY (ID_TIPO_ENDERECO),
    CONSTRAINT FK_TIPOS_ENDERECO_USUARIOS FOREIGN KEY(LOG_ID_USUARIO) REFERENCES USUARIOS(ID_USUARIO)
);
