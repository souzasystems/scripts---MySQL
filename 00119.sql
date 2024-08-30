CREATE TABLE IF NOT EXISTS PESSOAS (
    ID_PESSOA INT AUTO_INCREMENT,
    ATIVO TINYINT(1) DEFAULT 1,
    DATA_CADASTRO DATE NULL,
    E_MAIL VARCHAR(80) NULL,
    LOG_ID_USUARIO SMALLINT NOT NULL,
    LOG_ROTINA VARCHAR(1) NOT NULL,
    LOG_DATA_HORA DATETIME DEFAULT CURRENT_TIMESTAMP,
    LOG_MOTIVO_EXCLUSAO TEXT NULL,
    CON_CURRENCY_ID VARCHAR(50) NOT NULL DEFAULT (UUID()),
    CONSTRAINT PK_PESSOAS PRIMARY KEY(ID_PESSOA),
    CONSTRAINT FK_PESSOAS_USUARIOS FOREIGN KEY (LOG_ID_USUARIO) REFERENCES USUARIOS(ID_USUARIO)
);