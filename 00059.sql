DROP PROCEDURE IF EXISTS sp_CONSULTA_ZONAS;

DELIMITER //

CREATE PROCEDURE sp_CONSULTA_ZONAS()
BEGIN
   SELECT ID_ZONA,
          ID_TIPO_ZONA,
          DESCRICAO_ZONA,
          INATIVA,
          AREA_MINIMA,
          TESTADA_MINIMA,
          COMPLEMENTO_AREA_MINIMA,
          IDENTIFICADOR_ZONA,
          DESCRICAO_TIPO_ZONA
     FROM vw_ZONAS_TIPOS_ZONA
    ORDER BY ID_ZONA;
END//

DELIMITER ;
