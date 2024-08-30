DROP VIEW IF EXISTS vw_QUADRAS_BAIRROS;

CREATE VIEW vw_QUADRAS_BAIRROS AS
   SELECT QUADRAS.ID_QUADRA,
          QUADRAS.ID_BAIRRO,
          QUADRAS.DESCRICAO_QUADRA, 
          QUADRAS.COMPLEMENTO,
          QUADRAS.INATIVA,
          BAIRROS.NOME_BAIRRO
     FROM QUADRAS
    INNER JOIN BAIRROS
	   ON BAIRROS.ID_BAIRRO = QUADRAS.ID_BAIRRO;
