CREATE TABLE IF NOT EXISTS TIPOS_ZONA (
    ID_TIPO_ZONA TINYINT AUTO_INCREMENT,
    DESCRICAO_TIPO_ZONA VARCHAR(25) DEFAULT NULL,
    INATIVO BIT DEFAULT 00,
    LOG_ID_USUARIO SMALLINT NOT NULL,
    LOG_ROTINA VARCHAR(1) NOT NULL,
    LOG_DATA_HORA DATETIME DEFAULT CURRENT_TIMESTAMP,
    LOG_MOTIVO_EXCLUSAO VARCHAR(255) DEFAULT 'EXCLUSÃO PADRÃO',
    CON_CURRENCY_ID VARCHAR(50) NOT NULL DEFAULT (UUID()),
    CONSTRAINT PK_TIPOS_ZONA PRIMARY KEY (ID_TIPO_ZONA),
    CONSTRAINT FK_TIPOS_ZONA_USUARIOS FOREIGN KEY (LOG_ID_USUARIO) REFERENCES USUARIOS(ID_USUARIO)
);
