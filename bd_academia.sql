 create table Professor(
    -> matricula_professor int,
    -> nome varchar(150),
    -> primary key(matricula_professor)
    -> );

create table Aluno(
    -> matricula_aluno int,
    -> curso varchar(200),
    -> instituicao varchar(200),
    -> nome varchar(150),
    -> idade int,
    -> peso float,
    -> altura float,
    -> matricula_professor_fk int,
    -> primary key(matricula_aluno),
    -> foreign key(matricula_professor_fk) references Professor(matricula_professor) ON UPDATE CASCADE
    -> );

create table Treino(
    -> id_treino int,
    -> dia_treino varchar(100),
    -> numero_series int,
    -> numero_rep int,
    -> matricula_professor_fk int,
    -> matricula_aluno_fk int,
    -> primary key(id_treino),
    -> foreign key(matricula_professor_fk) references Professor(matricula_professor) ON UPDATE CASCADE,
    -> foreign key(matricula_aluno_fk) references Aluno(matricula_aluno) ON UPDATE CASCADE
    -> );

create table Exercicio(
    -> id_treino int,
    -> nome varchar(150),
    -> primary key(id_treino,nome),
    -> foreign key(id_treino) references Treino(id_treino) ON UPDATE CASCADE
    -> );