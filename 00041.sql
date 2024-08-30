DROP PROCEDURE IF EXISTS sp_ALTERA_TIPO_ZONA;

DELIMITER //

CREATE PROCEDURE sp_ALTERA_TIPO_ZONA(
    IN p_ID_TIPO_ZONA        TINYINT,
    IN p_DESCRICAO_TIPO_ZONA VARCHAR(25),
    IN p_LOG_ID_USUARIO      SMALLINT
)
BEGIN
    UPDATE TIPOS_ZONA
       SET DESCRICAO_TIPO_ZONA = p_DESCRICAO_TIPO_ZONA,
           LOG_ID_USUARIO      = p_LOG_ID_USUARIO,
           LOG_ROTINA          = 'A',
           LOG_DATA_HORA       = CURRENT_TIMESTAMP
     WHERE ID_TIPO_ZONA = p_ID_TIPO_ZONA;
END//

DELIMITER ;
