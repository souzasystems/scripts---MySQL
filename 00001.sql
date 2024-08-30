CREATE TABLE IF NOT EXISTS USUARIOS (
    ID_USUARIO SMALLINT AUTO_INCREMENT,
    NOME_USUARIO VARCHAR(30) NULL,
    PRIVILEGIO CHAR(1) NULL,
    SENHA VARCHAR(128) NULL,
    INATIVO BIT DEFAULT 0,
    DATA_INICIO DATETIME NULL,
    DATA_EXPIRACAO DATETIME NULL,
    QUANTIDADE_CONEXOES TINYINT DEFAULT 1,
    QUANTIDADE_CONECTADO TINYINT DEFAULT 0,
    ALTERAR_SENHA_PRIMEIRO_LOGON BIT DEFAULT 0,
    SENHA_POR_TRINTA_DIAS BIT DEFAULT 0,
    LOG_ID_USUARIO SMALLINT NOT NULL,
    LOG_ROTINA VARCHAR(1) NOT NULL,
    LOG_DATA_HORA DATETIME DEFAULT CURRENT_TIMESTAMP,
    LOG_MOTIVO_EXCLUSAO TEXT NULL,
    CON_CURRENCY_ID VARCHAR(50) NOT NULL DEFAULT (UUID()),
    CONSTRAINT PK_USUARIOS PRIMARY KEY (ID_USUARIO),
    CONSTRAINT FK_USUARIOS_USUARIOS FOREIGN KEY(LOG_ID_USUARIO) REFERENCES USUARIOS(ID_USUARIO)
);