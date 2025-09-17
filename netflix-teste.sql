CREATE DATABASE IF NOT EXISTS `netflix_db`
DEFAULT CHARACTER SET utf8mb4
COLLATE utf8mb4_0900_ai_ci;

USE `netflix_db`;

CREATE TABLE usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE perfil (
    id_perfil INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    nome_perfil VARCHAR(50) NOT NULL,
    idioma VARCHAR(20) DEFAULT 'pt-BR',
    controle_parental BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
		ON DELETE CASCADE                               -- se usuário for apagado, perfis também
		ON UPDATE CASCADE                               -- se id_usuario mudar, atualiza aqui
) ENGINE=InnoDB;

CREATE TABLE genero (
    id_genero INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE filme (
    id_filme INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    ano INT,
    duracao INT,
    id_genero INT,
    FOREIGN KEY (id_genero) REFERENCES genero(id_genero)
		ON DELETE CASCADE                               -- se usuário for apagado, perfis também
		ON UPDATE CASCADE      
) ENGINE=InnoDB;

CREATE TABLE avaliacao (
    id_perfil INT NOT NULL,
    id_filme INT NOT NULL,
    nota INT NOT NULL,
    comentario TEXT,
    PRIMARY KEY (id_perfil, id_filme),
    FOREIGN KEY (id_perfil) REFERENCES perfil(id_perfil)
		ON DELETE CASCADE                               -- se usuário for apagado, perfis também
		ON UPDATE CASCADE,   
    FOREIGN KEY (id_filme) REFERENCES filme(id_filme)
		ON DELETE CASCADE                               -- se usuário for apagado, perfis também
		ON UPDATE CASCADE      
) ENGINE=InnoDB;