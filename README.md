Perfeito! Vou adicionar comentários detalhados em cada query, explicando o que cada comando faz dentro do contexto do banco Netflix. Mantendo o padrão Markdown para documentação/TCC:

````markdown
# 📚 Conteúdo da Aula – DML (Data Manipulation Language)

## 1. Introdução
Após a criação das tabelas do banco de dados com **DDL (Data Definition Language)**, é necessário **manipular os dados** para que o sistema possa ser utilizado.  
Para isso, utilizamos a **DML (Data Manipulation Language)**, que permite realizar as operações de **inserção, consulta, atualização e exclusão** de registros.

---

## 2. Inserção de Dados (INSERT)

```sql
INSERT INTO usuario (nome, email, senha)
VALUES ('Maria Silva', 'maria@email.com', '123456'),
       ('João Souza', 'joao@email.com', 'abcdef');
```
-- Insere dois usuários na tabela `usuario`.  
-- Cada linha corresponde a um registro completo com `nome`, `email` e `senha`.  
-- O `id_usuario` é gerado automaticamente pelo `AUTO_INCREMENT`.

```sql
INSERT INTO perfil (id_usuario, nome_perfil, idioma, controle_parental)
VALUES (1, 'Maria Kids', 'pt-BR', TRUE),
       (1, 'Maria Adulto', 'pt-BR', FALSE);
```
-- Cria dois perfis vinculados ao usuário de `id_usuario = 1`.  
-- `Maria Kids` tem controle parental ativo, enquanto `Maria Adulto` não.  
-- Mostra como relacionar tabelas através de `id_usuario` (FK).

---

## 3. Consulta de Dados (SELECT)

```sql
-- Filmes cadastrados
SELECT titulo, ano, duracao FROM filme;
```
-- Retorna todos os filmes cadastrados, exibindo título, ano de lançamento e duração.  
-- Boa prática para verificar o conteúdo da tabela.

```sql
-- Perfis e suas avaliações
SELECT p.nome_perfil, f.titulo, a.nota
FROM avaliacao a
JOIN perfil p ON a.id_perfil = p.id_perfil
JOIN filme f ON a.id_filme = f.id_filme;
```
-- Combina três tabelas para mostrar avaliações de filmes.  
-- `JOIN perfil` associa cada avaliação a um perfil.  
-- `JOIN filme` associa cada avaliação ao filme correspondente.  
-- Retorna o nome do perfil, o título do filme e a nota dada.

---

## 4. Atualização de Dados (UPDATE)

```sql
UPDATE perfil
SET idioma = 'es-ES'
WHERE id_perfil = 3;
```
-- Atualiza o idioma do perfil com `id_perfil = 3` para espanhol.  
-- Demonstra como modificar apenas registros específicos com a cláusula `WHERE`.

```sql
UPDATE filme
SET duracao = 138
WHERE titulo = 'Matrix';
```
-- Corrige a duração do filme `Matrix` para 138 minutos.  
-- Mostra atualização baseada em um critério textual (título).

---

## 5. Exclusão de Dados (DELETE)

```sql
DELETE FROM avaliacao
WHERE id_perfil = 2 AND id_filme = 1;
```
-- Remove a avaliação específica do perfil 2 para o filme 1.  
-- Importante usar condições (`WHERE`) para evitar apagar registros indevidamente.

```sql
DELETE FROM perfil
WHERE id_perfil = 2;
```
-- Exclui o perfil de `id_perfil = 2` do sistema.  
-- Caso existam `FOREIGN KEYS` com `ON DELETE CASCADE`, registros relacionados na tabela `avaliacao` também são removidos automaticamente.

---

## 6. Consultas Relevantes do Projeto

### 6.1 Listar filmes por gênero

```sql
SELECT f.titulo, f.ano, g.nome AS genero
FROM filme f
JOIN genero g ON f.id_genero = g.id_genero
WHERE g.nome = 'Ação'
ORDER BY f.ano DESC;
```
-- Junta tabelas `filme` e `genero` usando `id_genero`.  
-- Filtra apenas filmes do gênero "Ação".  
-- Ordena os resultados do filme mais recente para o mais antigo.

---

### 6.2 Avaliações de um filme

```sql
SELECT f.titulo, p.nome_perfil, a.nota, a.comentario
FROM avaliacao a
JOIN filme f ON a.id_filme = f.id_filme
JOIN perfil p ON a.id_perfil = p.id_perfil
WHERE f.titulo = 'Matrix';
```
-- Mostra todas as avaliações do filme `Matrix`.  
-- Combina tabelas `avaliacao`, `filme` e `perfil` para retornar:  
-- - título do filme  
-- - nome do perfil que avaliou  
-- - nota e comentário.  

---

### 6.3 Perfis de um usuário

```sql
SELECT u.nome AS usuario, p.nome_perfil, p.idioma, p.controle_parental
FROM usuario u
JOIN perfil p ON u.id_usuario = p.id_usuario
WHERE u.email = 'maria@email.com';
```
-- Lista todos os perfis de um usuário específico.  
-- Mostra como vincular tabelas de usuários e perfis para apresentar informações detalhadas de cada perfil.

---

### 6.4 Filmes mais bem avaliados

```sql
SELECT f.titulo, AVG(a.nota) AS media_avaliacao
FROM avaliacao a
JOIN filme f ON a.id_filme = f.id_filme
GROUP BY f.id_filme, f.titulo
HAVING AVG(a.nota) >= 4
ORDER BY media_avaliacao DESC;
```
-- Calcula a **média das avaliações** de cada filme.  
-- `GROUP BY` agrupa avaliações por filme.  
-- `HAVING` filtra apenas filmes com média maior ou igual a 4.  
-- `ORDER BY` organiza do melhor avaliado para o menor.

---

### 6.5 Catálogo por idioma do perfil

```sql
SELECT p.nome_perfil, f.titulo, f.ano
FROM perfil p
CROSS JOIN filme f
WHERE p.idioma = 'pt-BR';
```
-- Gera todas as combinações possíveis entre perfis e filmes (`CROSS JOIN`).  
-- Filtra apenas perfis com idioma português.  
-- Útil para simular o catálogo completo disponível para cada perfil, mesmo que ainda não haja relações explícitas entre perfis e filmes.

---

## 7. Conclusão

Nesta aula, entendemos como utilizar a **DML (Data Manipulation Language)** para:

1. Popular o banco de dados com informações.
2. Consultar registros em tabelas isoladas e relacionadas.
3. Atualizar e excluir dados de forma segura.
4. Construir consultas complexas que simulam cenários reais do sistema Netflix, como catálogo por gênero, perfis de usuários e ranking de filmes mais bem avaliados.

> Com isso, o banco de dados deixa de ser apenas uma estrutura criada pela DDL e passa a ser **funcional e útil para o sistema**.
````

