-- 1. Inserindo 20 registros na tabela `Natureza`
INSERT INTO Natureza (nomeNatureza)
VALUES 
('Brava'), ('Calma'), ('Timida'), ('Valente'), ('Docil'), ('Corajosa'), ('Relaxada'), 
('Séria'), ('Cautelosa'), ('Alegre'), ('Maligna'), ('Hábil'), ('Neutra'), 
('Agitada'), ('Mansa'), ('Modesta'), ('Ingênua'), ('Decidida'), ('Preguiçosa'), ('Amistosa');

-- 2. Inserindo 20 registros na tabela `Pokemon`
INSERT INTO Pokemon (Natureza_idNatureza, numPokedex, nome, altura, peso, nivel)
VALUES 
(1, 1, 'Bulbasaur', 0.7, 6.9, 5),
(2, 4, 'Charmander', 0.6, 8.5, 8),
(3, 7, 'Squirtle', 0.5, 9.0, 7),
(4, 25, 'Pikachu', 0.4, 6.0, 10),
(5, 10, 'Caterpie', 0.3, 2.9, 3),
(6, 16, 'Pidgey', 0.3, 1.8, 4),
(7, 19, 'Rattata', 0.3, 3.5, 5),
(8, 27, 'Sandshrew', 0.6, 12.0, 7),
(9, 35, 'Clefairy', 0.6, 7.5, 6),
(10, 39, 'Jigglypuff', 0.5, 5.5, 5),
(11, 50, 'Diglett', 0.2, 0.8, 5),
(12, 56, 'Mankey', 0.5, 28.0, 7),
(13, 66, 'Machop', 0.8, 19.5, 9),
(14, 74, 'Geodude', 0.4, 20.0, 6),
(15, 81, 'Magnemite', 0.3, 6.0, 4),
(16, 92, 'Gastly', 1.3, 0.1, 8),
(17, 133, 'Eevee', 0.3, 6.5, 5),
(18, 147, 'Dratini', 1.8, 3.3, 7),
(19, 150, 'Mewtwo', 2.0, 122.0, 70),
(20, 151, 'Mew', 0.4, 4.0, 50);

-- 3. Inserindo 20 registros na tabela `Status`
INSERT INTO Status (Pokemon_idPokemon, dataHoraAtualizacao, vida, ataque, defesa, defesaEspecial, ataqueEspecial, velocidade)
VALUES 
(1, '2024-01-01 12:00:00', 45, 49, 49, 65, 65, 45),
(2, '2024-01-01 12:00:00', 39, 52, 43, 50, 60, 65),
(3, '2024-01-01 12:00:00', 44, 48, 65, 50, 50, 43),
(4, '2024-01-01 12:00:00', 35, 55, 40, 50, 50, 90),
(5, '2024-01-01 12:00:00', 50, 20, 55, 25, 25, 30),
(6, '2024-01-01 12:00:00', 40, 45, 40, 35, 35, 56),
(7, '2024-01-01 12:00:00', 30, 56, 35, 25, 25, 72),
(8, '2024-01-01 12:00:00', 50, 75, 85, 30, 30, 40),
(9, '2024-01-01 12:00:00', 70, 45, 48, 60, 60, 35),
(10, '2024-01-01 12:00:00', 115, 45, 20, 25, 25, 20),
(11, '2024-01-01 12:00:00', 10, 55, 25, 35, 45, 95),
(12, '2024-01-01 12:00:00', 40, 80, 35, 35, 45, 70),
(13, '2024-01-01 12:00:00', 70, 80, 50, 35, 35, 35),
(14, '2024-01-01 12:00:00', 40, 80, 100, 30, 30, 20),
(15, '2024-01-01 12:00:00', 25, 35, 70, 95, 55, 45),
(16, '2024-01-01 12:00:00', 30, 35, 30, 100, 100, 80),
(17, '2024-01-01 12:00:00', 55, 55, 50, 45, 65, 55),
(18, '2024-01-01 12:00:00', 41, 64, 45, 50, 50, 50),
(19, '2024-01-01 12:00:00', 106, 110, 90, 90, 154, 130),
(20, '2024-01-01 12:00:00', 100, 100, 100, 100, 100, 100);


