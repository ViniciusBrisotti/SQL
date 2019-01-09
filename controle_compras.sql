#APLICAÇÃO DE QUERIES QUE ABORDAM OS CONCEITOS FUNDAMENTAIS DE BANCO DE DADOS:



#Criado Banco de Dados
create database controle_compras; 

#Selecionando o banco de dados que iremos trabalhar;
use controle_compras; 

#BORDAGEM DOS CONCEITOS DE CRIAÇÃO DE BANCO DE DADOS, INSERÇÃO O BANCO DE DADOS, ATUALIZAÇÃO E DELETE

#Criando tabela dentro do Banco de Dados
create database compras (id int auto_increment primary key, valor double, data date, observacoes varchar(255), recebido boolean); 

#Inserindo dados
insert into compras(valor, data, observacoes, recebido) values (100.0, '2007-05-12', 'compras de Maio', true);

#Update
update compra set forma_pagt = 'cartao' where forma_pagt is null;

#delete
delete from compras where valor < 30.0;


#Selecionando a tabela que iremos utilizar;
select * from compras; 

#ABORDAGEM DOS CONCEITOS ALTER TABLE, NOT NULL, VALOR DEFAULT E ENUM

#Campo observacoes, por padrão, não poderá mais não ser preenchido.
alter table compras modify observacoes varchar(255) not null; 

#Campo 'recebido' receberá o valor padrao de 1, ou seja, toda vez que uma compra for adicionada será entendida como recebida, a menos que alterem com um valor diferente.
alter table compras modify recebido tinyint(1) default '0';

#Como forma de pagamento, só serão possíveis a iserção de valores pré-determinados, através do enum
alter table compras add column forma_pagt enum ('cartao', 'boleto','dinheiro');

