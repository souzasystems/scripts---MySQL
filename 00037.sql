CREATE TABLE IF NOT EXISTS ENDERECOS_PESSOAS (
    ID_ENDERECO_PESSOA INT AUTO_INCREMENT,
    ID_VIA INT NULL,
    ID_PESSOA INT NOT NULL,
    ID_TIPO_ENDERECO TINYINT NULL,
    ID_LOTEAMENTO SMALLINT NULL,
    ID_LOTE SMALLINT NULL,
    ID_QUADRA SMALLINT NULL,
    ID_CONDOMINIO SMALLINT NULL,
    ID_DISTRITO SMALLINT NULL,
    NUMERO INT NULL,
    COMPLEMENTO VARCHAR(25) NULL,
    LOG_ID_USUARIO SMALLINT NOT NULL,
    LOG_ROTINA VARCHAR(1) NOT NULL,
    LOG_DATA_HORA DATETIME DEFAULT CURRENT_TIMESTAMP,
    LOG_MOTIVO_EXCLUSAO VARCHAR(255),
    CON_CURRENCY_ID VARCHAR(50) NOT NULL DEFAULT (UUID()),
    CONSTRAINT PK_ENDERECOS_PESSOAS PRIMARY KEY(ID_ENDERECO_PESSOA),
    CONSTRAINT FK_ENDERECOS_PESSOAS_VIAS FOREIGN KEY(ID_VIA) REFERENCES VIAS(ID_VIA),
    CONSTRAINT FK_ENDERECOS_PESSOAS_PESSOAS FOREIGN KEY(ID_PESSOA) REFERENCES PESSOAS(ID_PESSOA),
    CONSTRAINT FK_ENDERECOS_PESSOAS_TIPOS_ENDERECO FOREIGN KEY(ID_TIPO_ENDERECO) REFERENCES TIPOS_ENDERECO(ID_TIPO_ENDERECO),
    CONSTRAINT FK_ENDERECOS_PESSOAS_LOTEAMENTOS FOREIGN KEY(ID_LOTEAMENTO) REFERENCES LOTEAMENTOS(ID_LOTEAMENTO),
    CONSTRAINT FK_ENDERECOS_PESSOAS_LOTES FOREIGN KEY(ID_LOTE) REFERENCES LOTES(ID_LOTE),
    CONSTRAINT FK_ENDERECOS_PESSOAS_QUADRAS FOREIGN KEY(ID_QUADRA) REFERENCES QUADRAS(ID_QUADRA),
    CONSTRAINT FK_ENDERECOS_PESSOAS_CONDOMINIOS FOREIGN KEY(ID_CONDOMINIO) REFERENCES CONDOMINIOS(ID_CONDOMINIO),
    CONSTRAINT FK_ENDERECOS_PESSOAS_DISTRITOS FOREIGN KEY(ID_DISTRITO) REFERENCES DISTRITOS(ID_DISTRITO),
    CONSTRAINT FK_ENDERECOS_PESSOAS_USUARIOS FOREIGN KEY (LOG_ID_USUARIO) REFERENCES USUARIOS(ID_USUARIO)
);