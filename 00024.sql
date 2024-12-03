CREATE TABLE IF NOT EXISTS VIAS (
    ID_VIA INT AUTO_INCREMENT NOT NULL,
    ID_LOGRADOURO SMALLINT NOT NULL,
    ID_BAIRRO INT NOT NULL,
    NOME_VIA VARCHAR(60) NULL,
    CEP CHAR(8) NULL,
    INATIVA BIT DEFAULT 0,
    LOG_ID_USUARIO SMALLINT NOT NULL,
    LOG_ROTINA CHAR(1) NOT NULL,
    LOG_DATA_HORA DATETIME DEFAULT CURRENT_TIMESTAMP,
    LOG_MOTIVO_EXCLUSAO VARCHAR(255) DEFAULT 'EXCLUSÃO PADRÃO',
    CON_CURRENCY_ID VARCHAR(50) NOT NULL DEFAULT (UUID()),
    CONSTRAINT PK_VIAS PRIMARY KEY (ID_VIA),
    CONSTRAINT FK_VIAS_LOGRADOUROS FOREIGN KEY (ID_LOGRADOURO) REFERENCES LOGRADOUROS(ID_LOGRADOURO),
    CONSTRAINT FK_VIAS_BAIRROS FOREIGN KEY (ID_BAIRRO) REFERENCES BAIRROS(ID_BAIRRO),
    CONSTRAINT FK_VIAS_USUARIOS FOREIGN KEY (LOG_ID_USUARIO) REFERENCES USUARIOS(ID_USUARIO)
);