#ABORDAGEM DOS CONCEITOS DE GROUP BY E ORDER BY, ALÉM DE OPERAÇÕES REALIZADAS COM SUM(), AVG() E COUNT();
+-----+----------+------------+------------------------------+----------+------------+--------------+
| id  | valor    | data       | observacoes                  | recebido | forma_pagt | comprador_id |
+-----+----------+------------+------------------------------+----------+------------+--------------+
| 181 |      200 | 2008-02-19 | MATERIAL ESCOLAR             |        1 | cartao     |            1 |
| 182 |     3500 | 2008-05-21 | TELEVISAO                    |        0 | cartao     |            1 |
| 183 |   1576.4 | 2008-04-30 | MATERIAL DE CONSTRUCAO       |        1 | cartao     |            1 |
| 184 |   163.45 | 2008-12-15 | PIZZA PRA FAMILIA            |        1 | cartao     |            1 |
| 185 |     4780 | 2009-01-23 | SALA DE ESTAR                |        1 | cartao     |            1 |
| 186 |   392.15 | 2009-03-03 | QUARTOS                      |        1 | cartao     |            1 |
| 187 |     1203 | 2009-03-18 | QUARTOS                      |        1 | cartao     |            1 |
| 188 |    402.9 | 2009-03-21 | COPA                         |        1 | cartao     |            1 |
| 189 |    54.98 | 2009-04-12 | LANCHONETE                   |        0 | cartao     |            1 |
| 190 |    12.34 | 2009-05-23 | LANCHONETE                   |        0 | cartao     |            1 |
| 191 |    78.65 | 2009-12-04 | LANCHONETE                   |        0 | cartao     |            1 |
| 192 |    12.39 | 2009-01-06 | SORVETE NO PARQUE            |        0 | cartao     |            1 |
| 193 |    98.12 | 2009-07-09 | HOPI HARI                    |        1 | cartao     |            1 |
| 194 |     2498 | 2009-01-12 | COMPRAS DE JANEIRO           |        1 | cartao     |            1 |
| 195 |   3212.4 | 2009-11-13 | COMPRAS DO MES               |        1 | cartao     |            1 |
| 196 |   223.09 | 2009-12-17 | COMPRAS DE NATAL             |        1 | cartao     |            1 |
| 197 |    768.9 | 2009-01-16 | FESTA                        |        1 | cartao     |            1 |
| 198 |    827.5 | 2010-01-09 | FESTA                        |        1 | cartao     |            1 |
| 199 |       12 | 2010-02-19 | SALGADO NO AEROPORTO         |        1 | cartao     |            1 |
| 200 |   678.43 | 2010-05-21 | PASSAGEM PRA BAHIA           |        1 | cartao     |            2 |
| 201 | 10937.12 | 2010-04-30 | CARNAVAL EM CANCUN           |        1 | cartao     |            2 |
| 202 |     1501 | 2010-06-22 | PRESENTE DA SOGRA            |        0 | boleto     |            2 |
| 203 |     1709 | 2010-08-25 | PARCELA DA CASA              |        0 | boleto     |            2 |
| 204 |   567.09 | 2010-09-25 | PARCELA DO CARRO             |        0 | boleto     |            2 |
| 205 |   631.53 | 2010-10-12 | IPTU                         |        1 | boleto     |            2 |
| 206 |   909.11 | 2010-02-11 | IPVA                         |        1 | boleto     |            2 |
| 207 |   768.18 | 2010-04-10 | GASOLINA VIAGEM PORTO ALEGRE |        1 | boleto     |            2 |
| 208 |      434 | 2010-04-01 | RODEIO INTERIOR DE SAO PAULO |        0 | boleto     |            2 |
| 209 |    115.9 | 2010-06-12 | DIA DOS NAMORADOS            |        0 | boleto     |            2 |
| 210 |       98 | 2010-10-12 | DIA DAS CRIAN├çAS            |        0 | boleto     |            2 |
| 211 |    253.7 | 2010-12-20 | NATAL                        |        0 | boleto     |            2 |
| 212 |   370.15 | 2010-12-25 | NATAL                        |        0 | boleto     |            2 |
| 213 |      434 | 2010-12-25 | NATAL                        |        0 | boleto     |            2 |
| 214 |    32.09 | 2011-07-02 | LANCHONETE                   |        1 | boleto     |            2 |
| 215 |   954.12 | 2011-11-03 | SHOW DA IVETE SANGALO        |        1 | boleto     |            2 |
| 216 |     98.7 | 2011-02-07 | LANCHONETE                   |        1 | boleto     |            2 |
| 217 |    213.5 | 2011-09-25 | ROUPAS                       |        0 | boleto     |            2 |
| 218 |   1245.2 | 2011-10-17 | ROUPAS                       |        0 | dinheiro   |            2 |
| 219 |    23.78 | 2011-12-18 | LANCHONETE DO Z├ë            |        1 | dinheiro   |            2 |
| 220 |   576.12 | 2011-09-13 | SAPATOS                      |        1 | dinheiro   |            2 |
| 221 |    12.34 | 2011-07-19 | CANETAS                      |        0 | dinheiro   |            2 |
| 222 |    87.43 | 2011-05-10 | GRAVATA                      |        0 | dinheiro   |            2 |
| 223 |   887.66 | 2011-02-02 | PRESENTE PARA O FILHAO       |        1 | dinheiro   |            2 |
| 224 |      500 | 2016-02-08 | presente da mae              |        1 | dinheiro   |            2 |
| 225 |     1500 | 2017-10-18 | relogio                      |        1 | dinheiro   |            2 |
| 226 |      100 | 2019-01-05 | role com os parça            |        1 | dinheiro   |            2 |
| 228 |      100 | 2010-01-01 | teste                        |        1 | dinheiro   |            2 |
+-----+----------+------------+------------------------------+----------+------------+--------------+
#Calculando a média de todas as compras com datas inferiores a 12/05/2009. 
select avg (valor) from compras where data < '2009-05-12';

+--------------------+
| avg (valor)        |
+--------------------+
| 1296.0141666666664 |
+--------------------+

