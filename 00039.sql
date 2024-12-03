CREATE TABLE IF NOT EXISTS BANCOS (
    ID_BANCO SMALLINT AUTO_INCREMENT,
    NOME_BANCO VARCHAR(60),
    COD_ISPB VARCHAR(08),
    LOG_ID_USUARIO SMALLINT NOT NULL,
    LOG_ROTINA VARCHAR(1) NOT NULL,
    LOG_DATA_HORA DATETIME DEFAULT CURRENT_TIMESTAMP,
    LOG_MOTIVO_EXCLUSAO VARCHAR(255) DEFAULT 'EXCLUSÃO PADRÃO',
    CON_CURRENCY_ID VARCHAR(50) NOT NULL DEFAULT (UUID()),
    CONSTRAINT PK_BANCOS PRIMARY KEY (ID_BANCO),
    CONSTRAINT FK_USUARIOS_BANCOS FOREIGN KEY(LOG_ID_USUARIO) REFERENCES USUARIOS(ID_USUARIO)
);
