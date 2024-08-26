README - Projeto Banco de Dados Pokedex
Descrição
Este projeto foi desenvolvido para criar um banco de dados MySQL para gerenciar informações sobre Pokémon. O esquema do banco de dados abrange tabelas para Pokémon, tipos, status, movimentos, evolução, e mais. O objetivo é fornecer uma estrutura sólida para armazenar e consultar dados relacionados ao universo Pokémon.

Estrutura do Banco de Dados
O banco de dados é composto pelas seguintes tabelas:

Natureza: Contém informações sobre as naturezas dos Pokémon.

idNatureza (INT, PK)
nomeNatureza (VARCHAR(40))
Pokemon: Armazena detalhes sobre os Pokémon.

idPokemon (INT, PK)
Natureza_idNatureza (INT, FK)
numPokedex (INT)
nome (VARCHAR(40))
altura (FLOAT)
peso (FLOAT)
nivel (INT)
Status: Registra o status de um Pokémon em um dado momento.

Pokemon_idPokemon (INT, PK, FK)
dataHoraAtualizacao (DATETIME, PK)
vida (INT)
ataque (INT)
defesa (INT)
defesaEspecial (INT)
ataqueEspecial (INT)
velocidade (INT)
Tipos: Contém os tipos de Pokémon.

idTipo (INT, PK)
nomeTipo (VARCHAR(40))
FormaDeEvoluir: Descreve as formas de evolução dos Pokémon.

idFormaEvo (INT, PK)
FormaEvo (CHAR(1))
nomePedra (VARCHAR(40), NULL)
nivelEvoluir (INT, NULL)
Movimento: Armazena informações sobre os movimentos que os Pokémon podem aprender.

idMovimento (INT, PK)
Tipos_idTipo (INT, FK)
nome (VARCHAR(40))
potencia (INT)
precisao (INT)
categoriaDoMovimento (CHAR(1))
descricao (VARCHAR(200))
FormaDeAprender: Define como os Pokémon aprendem movimentos.

idFormaAprender (INT, PK)
ehTreinador (TINYINT)
nomeTreinador (VARCHAR(40), NULL)
ehNivel (TINYINT)
nivelAprender (VARCHAR(40), NULL)
ehDisco (TINYINT)
nomeDisco (VARCHAR(40), NULL)
Deve_Possuir: Relaciona Pokémon com seus tipos.

Pokemon_idPokemon (INT, PK, FK)
Tipos_idTipo (INT, PK, FK)
Pokemon_Aprende_Movimento_Atraves: Relaciona Pokémon com os movimentos que aprendem e como aprendem.

Pokemon_idPokemon (INT, PK, FK)
Movimento_idMovimento (INT, PK, FK)
FormaDeAprender_idFormaAprender (INT, PK, FK)
Evolucao: Relaciona Pokémon com suas evoluções.

idEvolucao (INT, PK)
nomePokemonEvo (VARCHAR(40))
numPokedexEvo (INT)
Pokemon_numPokedex (INT, FK)
FormaDeEvoluir_idFormaEvo (INT, FK)