#Calculando a soma do valor de todas as compras com datas inferiores a 10/10/2010, agrupadas por forma de pagamento. 
select forma_pagt, sum(valor) from compras where data<'2010-10-10' group by forma_pagt;
+------------+------------+
| forma_pagt | sum(valor) |
+------------+------------+
| boleto     |    37636.1 |
| cartao     |        100 |
+------------+------------+

#Calcule a quantidade de compras com datas inferiores a 12/05/2009 e que já foram recebidas.
select count(1) from compras where data <'2009-05-12' and recebido =1;
+----------+
| count(1) |
+----------+
|        9 |
+----------+

#Calcule a soma de todas as compras, agrupadas por forma de pagamento e compra recebida ou não. 
select recebido, forma_pagt, sum(valor) from compras group by forma_pagt, recebido;
+----------+------------+--------------------+
| recebido | forma_pagt | sum(valor)         |
+----------+------------+--------------------+
|        1 | cartao     |           27973.46 |
|        0 | cartao     |            3658.36 |
|        0 | boleto     |  5696.339999999999 |
|        1 | boleto     | 3393.7299999999996 |
|        0 | dinheiro   |            1344.97 |
|        1 | dinheiro   |            3687.56 |
+----------+------------+--------------------+


#ABORDAGEM DOS CONCEITOS JOIN E FOREIGN KEY

