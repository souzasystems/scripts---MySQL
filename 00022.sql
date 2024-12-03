CREATE TABLE IF NOT EXISTS QUADRAS (
   ID_QUADRA SMALLINT AUTO_INCREMENT NOT NULL,
   ID_BAIRRO INT NOT NULL,
   DESCRICAO_QUADRA VARCHAR(35) DEFAULT NULL,
   COMPLEMENTO VARCHAR(5) DEFAULT NULL,
   INATIVA BIT DEFAULT 0,
   LOG_ID_USUARIO SMALLINT NOT NULL,
   LOG_ROTINA VARCHAR(1) NOT NULL,
   LOG_DATA_HORA DATETIME DEFAULT CURRENT_TIMESTAMP,
   LOG_MOTIVO_EXCLUSAO VARCHAR(255) DEFAULT 'EXCLUSÃO PADRÃO',
   CON_CURRENCY_ID VARCHAR(50) NOT NULL DEFAULT (UUID()),
   CONSTRAINT PK_QUADRAS PRIMARY KEY (ID_QUADRA),
   CONSTRAINT FK_QUADRAS_BAIRROS FOREIGN KEY (ID_BAIRRO) REFERENCES BAIRROS (ID_BAIRRO),
   CONSTRAINT FK_QUADRAS_USUARIOS FOREIGN KEY (LOG_ID_USUARIO) REFERENCES USUARIOS (ID_USUARIO)
);
