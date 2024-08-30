DROP PROCEDURE IF EXISTS sp_EXCLUI_CONDOMINIO;

DELIMITER //

CREATE PROCEDURE sp_EXCLUI_CONDOMINIO(
    IN p_ID_CONDOMINIO       SMALLINT,
    IN p_LOG_ID_USUARIO      SMALLINT,
    IN p_LOG_MOTIVO_EXCLUSAO VARCHAR(255)
)
BEGIN
    UPDATE CONDOMINIOS
       SET LOG_ID_USUARIO      = p_LOG_ID_USUARIO,
           LOG_ROTINA          = 'E',
           LOG_DATA_HORA       = NOW(),
           LOG_MOTIVO_EXCLUSAO = p_LOG_MOTIVO_EXCLUSAO
     WHERE ID_CONDOMINIO = p_ID_CONDOMINIO;

    DELETE FROM CONDOMINIOS
     WHERE ID_CONDOMINIO = p_ID_CONDOMINIO;
END//

DELIMITER ;