-- 4. Inserindo 18 registros na tabela `Tipos`
INSERT INTO Tipos (nomeTipo)
VALUES 
('Fogo'),
('Água'),
('Grama'),
('Voador'),
('Lutador'),
('Veneno'),
('Elétrico'),
('Terra'),
('Pedra'),
('Psíquico'),
('Gelo'),
('Inseto'),
('Fantasma'),
('Ferro'),
('Dragão'),
('Sombrio'),
('Fada'),
('Normal');
-- 5. Inserindo 20 registros na tabela `FormaDeEvoluir`
INSERT INTO FormaDeEvoluir (FormaEvo, nomePedra, nivelEvoluir)
VALUES 
('N', NULL, 16),
('N', NULL, 32),
('P', 'Pedra do Fogo', NULL),
('N', NULL, 18),
('P', 'Pedra do Trovão', NULL),
('N', NULL, 25),
('N', NULL, 20),
('N', NULL, 22),
('P', 'Pedra da Lua', NULL),
('N', NULL, 16),
('N', NULL, 30),
('P', 'Pedra da Água', NULL),
('N', NULL, 36),
('N', NULL, 28),
('N', NULL, 22),
('P', 'Pedra da Folha', NULL),
('N', NULL, 45),
('P', 'Pedra Solar', NULL),
('N', NULL, 40),
('P', 'Pedra do Gelo', NULL);


-- 6. Inserindo 20 registros na tabela `Movimento`
INSERT INTO `mydb`.`Movimento` (`Tipos_idTipo`, `nome`, `potencia`, `precisao`, `categoriaDoMovimento`, `descricao`) VALUES 
(1, 'Ember', 40, 100, 'E', 'Um ataque de fogo fraco. Pode deixar o adversario com status Burn'),
(1, 'Sunny Day', 0, 100, 'S', 'Causa raios de sol intensos durante 5 turnos'),
(2, 'Hydro Pump', 120, 80, 'E', 'Explode água em alta potência para atingir o inimigo'),
(2, 'Surf', 95, 100, 'E', 'Uma grande onda cai sobre o inimigo'),
(3, 'Sleep Powder', 0, 75, 'S', 'Espalha um pó que pode fazer o inimigo dormir. Deixa o adversário com status Sleep'),
(3, 'Giga Drain', 60, 100, 'E', 'Usuario recupera metade do dano que é causado'),
(4, 'Sky Attack', 140, 90, 'F', 'Ataca com um golpe de asas. Pode causar Flinch no adversário (interrompimento de golpe)'),
(4, 'Mirror Move', 0, 100, 'S', 'Usuário faz o último golpe usado pelo oponente'),
(5, 'Karate Chop', 50, 100, 'F', 'O inimigo é atacado com um golpe certeiro. Tem grandes chances de causar um Critical Hit'),
(5, 'Low Kick', 0, 100, 'F', 'Quanto mais pesado o oponente for, maior será o dano'),
(6, 'Poison Sting', 15, 100, 'F', 'O inimigo é esfaqueado com uma farpa tóxica. Pode deixar o adversário com status Poison'),
(6, 'Acid', 40, 100, 'E', 'O inimigo é pulverizado com um ácido forte que derrete a pele. Pode reduzir SPECIAL DEFENSE do adversário em um estágio'),
(7, 'Thunderbolt', 90, 100, 'E', 'Uma forte explosão elétrica é disparada contra o inimigo. Também pode deixar o inimigo paralisado'),
(7, 'Thunder', 110, 70, 'E', 'Um ataque relâmpago brutal. Pode deixar o inimigo paralisado'),
(8, 'Sand Attack', 0, 100, 'S', 'Muita areia é atirada na cara do inimigo, reduzindo sua precisão'),
(8, 'Earthquake', 100, 100, 'F', 'Desencadeia um terremoto que atinge o Pokémon inimigo'),
(9, 'Rock Polish', 0, 100, 'S', 'O usuário lustra seu corpo para reduzir o arrasto. Pode aumentar drasticamente a estatística de velocidade'),
(9, 'Rock Blast', 25, 90, 'F', 'Atira pedras duras no inimigo. Duas a cinco pedras são lançadas em rápida sucessão'),
(10, 'Psychic', 90, 100, 'E', 'O inimigo é atingido por uma forte força telecinética'),
(10, 'Confusion', 50, 100, 'E', 'O alvo é atingido por uma força telecinética fraca para causar dano. Isso também pode confundir o alvo'),
(11, 'Ice Beam', 90, 100, 'E', 'O inimigo é atingido por um feixe de energia gelado. Também pode congelar o sólido alvo'),
(11, 'Blizzard', 110, 70, 'E', 'Uma nevasca uivante é convocada para atacar o inimigo. Também pode congelar o alvo'),
(12, 'Pin Missile', 25, 95, 'F', 'Alfinetes afiados são disparados contra o inimigo em rápida sucessão. Eles acertaram de duas a cinco vezes seguidas'),
(12, 'Twineedle', 25, 100, 'F', 'O inimigo é esfaqueado duas vezes por um par de ferrões. Também pode envenenar o alvo'),
(13, 'Shadow Ball', 80, 100, 'E', 'Lança uma bolha sombria no inimigo'),
(13, 'Astonish', 30, 100, 'F', 'Ataca o alvo enquanto grita de forma surpreendente'),
(14, 'Meteor Mash', 90, 90, 'F', 'O inimigo é atingido por um soco forte disparado como um meteoro. Também pode aumentar o ataque do usuário'),
(14, 'Magnet Bomb', 60, 100, 'F', 'O usuário lança uma bomba de aço que atinge o alvo. Este ataque não falhará nunca'),
(15, 'Draco Meteor', 130, 90, 'E', 'Os cometas são convocados do céu. O recuo do ataque reduz drasticamente o Ataque Especial do usuário'),
(15, 'Spacial Rend', 100, 95, 'E', 'O usuário rasga o alvo junto com o espaço ao seu redor'),
(16, 'Payback', 50, 100, 'F', 'Se o usuário puder usar este ataque após o ataque do inimigo, seu poder será duplicado'),
(16, 'Assurance', 60, 100, 'F', 'Se o inimigo já tiver sofrido algum dano no mesmo turno, o poder deste ataque é duplicado'),
(17, 'Fairy Lock', 0, 100, 'S', 'Ao bloquear o campo de batalha, o usuário evita que todos os Pokémon fujam durante o próximo turno'),
(17, 'Fairy Wind', 40, 100, 'E', 'O usuário desperta um vento mágico e atinge o alvo com ele'),
(18, 'Headbutt', 70, 100, 'F', 'Coloca a cabeça para fora e avança direto. Isso pode fazer o inimigo recuar'),
(18, 'Mega Kick', 120, 75, 'F', 'O inimigo é atacado por um chute muito forte');	