#Query para relacionar dados da tabela compradores com a tabela compras, objetivando ter para cada compra um comprador.
select * from compras join compradores on compras.comprador_ID = compradores.id;
+-----+----------+------------+------------------------------+----------+------------+--------------+----+----------+------------------+-------------+
| id  | valor    | data       | observacoes                  | recebido | forma_pagt | comprador_id | id | nome     | endereco         | telefone    |
+-----+----------+------------+------------------------------+----------+------------+--------------+----+----------+------------------+-------------+
| 181 |      200 | 2008-02-19 | MATERIAL ESCOLAR             |        1 | cartao     |            1 |  1 | Mauricio | Rua Vergueiro    | 11 12345678 |
| 182 |     3500 | 2008-05-21 | TELEVISAO                    |        0 | cartao     |            1 |  1 | Mauricio | Rua Vergueiro    | 11 12345678 |
| 183 |   1576.4 | 2008-04-30 | MATERIAL DE CONSTRUCAO       |        1 | cartao     |            1 |  1 | Mauricio | Rua Vergueiro    | 11 12345678 |
| 184 |   163.45 | 2008-12-15 | PIZZA PRA FAMILIA            |        1 | cartao     |            1 |  1 | Mauricio | Rua Vergueiro    | 11 12345678 |
| 185 |     4780 | 2009-01-23 | SALA DE ESTAR                |        1 | cartao     |            1 |  1 | Mauricio | Rua Vergueiro    | 11 12345678 |
| 186 |   392.15 | 2009-03-03 | QUARTOS                      |        1 | cartao     |            1 |  1 | Mauricio | Rua Vergueiro    | 11 12345678 |
| 187 |     1203 | 2009-03-18 | QUARTOS                      |        1 | cartao     |            1 |  1 | Mauricio | Rua Vergueiro    | 11 12345678 |
| 188 |    402.9 | 2009-03-21 | COPA                         |        1 | cartao     |            1 |  1 | Mauricio | Rua Vergueiro    | 11 12345678 |
| 189 |    54.98 | 2009-04-12 | LANCHONETE                   |        0 | cartao     |            1 |  1 | Mauricio | Rua Vergueiro    | 11 12345678 |
| 190 |    12.34 | 2009-05-23 | LANCHONETE                   |        0 | cartao     |            1 |  1 | Mauricio | Rua Vergueiro    | 11 12345678 |
| 191 |    78.65 | 2009-12-04 | LANCHONETE                   |        0 | cartao     |            1 |  1 | Mauricio | Rua Vergueiro    | 11 12345678 |
| 192 |    12.39 | 2009-01-06 | SORVETE NO PARQUE            |        0 | cartao     |            1 |  1 | Mauricio | Rua Vergueiro    | 11 12345678 |
| 193 |    98.12 | 2009-07-09 | HOPI HARI                    |        1 | cartao     |            1 |  1 | Mauricio | Rua Vergueiro    | 11 12345678 |
| 194 |     2498 | 2009-01-12 | COMPRAS DE JANEIRO           |        1 | cartao     |            1 |  1 | Mauricio | Rua Vergueiro    | 11 12345678 |
| 195 |   3212.4 | 2009-11-13 | COMPRAS DO MES               |        1 | cartao     |            1 |  1 | Mauricio | Rua Vergueiro    | 11 12345678 |
| 196 |   223.09 | 2009-12-17 | COMPRAS DE NATAL             |        1 | cartao     |            1 |  1 | Mauricio | Rua Vergueiro    | 11 12345678 |
| 197 |    768.9 | 2009-01-16 | FESTA                        |        1 | cartao     |            1 |  1 | Mauricio | Rua Vergueiro    | 11 12345678 |
| 198 |    827.5 | 2010-01-09 | FESTA                        |        1 | cartao     |            1 |  1 | Mauricio | Rua Vergueiro    | 11 12345678 |
| 199 |       12 | 2010-02-19 | SALGADO NO AEROPORTO         |        1 | cartao     |            1 |  1 | Mauricio | Rua Vergueiro    | 11 12345678 |
| 200 |   678.43 | 2010-05-21 | PASSAGEM PRA BAHIA           |        1 | cartao     |            2 |  2 | Adriano  | Avenida Paulista | 11 22223333 |
| 201 | 10937.12 | 2010-04-30 | CARNAVAL EM CANCUN           |        1 | cartao     |            2 |  2 | Adriano  | Avenida Paulista | 11 22223333 |
| 202 |     1501 | 2010-06-22 | PRESENTE DA SOGRA            |        0 | boleto     |            2 |  2 | Adriano  | Avenida Paulista | 11 22223333 |
| 203 |     1709 | 2010-08-25 | PARCELA DA CASA              |        0 | boleto     |            2 |  2 | Adriano  | Avenida Paulista | 11 22223333 |
| 204 |   567.09 | 2010-09-25 | PARCELA DO CARRO             |        0 | boleto     |            2 |  2 | Adriano  | Avenida Paulista | 11 22223333 |
| 205 |   631.53 | 2010-10-12 | IPTU                         |        1 | boleto     |            2 |  2 | Adriano  | Avenida Paulista | 11 22223333 |
| 206 |   909.11 | 2010-02-11 | IPVA                         |        1 | boleto     |            2 |  2 | Adriano  | Avenida Paulista | 11 22223333 |
| 207 |   768.18 | 2010-04-10 | GASOLINA VIAGEM PORTO ALEGRE |        1 | boleto     |            2 |  2 | Adriano  | Avenida Paulista | 11 22223333 |
| 208 |      434 | 2010-04-01 | RODEIO INTERIOR DE SAO PAULO |        0 | boleto     |            2 |  2 | Adriano  | Avenida Paulista | 11 22223333 |
| 209 |    115.9 | 2010-06-12 | DIA DOS NAMORADOS            |        0 | boleto     |            2 |  2 | Adriano  | Avenida Paulista | 11 22223333 |
| 210 |       98 | 2010-10-12 | DIA DAS CRIAN├çAS            |        0 | boleto     |            2 |  2 | Adriano  | Avenida Paulista | 11 22223333 |
| 211 |    253.7 | 2010-12-20 | NATAL                        |        0 | boleto     |            2 |  2 | Adriano  | Avenida Paulista | 11 22223333 |
| 212 |   370.15 | 2010-12-25 | NATAL                        |        0 | boleto     |            2 |  2 | Adriano  | Avenida Paulista | 11 22223333 |
| 213 |      434 | 2010-12-25 | NATAL                        |        0 | boleto     |            2 |  2 | Adriano  | Avenida Paulista | 11 22223333 |
| 214 |    32.09 | 2011-07-02 | LANCHONETE                   |        1 | boleto     |            2 |  2 | Adriano  | Avenida Paulista | 11 22223333 |
| 215 |   954.12 | 2011-11-03 | SHOW DA IVETE SANGALO        |        1 | boleto     |            2 |  2 | Adriano  | Avenida Paulista | 11 22223333 |
| 216 |     98.7 | 2011-02-07 | LANCHONETE                   |        1 | boleto     |            2 |  2 | Adriano  | Avenida Paulista | 11 22223333 |
| 217 |    213.5 | 2011-09-25 | ROUPAS                       |        0 | boleto     |            2 |  2 | Adriano  | Avenida Paulista | 11 22223333 |
| 218 |   1245.2 | 2011-10-17 | ROUPAS                       |        0 | dinheiro   |            2 |  2 | Adriano  | Avenida Paulista | 11 22223333 |
| 219 |    23.78 | 2011-12-18 | LANCHONETE DO Z├ë            |        1 | dinheiro   |            2 |  2 | Adriano  | Avenida Paulista | 11 22223333 |
| 220 |   576.12 | 2011-09-13 | SAPATOS                      |        1 | dinheiro   |            2 |  2 | Adriano  | Avenida Paulista | 11 22223333 |
| 221 |    12.34 | 2011-07-19 | CANETAS                      |        0 | dinheiro   |            2 |  2 | Adriano  | Avenida Paulista | 11 22223333 |
| 222 |    87.43 | 2011-05-10 | GRAVATA                      |        0 | dinheiro   |            2 |  2 | Adriano  | Avenida Paulista | 11 22223333 |
| 223 |   887.66 | 2011-02-02 | PRESENTE PARA O FILHAO       |        1 | dinheiro   |            2 |  2 | Adriano  | Avenida Paulista | 11 22223333 |
| 224 |      500 | 2016-02-08 | presente da mae              |        1 | dinheiro   |            2 |  2 | Adriano  | Avenida Paulista | 11 22223333 |
| 225 |     1500 | 2017-10-18 | relogio                      |        1 | dinheiro   |            2 |  2 | Adriano  | Avenida Paulista | 11 22223333 |
| 226 |      100 | 2019-01-05 | role com os parça            |        1 | dinheiro   |            2 |  2 | Adriano  | Avenida Paulista | 11 22223333 |
| 228 |      100 | 2010-01-01 | teste                        |        1 | dinheiro   |            2 |  2 | Adriano  | Avenida Paulista | 11 22223333 |
+-----+----------+------------+------------------------------+----------+------------+--------------+----+----------+------------------+-------------+

