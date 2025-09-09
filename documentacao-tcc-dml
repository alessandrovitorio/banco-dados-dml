## 5. Manipulação de Dados – DML

### 5.1 Inserção de Dados (INSERT)

```sql
INSERT INTO usuario (nome, email, senha)
VALUES ('Maria Silva', 'maria@email.com', '123456'),
       ('João Souza', 'joao@email.com', 'abcdef');
````

```sql
INSERT INTO perfil (id_usuario, nome_perfil, idioma, controle_parental)
VALUES (1, 'Maria Kids', 'pt-BR', TRUE),
       (1, 'Maria Adulto', 'pt-BR', FALSE);
```

---

### 5.2 Consulta de Dados (SELECT)

```sql
SELECT titulo, ano, duracao FROM filme;

SELECT p.nome_perfil, f.titulo, a.nota
FROM avaliacao a
JOIN perfil p ON a.id_perfil = p.id_perfil
JOIN filme f ON a.id_filme = f.id_filme;
```

---

### 5.3 Atualização de Dados (UPDATE)

```sql
UPDATE perfil
SET idioma = 'es-ES'
WHERE id_perfil = 3;
```

```sql
UPDATE filme
SET duracao = 138
WHERE titulo = 'Matrix';
```

---

### 5.4 Exclusão de Dados (DELETE)

```sql
DELETE FROM avaliacao
WHERE id_perfil = 2 AND id_filme = 1;
```

```sql
DELETE FROM perfil
WHERE id_perfil = 2;
```

---

### 5.5 Considerações Técnicas

| Comando | Função Principal                 | Exemplo                                   |
| ------- | -------------------------------- | ----------------------------------------- |
| INSERT  | Inserir novos registros          | `INSERT INTO usuario (...) VALUES (...);` |
| SELECT  | Consultar dados                  | `SELECT * FROM usuario;`                  |
| UPDATE  | Atualizar informações existentes | `UPDATE filme SET duracao=120;`           |
| DELETE  | Remover registros                | `DELETE FROM perfil WHERE id=1;`          |

---

### 5.6 Consultas Relevantes do Projeto

#### Consulta 1 – Listar filmes por gênero

```sql
SELECT f.titulo, f.ano, g.nome AS genero
FROM filme f
JOIN genero g ON f.id_genero = g.id_genero
WHERE g.nome = 'Ação'
ORDER BY f.ano DESC;
```

---

#### Consulta 2 – Avaliações de um filme

```sql
SELECT f.titulo, p.nome_perfil, a.nota, a.comentario
FROM avaliacao a
JOIN filme f ON a.id_filme = f.id_filme
JOIN perfil p ON a.id_perfil = p.id_perfil
WHERE f.titulo = 'Matrix';
```

---

#### Consulta 3 – Perfis de um usuário

```sql
SELECT u.nome AS usuario, p.nome_perfil, p.idioma, p.controle_parental
FROM usuario u
JOIN perfil p ON u.id_usuario = p.id_usuario
WHERE u.email = 'maria@email.com';
```

---

#### Consulta 4 – Filmes mais bem avaliados

```sql
SELECT f.titulo, AVG(a.nota) AS media_avaliacao
FROM avaliacao a
JOIN filme f ON a.id_filme = f.id_filme
GROUP BY f.id_filme, f.titulo
HAVING AVG(a.nota) >= 4
ORDER BY media_avaliacao DESC;
```

---

#### Consulta 5 – Catálogo por idioma do perfil

```sql
SELECT p.nome_perfil, f.titulo, f.ano
FROM perfil p
CROSS JOIN filme f
WHERE p.idioma = 'pt-BR';
```
