DROP PROCEDURE IF EXISTS sp_ALTERA_ESTADO;

DELIMITER //

CREATE PROCEDURE sp_ALTERA_ESTADO (
    IN p_ID_ESTADO      SMALLINT,
    IN p_ID_PAIS        SMALLINT,
    IN p_NOME_ESTADO    VARCHAR(20),
    IN p_SIGLA_ESTADO   CHAR(2),
    IN p_CODIGO_IBGE    TINYINT,
    IN p_INATIVO        BIT,
    IN p_LOG_ID_USUARIO SMALLINT
)
BEGIN
    UPDATE ESTADOS
       SET ID_PAIS        = p_ID_PAIS,
           NOME_ESTADO    = p_NOME_ESTADO,
           SIGLA_ESTADO   = p_SIGLA_ESTADO,
           CODIGO_IBGE    = p_CODIGO_IBGE,
           INATIVO        = p_INATIVO,
           LOG_ID_USUARIO = p_LOG_ID_USUARIO,
           LOG_ROTINA     = 'A',
           LOG_DATA_HORA  = NOW()
     WHERE ID_ESTADO = p_ID_ESTADO;
END//

DELIMITER ;