#Query para especificar a coluna compras que a coluna comprador_id é uma foreign key
alter table compras add foreign key (comprador_id) references compradores(id);

+-----+----------+------------+------------------------------+----------+------------+--------------+
| id  | valor    | data       | observacoes                  | recebido | forma_pagt | comprador_id |
+-----+----------+------------+------------------------------+----------+------------+--------------+
| 181 |      200 | 2008-02-19 | MATERIAL ESCOLAR             |        1 | cartao     |            1 |
| 182 |     3500 | 2008-05-21 | TELEVISAO                    |        0 | cartao     |            1 |
| 183 |   1576.4 | 2008-04-30 | MATERIAL DE CONSTRUCAO       |        1 | cartao     |            1 |
| 184 |   163.45 | 2008-12-15 | PIZZA PRA FAMILIA            |        1 | cartao     |            1 |
| 185 |     4780 | 2009-01-23 | SALA DE ESTAR                |        1 | cartao     |            1 |
| 186 |   392.15 | 2009-03-03 | QUARTOS                      |        1 | cartao     |            1 |
| 187 |     1203 | 2009-03-18 | QUARTOS                      |        1 | cartao     |            1 |
| 188 |    402.9 | 2009-03-21 | COPA                         |        1 | cartao     |            1 |
| 189 |    54.98 | 2009-04-12 | LANCHONETE                   |        0 | cartao     |            1 |
| 190 |    12.34 | 2009-05-23 | LANCHONETE                   |        0 | cartao     |            1 |
| 191 |    78.65 | 2009-12-04 | LANCHONETE                   |        0 | cartao     |            1 |
| 192 |    12.39 | 2009-01-06 | SORVETE NO PARQUE            |        0 | cartao     |            1 |
| 193 |    98.12 | 2009-07-09 | HOPI HARI                    |        1 | cartao     |            1 |
| 194 |     2498 | 2009-01-12 | COMPRAS DE JANEIRO           |        1 | cartao     |            1 |
| 195 |   3212.4 | 2009-11-13 | COMPRAS DO MES               |        1 | cartao     |            1 |
| 196 |   223.09 | 2009-12-17 | COMPRAS DE NATAL             |        1 | cartao     |            1 |
| 197 |    768.9 | 2009-01-16 | FESTA                        |        1 | cartao     |            1 |
| 198 |    827.5 | 2010-01-09 | FESTA                        |        1 | cartao     |            1 |
| 199 |       12 | 2010-02-19 | SALGADO NO AEROPORTO         |        1 | cartao     |            1 |
| 200 |   678.43 | 2010-05-21 | PASSAGEM PRA BAHIA           |        1 | cartao     |            2 |
| 201 | 10937.12 | 2010-04-30 | CARNAVAL EM CANCUN           |        1 | cartao     |            2 |
| 202 |     1501 | 2010-06-22 | PRESENTE DA SOGRA            |        0 | boleto     |            2 |
| 203 |     1709 | 2010-08-25 | PARCELA DA CASA              |        0 | boleto     |            2 |
| 204 |   567.09 | 2010-09-25 | PARCELA DO CARRO             |        0 | boleto     |            2 |
| 205 |   631.53 | 2010-10-12 | IPTU                         |        1 | boleto     |            2 |
| 206 |   909.11 | 2010-02-11 | IPVA                         |        1 | boleto     |            2 |
| 207 |   768.18 | 2010-04-10 | GASOLINA VIAGEM PORTO ALEGRE |        1 | boleto     |            2 |
| 208 |      434 | 2010-04-01 | RODEIO INTERIOR DE SAO PAULO |        0 | boleto     |            2 |
| 209 |    115.9 | 2010-06-12 | DIA DOS NAMORADOS            |        0 | boleto     |            2 |
| 210 |       98 | 2010-10-12 | DIA DAS CRIAN├çAS            |        0 | boleto     |            2 |
| 211 |    253.7 | 2010-12-20 | NATAL                        |        0 | boleto     |            2 |
| 212 |   370.15 | 2010-12-25 | NATAL                        |        0 | boleto     |            2 |
| 213 |      434 | 2010-12-25 | NATAL                        |        0 | boleto     |            2 |
| 214 |    32.09 | 2011-07-02 | LANCHONETE                   |        1 | boleto     |            2 |
| 215 |   954.12 | 2011-11-03 | SHOW DA IVETE SANGALO        |        1 | boleto     |            2 |
| 216 |     98.7 | 2011-02-07 | LANCHONETE                   |        1 | boleto     |            2 |
| 217 |    213.5 | 2011-09-25 | ROUPAS                       |        0 | boleto     |            2 |
| 218 |   1245.2 | 2011-10-17 | ROUPAS                       |        0 | dinheiro   |            2 |
| 219 |    23.78 | 2011-12-18 | LANCHONETE DO Z├ë            |        1 | dinheiro   |            2 |
| 220 |   576.12 | 2011-09-13 | SAPATOS                      |        1 | dinheiro   |            2 |
| 221 |    12.34 | 2011-07-19 | CANETAS                      |        0 | dinheiro   |            2 |
| 222 |    87.43 | 2011-05-10 | GRAVATA                      |        0 | dinheiro   |            2 |
| 223 |   887.66 | 2011-02-02 | PRESENTE PARA O FILHAO       |        1 | dinheiro   |            2 |
| 224 |      500 | 2016-02-08 | presente da mae              |        1 | dinheiro   |            2 |
| 225 |     1500 | 2017-10-18 | relogio                      |        1 | dinheiro   |            2 |
| 226 |      100 | 2019-01-05 | role com os parça            |        1 | dinheiro   |            2 |
| 228 |      100 | 2010-01-01 | teste                        |        1 | dinheiro   |            2 |
+-----+----------+------------+------------------------------+----------+------------+--------------+

