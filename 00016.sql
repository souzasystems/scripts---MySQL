DROP VIEW IF EXISTS vw_DISTRITOS_CIDADES;

DELIMITER //

CREATE VIEW vw_DISTRITOS_CIDADES AS
   SELECT DISTRITOS.ID_DISTRITO,
          DISTRITOS.ID_CIDADE,
          DISTRITOS.NOME_DISTRITO,
          DISTRITOS.INATIVO,
          CIDADES.NOME_CIDADE
     FROM DISTRITOS
    INNER JOIN CIDADES
       ON CIDADES.ID_CIDADE = DISTRITOS.ID_CIDADE//

DELIMITER ;