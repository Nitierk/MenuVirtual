Create table Restaurante (
 RESTAUID int identity (1,1) Primary key,
 RESTANOME varchar(200) not null,
 RESTAPRECO float not null,
 RESTADESCRICAO varchar(300) null,
 RESTAPREPROMOCAO float null,
 RESTACATEGORIA varchar (300) not null,
)

select * from Restaurante

insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Calabresa na Cacha�a','28.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Calabresa Espiral','34.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Brochete Frango(Espeto)','13.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Brochete Carne(C/Barbecue Espeto)','15.90','Petiscos')

insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Costela De Porco(Barbecue)','44.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Picanha Fatiada C/P�o De Alho','58.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Carne Do Sol','35.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Carne Do Sol(C/Macaxeira ou Fritas)','42.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Carne Do Sol Na Nata','46.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values ('Filezinho Aperitivo','41.90','(Molho Madeira,Torradas ou Fritas ou Macaxeira)','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Filezinho Molho De Queijo','44.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Fil� De Frango Na Pedra','41.90','Petiscos')

insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Caldinho De Feij�o','7.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Caldinho De Frutos Do Mar','10.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Bolinho De Carne Do Sol C/Calabresa','18.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Bolinho De Bacalhau','24.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Bolinho De Peixe','24.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Bolinho De Aratu','25.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Bolinho De Bob� De Camar�o','25.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Queijo a Milanesa','21.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Macaxeira Frita','10.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Batata Frita','14.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values ('Batatinha Especial','19.90','(CHEDDAR/BACON','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values ('Batatinha Boa Da P�ga','25.90','(CALABRESA/MUSARELLA','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('KIBE','18.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Camar�o C/Catupiry Na Tapioca','34.90','Petiscos')

insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Frango a Passarinho','32.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Coxinha de Asa','23.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Codorna','12.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Isca De Frango','29.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Isca De Peixe','34.50','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Arrumadinho Tradicinonal','36.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Arrumainho De Aratu','41.90','Petiscos')

insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Camar�o � Milanesa','44.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Camar�o Na (F.) Panka','46.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Camar�o Alho e �leo','44.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Camar�o Crocante Praia Do Aba�s','47.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Camar�o Praia Do Saco','47.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Peixe Frito(Posta)','52.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Peixe Frito(Inteiro)','49.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Aguilhinha Frita(Sob.Consulta)','31.90','Petiscos')

insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Guaiamum(M)','8.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Guaiamum(G)','14.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Caranguejo','5.50','Petiscos')

insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Pastel De Carne','6.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Pastel Frango','6.50','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Frango C/Catupiry','7.50','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Pastel De Queijo','6.50','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Pastel De Aratu','8.50','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Pastel De Pizza','6.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Pastel Romeu e Julieta','6.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Pastel De Carne De Costela','7.50','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Pastel De Camar�o','9.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Mini Pastel de Camar�o C/Cream Cheese','18.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Mini Pastel de Salm�o C/Cream Cheese','21.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Mini Pastel de Costela C/Queijo','17.90','Petiscos')


Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('FIL� DE FRANGO � CUBANA', '66.90', ' � MILANESA BATATA PALHA , ARROZ A GREGA, BANANA ABACAXI � MILANESA, SALADA','REFEI��ES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('FIL� DE FRANGO � PARMEGIANA', '66.90', '� MILANESA, PUR�, MUSSARELA, PRESUNTO, MOLHO DE TOMATE, ARROZ, SALADA','REFEI��ES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('FIL� DE FRANGO COM FRITAS', '66.90', 'GRELHADO, BATATA FRITA, ARROZ, FEIJ�O, SALADA, FAROFA','REFEI��ES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('FIL� DE FRANGO COM LEGUMES', '66.90', 'GRELHADO, LEGUMES DIVERSOS, ARROZ, FEIJ�O, FAROFA','REFEI��ES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('FIL� DE FRANGO AO LUNARY', '66.90', 'REFOGADO, MOLHO BRANCO, REQUEIJ�O CREMOSO, BATATA PALHA, SALADA', 'REFEI��ES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('MEDALH�O DE FRANGO AO MOLHO MADEIRA', '68.90', 'GRELHADO C/ BACON, MOLHO MADEIRA, ARROZ � PIAMONTESE', 'REFEI��ES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('FIL� FRANGO NA PEDRA', '66.90', 'GRELHADO, MACAXEIRA OU FRITAS, FEIJ�O TROPEIRO, VINAGRETE, ARROZ, FAROFA', 'REFEI��ES')



Insert Restaurante( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('FIL� � CUBANA', '77.90', 'A MILANESA, BATATA PALHA, ARROZ � GREGA, BANANA OU ABACAXI � MILANESA, SALADA', 'REFEI��ES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values
('FILE � PARMEGIANA', '77.90', 'A MILANESA, PUR�, MUSSARELA, PRESUNTO, MOLHO DE TOMATE, ARROZ, SALADA', 'REFEI��ES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values  
('FIL� � CAVALO', '77.90', 'GRELHADO, BATATA FRITA, ARROZ, FEIJ�O, FAROFA, SALADA, OVO', 'REFEI��ES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('FIL� COM FRITAS', '77.90', 'GRELHADO, BATATA FRITA, ARROZ, FEIJ�O, FAROFA, SALADA','REFEI��ES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('FIL� COM LEGUMES', '77.80', 'GRELHADO, LEGUMES DIVERSOS, ARROZ, FEIJ�O, FAROFA','REFEI��ES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('MEDALH�O C/ LINGUINE AO M.QUEIJO', '82.90', 'MEDALH�O DE FIL�, BACON, MOLHO MADEIRA, LINGUINE M, QUEIJO', 'REFEI��ES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values
('MEDALH�O AO MOLHO MADEIRA', '79.90', 'MEDALH�O DE FIL�, BACON, FEIJ�O, ARROZ � GREGA, MOLHO MADEIRA', 'REFEI��ES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('MEDALH�O AO MOLHO CABERNET', '82.90', 'MEDALH�O DE FIL�, M.CABERNET, ARROZ � PIOMONTESE, BATATAS', 'REFEI��ES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values
('PICANHA NA PEDRA', '79.90', 'GRELHADO, MACAXEIRA OU FRITAS, FEIJ�O TROPEIRO, ARROZ, VINAGRETE, FAROFA', 'REFEI��ES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('CARNE DO SOL � MODA DA CASA', '79.90', 'GRELHADA, MACAXEIRA OU FRITAS, BAI�O DE DOIS, FAROFA, VINAGRETE', 'REFEI��ES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('MIX DE GRELHADOS', '77.90', 'BOI, FRANGO, TOSCANA, BAI�O DE DOIS, MACAXEIRA OU FRITAS, FAROFA, VINAGRETE', 'REFEI��ES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('CARNE DO SOL C/ PIR�O DE LEITE', '77.90', 'GRELHADO, PIR�O DE LEITE, FEIJ�O TROPEIRO, ARROZ, FRITAS OU MACAXEIRA, FAROFA, VINAGRETE', 'REFEI��ES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('CUPIM NA CHAPA', '77.90', 'AO FORNO, SELADO NA MATEIGA DE GARRAFA, FEIJ�O TROPEIRO, ARROZ, FAROFA, VINAGRETE, FRITAS OU MACAXEIRA', 'REFEI��ES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('MEDALH�O AO MOLHO DE QUEIJO', '82.90', 'GRELHADO, MOLHO DE QUEIJO, ARROZ DE BR�COLIS, BATATA FRITA','REFEI��ES')

Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Peixe Frito', '76.90','POSTA DE PEIXE FRITO,ARROZ,FEIJ�O,VINAGRETE,FAROFA','REFEI��ES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Peixe ao Molho de Camar�o', '86.90','POSTA DE PEIXE FRITO,MOLHO DE TOMATE COM CAMAR�O,ARROZ,FEIJ�O,VINAGRETE,FAROFA','REFEI��ES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Peixe Escabeche', '79.90','POSTA DE PEIXE FRITO,MOLHO ESCABECHE,ARROZ,FEIJ�O,FAROFA,VINAGRETE','REFEI��ES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Fil� De Pescada � Belle Meuniere', '84.90','FIL� DE PESCADA,CHAMPIGNON,CAMAR�O,ARROZ �`PIAMONTESE,BATATA SOUT�','REFEI��ES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Fil� De Pescada C/Legumes', '82.90','FIL� DE PESCADA,LEGUMES SALTEADOS NA MANTEIGA,ARROZ,SALADA','REFEI��ES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Salm�o � Bella Meuriere', '98.90','SALM�O GRELHADO,ALCAPARRAS,CHAMPIGNON,CAMAR�O,ARROZ � PIAMONTESE,BATATA SOUT�','REFEI��ES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Chapa De Frutas Do Mar','98.90','SALM�O,PESCADA,CAMAR�O.PEIXE GRELHADO,LEGUMES,SALTEADOS,FRITAS,ARROZ C/BR�COLIS,FAROFA','REFEI��ES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Chapa Terra e Mar', '94.90','BOI,FRANGO,CAMAR�O,PEIXE GRELHADO,LEGUMES SALTEADOS,FRITAS,ARROZ C/BR�COLIS,FAROFA','REFEI��ES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Peixe Frito C/Molho De Camar�o Porto De Areia ', '92.90','PEIXE FRITO INTEIRO,MOLHO DE CAMAR�O NO C�CO,ARROZ,FEIJ�O,VINAGRETE,FAROFA','REFEI��ES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Fil� De Pescada C/Arroz De Aratu','94.90','FIL� DE PESCADA FRITO,ARROZ DE MOQUECA DE ARATU,VINAGRETE,FAROFA','REFEI��ES')

Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Moqueca Delicia (Camar�o/Aratu)', '86.90','CAMAR�O E ARATU NO LEITE DE C�CO,DEND�,PIR�O,ARROZ,FAROFA,VINAGRETE','REFEI��ES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Moqueca De Aratu', '82.90','ARATU NO LEITE DE C�CO,DEND�,PIR�O,ARROZ,FAROFA,VINAGRETE','REFEI��ES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Moqueca De Aratu', '82.90','ARATU NO LEITE DE C�CO,DEND�,PIR�O,ARROZ,FAROFA,VINAGRETE','REFEI��ES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Moqueca Tril�cia(Camar�o/Aratu/Caranguejo', '86.90','CAMAR�O,ARATU E CARANGUEIJO NO LEITE DE C�CO,DEND�,PIR�O,ARROZ,FAROFA,VINAGRETE','REFEI��ES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Moqueca De Caranguejo', '78.90','CARANGUEJO NO LEITE DE C�CO,DEND�,PIR�O,ARROZ,FAROFA,VINAGRETE','REFEI��ES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Mariscada', '92.90','OSTRA,SURGIU,ARATU,SIRI,CAMAR�O,PEIXE,LULA NO C�CO,DEND�,PIR�O,ARROZ,FAROFA,VINAGRETE','REFEI��ES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Moqueca De Camar�o', '86.90','CAMAR�O NO LEITE DE C�CO,DEND�,PIR�O,ARROZ,FAROFA,VINAGRETE','REFEI��ES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Pir�o De Camar�o', '86.90','PIR�O JUNTO C/CAMAR�O NO LEITE DE C�CO,DEND�,ARROZ,FAROFA,VINAGRETE','REFEI��ES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Aratu Refogado', '78.90','ARATU REFOGADO NA AZEITE E TEMPEIROS,ARROZ,FAROFA,VINAGRETE','REFEI��ES')

Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Camar�o Internacional','82.90','CAMAR�O AO M.CATUPIRY,CREME DE LEITE,ARROZ AO CREME C/ERVILHA,PRESUNTO, B PALHA','REFEI��ES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Camar�o C/Catupiry Ao Lunary','78.90','CAMAR�O AO M.CATUPIRY,PUR� GRATINADO,ARROZ BRANCO','REFEI��ES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Camar�o Tropicalissimo','55.90','CAMAR�O FLABADO,MOLHO BRANCO CREMOSO,SERVIDO NO ABACAXI','REFEI��ES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Camar�o �`Parmegiana','85.90','CAMAR�O A MILANESA,ARROZ � GREGA, BATATA PALHA,M.DE TOMATE E QUEIJO','REFEI��ES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Camar�o � Grega','81.90','CAMAR�O A MILANESA,ARROZ � GREGA,BATATA PALHA,M.DE TOMATE E QUEIJO','REFEI��ES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Linguine Ao M.Pomodoro de Camar�o','59.90', 'MOLHO DE TOMATE','REFEI��ES')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Linguine � Bolonhesa','49.90','REFEI��ES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Penne ao M.Branco C/Camar�o','59.90', 'MOLHO BRANCO','REFEI��ES')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Linguine ao M.Queijo C/Camar�es Grelhado','59.90', 'MOLHO BRANCO,REQUEIJ�O CREMOSO,AZEITE DE ERVAS','REFEI��ES')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Espaguete De Camar�o Especial','62.90', 'AO ALHO E OLEO,CAMAR�O,TOMATES SECOS,AZEITONAS,ALCAPARRA,SALSA','REFEI��ES')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Espaguete a Moda Lunary','56.90','TIRAS DE FIL� COM MOLHO MADEIRA E CREME DE LEITE','REFEI��ES')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Arroz De Camar�o(invidual)','43.90','REFEI��ES')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Arroz De Camar�o(P/2 Pessoas','69.90','REFEI��ES')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Arroz De Frutos Do Mar(invidual)','43.90','REFEI��ES')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Arroz De Frutos Do Mar(P/2 Pessoas)','69.90','REFEI��ES')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Arroz De Fil�(invidual)','39.90','REFEI��ES')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Arroz De Fil�(P/2 Pessoas)','64.90','REFEI��ES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Skol','6.99','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Skol Puro Malte','8.40','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Amtarctica','8.40','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Brahma','8.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Bohemia','8.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Brahma D.Malte','9.90','Bebidas')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('BudWeiser 600ML','12.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Original 600ML','12.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Spaten 600ML','12.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Stella Artois 600ML','13.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Beck�S 600ML','15.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Colorado 600ML','19.90','Bebidas')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Malzebier','7.00','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Cerveja S/�LCOOL','7.50','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('BudWeiser','9.50','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Stella Artois','9.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Corona','10.50','Bebidas')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Cacha�a Mineira','6.30','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Reserva do Bar�o','6.30','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Ipioca/Pit�','3.50','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Resera Do Bar�o(Garrafa)','62.00','Bebidas')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Guaran�','4.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Cola-Cola ','4.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Fanta','4.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Soda','4.90','Bebidas')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Guaran�(EM LATA)','5.00','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Cola-Cola(EM LATA)','5.00','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Schwepps(EM LATA)','5.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('T�nica(EM LATA)','5.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Pepsi/Fanta/Soda(EM LATA)','5.00','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Pepsi Black-Zero(EM LATA)','5.00','Bebidas')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Old Parr(12 anos)','14.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Ballantines(12 anos)','12.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Johnnie Red(8 anos)','11.00','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Cavalo Branco(8 anos)','9.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Bell�S','6.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Teacher�S','6.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Black White','7.90','Bebidas')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Old Parr (Club Do Whisky)(12 anos)','210.00','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Chivas(Club Do Whisky)(12 anos)','190.00','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Ballantines(Club Do Whisky)(12 anos)','170.00','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Jhonnie Red(Club Do Whisky)(8 anos)','160.00','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Teacher�S(Club Do Whisky)','85.00','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Black White(Club Do Whisky)','89.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Jack Daniels(Club Do Whisky)','189.00','Bebidas')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Coquetel De Frutas(C/Alcool)','13.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Coquetel De Frutas(S/Alcool)','10.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Mar Azul','14.50','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Daikiri','13.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Alexander','13.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Espanhola','13.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Val�pia','13.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Aperol Spritz','17.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Mojito','13.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Caipil� Especial','16.90','KIWI OU MORANGO + PICOL� COCO/CAJ� OU LIM�O','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Gim/T�nica Com Morango','16.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Gim/T�nica/T.Pitya e Lim�o','17.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Gim C/Lim�o Siciliano Especiarias','15.90','Bebidas')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Caipirosca','11.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Caipirinha','8.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Capirinha Cach.Min','11.50','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Roskas Diversas (frutas da �poca)','11.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Morangoroska','13.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('KiwiRoska','13.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Roska C/Absolut','17.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Tangerina C/Pimenta','14.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Manga C/Maracuj�','14.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Frutas Vermelhas','15.90','Bebidas')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Cajaroska (Roskas,Frutas,Nevada)','12.50','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Caipiroska (Roskas,Frutas,Nevada)','12.50','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Aceroloroska (Roskas,Frutas,Nevada)','12.50','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Abacaxirosca (Roskas,Frutas,Nevada)','12.50','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Umburoska (Roskas,Frutas,Nevada)','12.50','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Maracujaroska (Roskas,Frutas,Nevada)','12.50','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Cajuroska (Roskas,Frutas,Nevada)','12.50','Bebidas')

 
alter table Restaurante add imagem varchar (100) null
go

update Restaurante set imagem=''
go

alter table Restaurante alter column imagem varchar (100) null

DROP TABLE imagens;

SELECT * FROM Restaurante

select * from Restaurante
select * from Estabelecimento

UPDATE Restaurante
SET RESTACATEGORIA='Refei��es'
WHERE RESTACATEGORIA='REFEI��ES';

Create table Estabelecimento (
 ESTABID int identity (1,1) Primary Key not null,
 ESTABNOME Varchar(100) NOT null,
 ESTABENDERECO Varchar(100) not null,
 ESTABBAIRRO Varchar(100) not null,
 ESTATELEFONE varchar (100) null,
 ESTABCEP varchar (100) not null,
 ESTABLOGIN Varchar(100) not null,
 ESTABSENHA varchar (100) not null,
 ESTATIPO Varchar(100) null,
 )

 Create table Restaurante (
 RESTAUID int identity (1,1) Primary key,
 RESTANOME varchar(200) not null,
 RESTAPRECO float not null,
 RESTADESCRICAO varchar(300) null,
 RESTAPREPROMOCAO float null,
 RESTACATEGORIA varchar (300) not null,
)










