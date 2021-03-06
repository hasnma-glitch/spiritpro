create database hospital;
use hospital;

/* ex 1 */

create table paciente (
	matricula int not null,
	nome varchar(50),
	endereco varchar(100),
    consultas smallint,
	telefone bigint(20),
	idade smallint,
	codmedico int,
	primary key (matricula)
);

create table medico (
	codmedico int,
	nome varchar(50),
	especialidade varchar(100),
	foreign key (codmedico) references paciente(matricula)
);

/* ex 2 */
/* registro paciente */
insert into paciente values (1, 'Carlos', 'Rua X', 10, 30002001, 50, 1);
insert into paciente values (2, 'Maria', 'Rua A', 20, 20122104, 65, 2);
insert into paciente values (3, 'Antonia', 'Rua B', 15, 30012004, 60, 2);
insert into paciente values (4, 'Ricardo', 'Rua C', 6, 12007000, 40, 3);
insert into paciente values (5, 'Heleno',  'Rua Y', 21, 60004560, 35, 1);

/* registro medico */
insert into medico values (1, 'Valter', 'Neurologia');
insert into medico values (2, 'Charles', 'Psicologia');
insert into medico values (3, 'Leonard', 'Psiquiatria');

/* ex 3 */

select nome, consultas, codmedico from paciente order by consultas DESC;

/* ex 4 */

select paciente.codmedico from paciente left outer join medico  on paciente.consultas = medico.codmedico where especialidade;

/* ex 5 */

select nome, idade, codmedico from paciente where consultas>15 and idade>60;

/* ex 6 */

select avg(idade) from paciente where codmedico=1;
select avg(idade) from paciente where codmedico=2;
select avg(idade) from paciente where codmedico=3;

/* ex 7 */

delete from paciente;
delete from medico;

/* ex 8 */

drop table paciente;
drop table medico;