#Exibindo o NOME do comprador e o VALOR de todas as compras feitas antes de 09/08/2010.
select nome, valor from compras inner join compradores on compras.comprador_id = compradores.id;
+----------+----------+
| nome     | valor    |
+----------+----------+
| Mauricio |      200 |
| Mauricio |     3500 |
| Mauricio |   1576.4 |
| Mauricio |   163.45 |
| Mauricio |     4780 |
| Mauricio |   392.15 |
| Mauricio |     1203 |
| Mauricio |    402.9 |
| Mauricio |    54.98 |
| Mauricio |    12.34 |
| Mauricio |    78.65 |
| Mauricio |    12.39 |
| Mauricio |    98.12 |
| Mauricio |     2498 |
| Mauricio |   3212.4 |
| Mauricio |   223.09 |
| Mauricio |    768.9 |
| Mauricio |    827.5 |
| Mauricio |       12 |
| Adriano  |   678.43 |
| Adriano  | 10937.12 |
| Adriano  |     1501 |
| Adriano  |     1709 |
| Adriano  |   567.09 |
| Adriano  |   631.53 |
| Adriano  |   909.11 |
| Adriano  |   768.18 |
| Adriano  |      434 |
| Adriano  |    115.9 |
| Adriano  |       98 |
| Adriano  |    253.7 |
| Adriano  |   370.15 |
| Adriano  |      434 |
| Adriano  |    32.09 |
| Adriano  |   954.12 |
| Adriano  |     98.7 |
| Adriano  |    213.5 |
| Adriano  |   1245.2 |
| Adriano  |    23.78 |
| Adriano  |   576.12 |
| Adriano  |    12.34 |
| Adriano  |    87.43 |
| Adriano  |   887.66 |
| Adriano  |      500 |
| Adriano  |     1500 |
| Adriano  |      100 |
| Adriano  |      100 |
+----------+----------+

