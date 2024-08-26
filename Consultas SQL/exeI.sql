DELIMITER //

-- Criação do procedimento `sp_InserirPokemon`
CREATE PROCEDURE sp_InserirPokemon(
    IN p_Nome VARCHAR(40),
    IN p_Natureza_idNatureza INT,
    IN p_numPokedex INT,
    IN p_altura FLOAT,
    IN p_peso FLOAT,
    IN p_nivel INT
)
BEGIN
    -- Inserção de dados na tabela `Pokemon`
    INSERT INTO Pokemon (nome, Natureza_idNatureza, numPokedex, altura, peso, nivel)
    VALUES (p_Nome, p_Natureza_idNatureza, p_numPokedex, p_altura, p_peso, p_nivel);

    -- Verificação da inserção com SELECT
    IF ROW_COUNT() > 0 THEN
        SELECT 'Inserção bem-sucedida!' AS Resultado;
    ELSE
        SELECT 'Falha na inserção.' AS Resultado;
    END IF;
END //

DELIMITER ;

-- Executa o procedimento `sp_InserirPokemon` para adicionar um novo Pokémon
CALL sp_InserirPokemon('Pikachu', 1, 25, 0.4, 6.0, 5);

DELIMITER //

-- Criação da função `fn_CalcularMediaAltura`
CREATE FUNCTION fn_CalcularMediaAltura(p_numPokedex INT)
RETURNS FLOAT
DETERMINISTIC
BEGIN
    DECLARE v_mediaAltura FLOAT;

    -- Cálculo da média de altura
    SELECT AVG(altura) INTO v_mediaAltura
    FROM Pokemon
    WHERE numPokedex = p_numPokedex;

    RETURN v_mediaAltura;
END //

DELIMITER ;

-- Executa a função `fn_CalcularMediaAltura` para obter a média de altura
SELECT fn_CalcularMediaAltura(25) AS MediaAltura;

DELIMITER //

-- Criação do procedimento `sp_AtualizarStatusPokemon`
CREATE PROCEDURE sp_AtualizarStatusPokemon(
    IN p_Pokemon_idPokemon INT,
    IN p_dataHoraAtualizacao DATETIME,
    IN p_vida INT,
    IN p_ataque INT,
    IN p_defesa INT,
    IN p_defesaEspecial INT,
    IN p_ataqueEspecial INT,
    IN p_velocidade INT
)
BEGIN
    -- Atualiza o status do Pokémon na tabela `Status`
    UPDATE Status
    SET vida = p_vida,
        ataque = p_ataque,
        defesa = p_defesa,
        defesaEspecial = p_defesaEspecial,
        ataqueEspecial = p_ataqueEspecial,
        velocidade = p_velocidade
    WHERE Pokemon_idPokemon = p_Pokemon_idPokemon
    AND dataHoraAtualizacao = p_dataHoraAtualizacao;

    -- Verificação da atualização com SELECT
    IF ROW_COUNT() > 0 THEN
        SELECT 'Status atualizado com sucesso!' AS Resultado;
    ELSE
        SELECT 'Nenhuma atualização feita.' AS Resultado;
    END IF;
END //

DELIMITER ;

-- Executa o procedimento `sp_AtualizarStatusPokemon` para atualizar o status
CALL sp_AtualizarStatusPokemon(2, '2024-01-01 12:00:00', 100, 50, 50, 40, 60, 70);




