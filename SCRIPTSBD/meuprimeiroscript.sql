drop table cad_produtos;
drop table cad_funcionarios;
drop table vendas;

create table cad_produtos(
    id serial primary key,
    nome varchar(100)
);

insert into cad_produtos(nome) values ('Lousa'),('Fone de Ouvido'),('Tênis');

create table cad_funcionarios(
    id serial primary key,
    nome varchar(100),
    idade int
);

insert into cad_funcionarios(nome,idade) values ('Larissa',19),('Junior',15),('Beatriz',25),('Lucas',20),('Giovana',18),('João',19);

create table vendas(
    id serial,
    id_func int,
    id_prod int
);

alter table vendas
    add constraint FkFuncionarioQueVendeu
    foreign key (id_func) references cad_funcionarios(id);
alter table vendas
    add constraint FkProdutoQueVendeu
    foreign key (id_prod) references cad_produtos(id);
--insert correto
insert into vendas(id_func,id_prod) values (5,1),(2,1),(3,3);
--insert com erro
insert into vendas(id_func,id_prod) values (5,0),(1,7),(9,100);



select * from cad_produtos;
select * from cad_funcionarios;
select * from vendas;
