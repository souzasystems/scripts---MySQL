DROP PROCEDURE IF EXISTS sp_EXCLUI_ZONA;

DELIMITER //

CREATE PROCEDURE sp_EXCLUI_ZONA(
    IN p_ID_ZONA             SMALLINT,
    IN p_LOG_ID_USUARIO      SMALLINT,
    IN p_LOG_MOTIVO_EXCLUSAO VARCHAR(255)
)
BEGIN
    UPDATE ZONAS
       SET LOG_ID_USUARIO      = p_LOG_ID_USUARIO,
           LOG_ROTINA          = 'E',
           LOG_DATA_HORA       = NOW(),
           LOG_MOTIVO_EXCLUSAO = p_LOG_MOTIVO_EXCLUSAO
     WHERE ID_ZONA = p_ID_ZONA;

    DELETE FROM ZONAS
     WHERE ID_ZONA = p_ID_ZONA;
END//

DELIMITER ;
