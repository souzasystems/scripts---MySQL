DROP PROCEDURE IF EXISTS sp_ALTERA_DISTRITO;

DELIMITER //

CREATE PROCEDURE sp_ALTERA_DISTRITO(
    IN p_ID_DISTRITO    SMALLINT,
    IN p_ID_CIDADE      SMALLINT,
    IN p_NOME_DISTRITO  VARCHAR(50),
    IN p_INATIVO        BIT,
    IN p_LOG_ID_USUARIO SMALLINT
)
BEGIN
    UPDATE DISTRITOS
       SET ID_CIDADE      = p_ID_CIDADE,
           NOME_DISTRITO  = p_NOME_DISTRITO,
           INATIVO        = p_INATIVO,
           LOG_ID_USUARIO = p_LOG_ID_USUARIO,
           LOG_ROTINA     = 'A',
           LOG_DATA_HORA  = NOW()
     WHERE ID_DISTRITO = p_ID_DISTRITO;
END//

DELIMITER ;
