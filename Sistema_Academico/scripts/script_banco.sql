-- Durante a aula criamos o seguinte banco de dados com estes parâmetros:
--
-- Nome da banco: sisacademico_5noite
-- Usuário: root
-- Senha: root

-- Tabela de Cursos:
CREATE TABLE tb_curso (
    id_curso INT NOT NULL PRIMARY KEY
    GENERATED ALWAYS AS IDENTITY
    (START WITH 1, INCREMENT BY 1),
    nome_curso VARCHAR(90) NOT NULL,
    tipo_curso VARCHAR(50)
)

-- Tabela de Alunos:
CREATE TABLE tb_aluno(
    id_aluno INT NOT NULL PRIMARY KEY
    GENERATED ALWAYS AS IDENTITY
    (START WITH 1, INCREMENT BY 1),
    ra INT NOT NULL,
    nome VARCHAR(100),
    id_curso INT,
        CONSTRAINT fk_aluno_curso FOREIGN KEY(id_curso)
        REFERENCES tb_curso
)

---------fim do script--------