# 🎬 População Expandida – Banco Netflix

## Usuários
```sql
INSERT INTO usuario (nome, email, senha) VALUES
('Maria Silva','maria@email.com','123456'),
('João Souza','joao@email.com','abcdef'),
('Carlos Lima','carlos@email.com','xyz123'),
('Ana Beatriz','ana@email.com','pass321'),
('Fernanda Rocha','fernanda@email.com','senha123'),
('Lucas Martins','lucas@email.com','abc123'),
('Beatriz Alves','beatriz@email.com','be123'),
('Ricardo Costa','ricardo@email.com','rc456'),
('Mariana Dias','mariana@email.com','md789'),
('Felipe Oliveira','felipe@email.com','fo321');
```

## Perfis
```sql
INSERT INTO perfil (id_usuario, nome_perfil, idioma, controle_parental) VALUES
(1,'Maria Kids','pt-BR',TRUE),
(1,'Maria Adulto','pt-BR',FALSE),
(2,'João','pt-BR',FALSE),
(3,'Carlos Junior','pt-BR',TRUE),
(3,'Carlos Adulto','pt-BR',FALSE),
(4,'Ana Beatriz','pt-BR',FALSE),
(5,'Fernanda','pt-BR',FALSE),
(6,'Lucas Kids','pt-BR',TRUE),
(6,'Lucas Adulto','pt-BR',FALSE),
(7,'Beatriz','pt-BR',FALSE),
(8,'Ricardo','pt-BR',FALSE),
(9,'Mariana','pt-BR',FALSE),
(10,'Felipe','pt-BR',FALSE),
(2,'João Kids','pt-BR',TRUE),
(4,'Ana Kids','pt-BR',TRUE),
(5,'Fernanda Teen','pt-BR',TRUE),
(7,'Beatriz Teen','pt-BR',TRUE),
(8,'Ricardo Teen','pt-BR',TRUE),
(9,'Mariana Teen','pt-BR',TRUE),
(10,'Felipe Teen','pt-BR',TRUE);
```

## Gêneros
```sql
INSERT INTO genero (nome) VALUES
('Ação'),
('Comédia'),
('Drama'),
('Terror'),
('Fantasia');
```

## Filmes (50 filmes)
```sql
INSERT INTO filme (titulo, ano, duracao, id_genero) VALUES
('Matrix',1999,136,1),
('Interestelar',2014,169,3),
('O Senhor dos Anéis',2001,178,5),
('A Vida é Bela',1997,116,3),
('It: A Coisa',2017,135,4),
('O Auto da Compadecida',2000,100,2),
('Vingadores: Ultimato',2019,181,1),
('Toy Story',1995,81,2),
('O Rei Leão',1994,88,5),
('Clube da Luta',1999,139,3),
('Pulp Fiction',1994,154,3),
('Harry Potter e a Pedra Filosofal',2001,152,5),
('Corra!',2017,104,4),
('A Chegada',2016,116,3),
('Deadpool',2016,108,1),
('Como Treinar Seu Dragão',2010,98,5),
('Shrek',2001,90,2),
('Coringa',2019,122,3),
('Jurassic Park',1993,127,1),
('O Hobbit',2012,169,5),
('A Origem',2010,148,1),
('Esqueceram de Mim',1990,103,2),
('O Exorcista',1973,132,4),
('O Poderoso Chefão',1972,175,3),
('Os Incríveis',2004,115,2),
('Guardiões da Galáxia',2014,121,1),
('Divertida Mente',2015,95,2),
('O Silêncio dos Inocentes',1991,118,4),
('Capitão América: Guerra Civil',2016,147,1),
('Encanto',2021,102,5),
('Homem-Aranha: No Aranhaverso',2018,117,1),
('Meu Malvado Favorito',2010,95,2),
('Coraline',2009,100,4),
('Liga da Justiça',2017,120,1),
('A Bela e a Fera',1991,84,5),
('Deadpool 2',2018,119,1),
('Thor: Ragnarok',2017,130,1),
('Minions',2015,91,2),
('O Labirinto do Fauno',2006,118,5),
('It: Capítulo 2',2019,169,4),
('Guardiões da Galáxia Vol.2',2017,136,1),
('Moana',2016,107,5),
('Homem de Ferro',2008,126,1),
('Procurando Nemo',2003,100,5),
('Um Lugar Silencioso',2018,90,4),
('Deadpool 3',2024,120,1),
('Pantera Negra',2018,134,1),
('Cavaleiros do Zodíaco',1986,114,5),
('Os Vingadores',2012,143,1),
('Detetive Chinatown',2015,105,2);
```

## Avaliações (30 avaliações variadas)
```sql
INSERT INTO avaliacao (id_perfil, id_filme, nota, comentario) VALUES
(1,1,5,'Amei!'),
(1,2,4,'Muito bom!'),
(2,1,4,'Legal!'),
(3,3,5,'Incrível!'),
(4,4,5,'Emocionante'),
(5,6,4,'Engraçado'),
(6,7,5,'Sensacional!'),
(7,8,4,'Divertido'),
(8,9,5,'Clássico!'),
(9,10,3,'Bom filme'),
(10,11,5,'Excelente!'),
(2,12,4,'Ótimo!'),
(3,13,5,'Assustador!'),
(4,14,4,'Interessante'),
(5,15,5,'Muito bom!'),
(6,16,4,'Aventura incrível'),
(7,17,5,'Muito engraçado'),
(8,18,4,'Muito bom!'),
(9,19,5,'Clássico do cinema'),
(10,20,4,'Boa adaptação'),
(1,21,5,'Muito bom!'),
(2,22,4,'Divertido'),
(3,23,5,'Terror clássico'),
(4,24,5,'Obra-prima'),
(5,25,4,'Ação incrível'),
(6,26,5,'Muito divertido'),
(7,27,4,'Emocionante'),
(8,28,5,'Excelente!'),
(9,29,4,'Muito bom'),
(10,30,5,'Fantástico!');
```

> 💡 Com essa população, o banco tem: **10 usuários, 20 perfis, 5 gêneros, 50 filmes e 30 avaliações** – perfeito para demonstrar **consultas complexas, ranking de filmes e filtros por perfil/gênero**.

---

# 🏋️‍♂️ Exercícios Avançados

1. Listar os **5 filmes mais bem avaliados** do gênero “Ação”.  
2. Mostrar todos os **perfis com controle parental ativo** e os filmes que podem assistir.  
3. Atualizar a **nota média** de um filme após uma nova avaliação.  
4. Listar os filmes que **nenhum perfil avaliou ainda**.  
5. Criar um relatório de **média de avaliação por gênero**.  
6. Gerar o **catálogo completo** para todos os perfis usando `CROSS JOIN`.  
7. Listar **todos os filmes de cada gênero** junto com o **nome do perfil que mais os avaliou**.  

> Esses exercícios permitem aplicar SELECTs complexos, JOINs, funções agregadas e filtragem realista, simulando relatórios de sistemas de streaming como Netflix.
````
