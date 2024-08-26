-- Exclui a Natureza cujo idNatureza é igual a 3.
DELETE FROM Natureza
WHERE idNatureza = 3;

-- Exclui o Pokémon cujo idPokemon é igual a 5.
DELETE FROM Pokemon
WHERE idPokemon = 5;

-- Remove o movimento da tabela Movimento cujo idMovimento é igual a 10.
DELETE FROM Movimento
WHERE idMovimento = 10;

-- Exclui a forma de evolução cujo idFormaEvo é igual a 2.
DELETE FROM FormaDeEvoluir
WHERE idFormaEvo = 2;

-- Exclui o registro de status de um Pokémon com idPokemon igual a 7 e dataHoraAtualizacao específica.
DELETE FROM Status
WHERE Pokemon_idPokemon = 7 AND dataHoraAtualizacao = '2024-08-20 10:00:00';


-- Primeiro exclui todos os registros de status associados ao Pokémon que tem idPokemon igual a 8.
-- Depois, remove o Pokémon da tabela Pokemon.
DELETE s, p
FROM Status s
JOIN Pokemon p ON s.Pokemon_idPokemon = p.idPokemon
WHERE p.idPokemon = 8;
