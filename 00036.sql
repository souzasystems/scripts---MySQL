DROP VIEW IF EXISTS vw_ESTADOS_PAISES;

DELIMITER //

CREATE VIEW vw_ESTADOS_PAISES AS
    SELECT ESTADOS.ID_ESTADO,
           ESTADOS.ID_PAIS,
           ESTADOS.NOME_ESTADO,
           ESTADOS.SIGLA_ESTADO,
           ESTADOS.CODIGO_IBGE,
           ESTADOS.INATIVO,
           PAISES.NOME_PAIS
      FROM ESTADOS
     INNER JOIN PAISES
        ON PAISES.ID_PAIS = ESTADOS.ID_PAIS//

DELIMITER ;