#Exibindo todas as compras do comprador que possui ID igual a 1.
 select *from compras where comprador_id = 1;
+-----+--------+------------+------------------------+----------+------------+--------------+
| id  | valor  | data       | observacoes            | recebido | forma_pagt | comprador_id |
+-----+--------+------------+------------------------+----------+------------+--------------+
| 181 |    200 | 2008-02-19 | MATERIAL ESCOLAR       |        1 | cartao     |            1 |
| 182 |   3500 | 2008-05-21 | TELEVISAO              |        0 | cartao     |            1 |
| 183 | 1576.4 | 2008-04-30 | MATERIAL DE CONSTRUCAO |        1 | cartao     |            1 |
| 184 | 163.45 | 2008-12-15 | PIZZA PRA FAMILIA      |        1 | cartao     |            1 |
| 185 |   4780 | 2009-01-23 | SALA DE ESTAR          |        1 | cartao     |            1 |
| 186 | 392.15 | 2009-03-03 | QUARTOS                |        1 | cartao     |            1 |
| 187 |   1203 | 2009-03-18 | QUARTOS                |        1 | cartao     |            1 |
| 188 |  402.9 | 2009-03-21 | COPA                   |        1 | cartao     |            1 |
| 189 |  54.98 | 2009-04-12 | LANCHONETE             |        0 | cartao     |            1 |
| 190 |  12.34 | 2009-05-23 | LANCHONETE             |        0 | cartao     |            1 |
| 191 |  78.65 | 2009-12-04 | LANCHONETE             |        0 | cartao     |            1 |
| 192 |  12.39 | 2009-01-06 | SORVETE NO PARQUE      |        0 | cartao     |            1 |
| 193 |  98.12 | 2009-07-09 | HOPI HARI              |        1 | cartao     |            1 |
| 194 |   2498 | 2009-01-12 | COMPRAS DE JANEIRO     |        1 | cartao     |            1 |
| 195 | 3212.4 | 2009-11-13 | COMPRAS DO MES         |        1 | cartao     |            1 |
| 196 | 223.09 | 2009-12-17 | COMPRAS DE NATAL       |        1 | cartao     |            1 |
| 197 |  768.9 | 2009-01-16 | FESTA                  |        1 | cartao     |            1 |
| 198 |  827.5 | 2010-01-09 | FESTA                  |        1 | cartao     |            1 |
| 199 |     12 | 2010-02-19 | SALGADO NO AEROPORTO   |        1 | cartao     |            1 |
+-----+--------+------------+------------------------+----------+------------+--------------+

