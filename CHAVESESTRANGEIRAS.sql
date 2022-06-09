        ***** ABRIR BANCO DE DADOS *****
        use CADASTRO 
        ***** ESTRUTURA DA TABELA ******
        describe gafanhotos       
    
        **** CRIANDO A TABELA ****

        CREATE TABLE gafanhotos (
            id int(11),
            nome varchar(30),
            profissao varchar(20),
            nascimento date,
            sexo enum("M", "F"),
            peso decimal(5,2),
            altura decimal (3,2),
            nacionalidade varchar(20)
        )  DEFAULT CHARSET = utf8

        CREATE TABLE gafanhoto-assite_curso (
            id INT NOT NULL AUTO_INCREMENT,
            data DATE,
            idgafanhoto int,
            idcurso,
            PRIMARAY KEY (id) REFERENCE gafanhotos(id)
        ) DEFAULT CHARSET = utf8

        ******************************************************
        ALTER TABLE gafanhotos ADD COLUMN cursospreferido INT;

        ALTER TABLE gafanhotos
        ADD FOREIGN KEY (cursopreferido)
        REFERENCES cursos(idcurso);

        ******************************************************
        SELECT * FROM gafanhotos;
        SELECT * FROM curso;

        UPDATE gafanhotos SET cursospreferido = '6'
        WHERE id = '1';

        DELETE FROM cursos
        WHERE idcurso = '6';

        SELECT nome, cursopreferido FROM gafanhotos;
        SELECT nome, ano FROM cursos;

        SELECT gafanhotos.nome, cursos.nome, cursos.ano 
        FROM gafanhotos JOIN curso 
        ON cursos.idcurso = gafanhoto.cursopreferido
        ORDER BY gafanhoto.nome;