-- 7. Inserindo 20 registros na tabela `FormaDeAprender`
INSERT INTO FormaDeAprender (ehTreinador, nomeTreinador, ehNivel, nivelAprender, ehDisco, nomeDisco)
VALUES 
(1, 'Brock', 0, NULL, 0, NULL),
(1, 'Misty', 0, NULL, 0, NULL),
(0, NULL, 1, 'Level 16', 0, NULL),
(0, NULL, 1, 'Level 18', 0, NULL),
(0, NULL, 1, 'Level 20', 0, NULL),
(1, 'Erika', 0, NULL, 0, NULL),
(1, 'Koga', 0, NULL, 0, NULL),
(0, NULL, 1, 'Level 25', 0, NULL),
(1, 'Sabrina', 0, NULL, 0, NULL),
(1, 'Blaine', 0, NULL, 0, NULL),
(0, NULL, 1, 'Level 30', 0, NULL),
(0, NULL, 1, 'Level 35', 0, NULL),
(1, 'Giovanni', 0, NULL, 0, NULL),
(1, 'Blue', 0, NULL, 0, NULL),
(0, NULL, 1, 'Level 40', 0, NULL),
(1, 'Cynthia', 0, NULL, 0, NULL),
(0, NULL, 1, 'Level 45', 0, NULL),
(0, NULL, 1, 'Level 50', 0, NULL),
(0, NULL, 0, NULL, 1, 'TM01'),
(0, NULL, 0, NULL, 1, 'TM02');

