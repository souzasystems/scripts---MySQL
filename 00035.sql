CREATE TABLE IF NOT EXISTS PESSOAS_FISICAS (
    ID_PESSOA_FISICA INT AUTO_INCREMENT,
    ID_PESSOA INT NOT NULL,
    ID_ESTADO_CIVIL TINYINT NULL,
    ID_CIDADE SMALLINT NULL,
    NOME VARCHAR(80) NULL,
    NOME_PAI VARCHAR(80) NULL,
    NOME_MAE VARCHAR(80) NULL,
    IDENTIDADE VARCHAR(20) NULL,
    CPF VARCHAR(11) NULL,
    SEXO CHAR(1) NULL,
    DATA_NASCIMENTO DATE NULL,
    LOG_ID_USUARIO SMALLINT NOT NULL,
    LOG_ROTINA VARCHAR(1) NOT NULL,
    LOG_DATA_HORA DATETIME DEFAULT CURRENT_TIMESTAMP,
    LOG_MOTIVO_EXCLUSAO VARCHAR(255) DEFAULT 'EXCLUSÃO PADRÃO',
    CON_CURRENCY_ID VARCHAR(50) NOT NULL DEFAULT (UUID()),
    CONSTRAINT PK_PESSOAS_FISICAS PRIMARY KEY(ID_PESSOA_FISICA),
    CONSTRAINT FK_PESSOAS_FISICAS_PESSOAS FOREIGN KEY(ID_PESSOA) REFERENCES PESSOAS(ID_PESSOA),
    CONSTRAINT FK_PESSOAS_FISICAS_ESTADOS_CIVIS FOREIGN KEY(ID_ESTADO_CIVIL) REFERENCES ESTADOS_CIVIS(ID_ESTADO_CIVIL),
    CONSTRAINT FK_PESSOAS_FISICAS_CIDADES FOREIGN KEY(ID_CIDADE) REFERENCES CIDADES(ID_CIDADE),
    CONSTRAINT FK_PESSOAS_FISICAS_USUARIOS FOREIGN KEY (LOG_ID_USUARIO) REFERENCES USUARIOS(ID_USUARIO)
);