#Exibindo todas as compras (mas sem os dados do comprador), cujo comprador tenha nome que começa com 'M'.
select compras. * from compras join compradores on compras.comprador_id = compradores.id where nome like 'M%';
+-----+--------+------------+------------------------+----------+------------+--------------+
| id  | valor  | data       | observacoes            | recebido | forma_pagt | comprador_id |
+-----+--------+------------+------------------------+----------+------------+--------------+
| 181 |    200 | 2008-02-19 | MATERIAL ESCOLAR       |        1 | cartao     |            1 |
| 182 |   3500 | 2008-05-21 | TELEVISAO              |        0 | cartao     |            1 |
| 183 | 1576.4 | 2008-04-30 | MATERIAL DE CONSTRUCAO |        1 | cartao     |            1 |
| 184 | 163.45 | 2008-12-15 | PIZZA PRA FAMILIA      |        1 | cartao     |            1 |
| 185 |   4780 | 2009-01-23 | SALA DE ESTAR          |        1 | cartao     |            1 |
| 186 | 392.15 | 2009-03-03 | QUARTOS                |        1 | cartao     |            1 |
| 187 |   1203 | 2009-03-18 | QUARTOS                |        1 | cartao     |            1 |
| 188 |  402.9 | 2009-03-21 | COPA                   |        1 | cartao     |            1 |
| 189 |  54.98 | 2009-04-12 | LANCHONETE             |        0 | cartao     |            1 |
| 190 |  12.34 | 2009-05-23 | LANCHONETE             |        0 | cartao     |            1 |
| 191 |  78.65 | 2009-12-04 | LANCHONETE             |        0 | cartao     |            1 |
| 192 |  12.39 | 2009-01-06 | SORVETE NO PARQUE      |        0 | cartao     |            1 |
| 193 |  98.12 | 2009-07-09 | HOPI HARI              |        1 | cartao     |            1 |
| 194 |   2498 | 2009-01-12 | COMPRAS DE JANEIRO     |        1 | cartao     |            1 |
| 195 | 3212.4 | 2009-11-13 | COMPRAS DO MES         |        1 | cartao     |            1 |
| 196 | 223.09 | 2009-12-17 | COMPRAS DE NATAL       |        1 | cartao     |            1 |
| 197 |  768.9 | 2009-01-16 | FESTA                  |        1 | cartao     |            1 |
| 198 |  827.5 | 2010-01-09 | FESTA                  |        1 | cartao     |            1 |
| 199 |     12 | 2010-02-19 | SALGADO NO AEROPORTO   |        1 | cartao     |            1 |
+-----+--------+------------+------------------------+----------+------------+--------------+

#Exibindo o nome do comprador e a soma de todas as suas compras.
select compradores.nome, sum(valor) from compras join compradores on comprador_id = compradores.id group by compradores.nome;
+----------+--------------------+
| nome     | sum(valor)         |
+----------+--------------------+
| Mauricio |           20016.27 |
| Adriano  | 25738.150000000005 |
+----------+--------------------+