-- 8. Inserindo 20 registros na tabela `Deve_Possuir`
INSERT INTO Deve_Possuir (Pokemon_idPokemon, Tipos_idTipo)
VALUES 
(1, 3), (1, 5), (2, 1), (2, 5), (3, 2), (3, 5),
(4, 4), (4, 5), (5, 5), (5, 6), (6, 5), (6, 7),
(7, 6), (7, 7), (8, 2), (8, 8), (9, 9), (9, 10),
(10, 11), (10, 12), (11, 13), (11, 14), (12, 15), (12, 16),
(13, 17), (13, 18), (14, 19), (14, 20), (15, 1), (15, 2),
(16, 3), (16, 4), (17, 5), (17, 6), (18, 7), (18, 8),
(19, 9), (19, 10), (20, 11), (20, 12);

-- 9. Inserindo 20 registros na tabela `Pokemon_Aprende_Movimento_Atraves`
INSERT INTO Pokemon_Aprende_Movimento_Atraves (Pokemon_idPokemon, Movimento_idMovimento, FormaDeAprender_idFormaAprender)
VALUES 
(1, 1, 3), (1, 2, 3), (2, 4, 4), (2, 5, 4), (3, 6, 5),
(3, 7, 5), (4, 8, 6), (4, 9, 6), (5, 10, 7), (5, 11, 7),
(6, 12, 8), (6, 13, 8), (7, 14, 9), (7, 15, 9), (8, 16, 10),
(8, 17, 10), (9, 18, 11), (9, 19, 11), (10, 20, 12), (10, 1, 12),
(11, 2, 13), (11, 3, 13), (12, 4, 14), (12, 5, 14), (13, 6, 15),
(13, 7, 15), (14, 8, 16), (14, 9, 16), (15, 10, 17), (15, 11, 17),
(16, 12, 18), (16, 13, 18), (17, 14, 19), (17, 15, 19), (18, 16, 20),
(18, 17, 20), (19, 18, 1), (19, 19, 1), (20, 20, 2), (20, 1, 2);

-- 10. Inserindo 20 registros na tabela `Evolucao`
INSERT INTO Evolucao (nomePokemonEvo, numPokedexEvo, Pokemon_numPokedex, FormaDeEvoluir_idFormaEvo)
VALUES 
('Ivysaur', 2, 1, 1),  -- Bulbasaur evolui para Ivysaur com o nível 16
('Venusaur', 3, 1, 2),  -- Ivysaur evolui para Venusaur com o nível 32
('Charmeleon', 4, 2, 3),  -- Charmander evolui para Charmeleon com o nível 16
('Charizard', 5, 2, 4),  -- Charmeleon evolui para Charizard com o nível 36
('Wartortle', 6, 3, 5),  -- Squirtle evolui para Wartortle com o nível 16
('Blastoise', 7, 3, 6),  -- Wartortle evolui para Blastoise com o nível 36
('Pidgeotto', 8, 4, 7),  -- Pidgey evolui para Pidgeotto com o nível 18
('Pidgeot', 9, 4, 8),  -- Pidgeotto evolui para Pidgeot com o nível 36
('Raticate', 10, 5, 9),  -- Rattata evolui para Raticate com o nível 20
('Sandslash', 11, 7, 10),  -- Sandshrew evolui para Sandslash com o nível 22
('Nidorina', 12, 6, 11),  -- Nidoran♀ evolui para Nidorina com o nível 16
('Nidoqueen', 13, 6, 12),  -- Nidorina evolui para Nidoqueen com a Pedra da Lua
('Nidorino', 14, 13, 13),  -- Nidoran♂ evolui para Nidorino com o nível 16
('Nidoking', 15, 13, 14),  -- Nidorino evolui para Nidoking com a Pedra da Lua
('Clefairy', 16, 15, 15),  -- Cleffa evolui para Clefairy com o nível 16
('Clefable', 17, 15, 16),  -- Clefairy evolui para Clefable com a Pedra da Lua
('Vulpix', 18, 17, 17),  -- Vulpix evolui para Ninetales com a Pedra do Fogo
('Ninetales', 19, 17, 18),  -- Vulpix evolui para Ninetales com a Pedra do Fogo
('Machoke', 20, 18, 19),  -- Machop evolui para Machoke com o nível 28
('Machamp', 21, 18, 20);  -- Machoke evolui para Machamp com a Troca