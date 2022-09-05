Create table Restaurante (
 RESTAUID int identity (1,1) Primary key,
 RESTANOME varchar(200) not null,
 RESTAPRECO float not null,
 RESTADESCRICAO varchar(300) null,
 RESTAPREPROMOCAO float null,
 RESTACATEGORIA varchar (300) not null,
)

select * from Restaurante

insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Calabresa na Cachaça','28.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Calabresa Espiral','34.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Brochete Frango(Espeto)','13.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Brochete Carne(C/Barbecue Espeto)','15.90','Petiscos')

insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Costela De Porco(Barbecue)','44.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Picanha Fatiada C/Pão De Alho','58.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Carne Do Sol','35.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Carne Do Sol(C/Macaxeira ou Fritas)','42.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Carne Do Sol Na Nata','46.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values ('Filezinho Aperitivo','41.90','(Molho Madeira,Torradas ou Fritas ou Macaxeira)','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Filezinho Molho De Queijo','44.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Filé De Frango Na Pedra','41.90','Petiscos')

insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Caldinho De Feijão','7.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Caldinho De Frutos Do Mar','10.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Bolinho De Carne Do Sol C/Calabresa','18.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Bolinho De Bacalhau','24.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Bolinho De Peixe','24.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Bolinho De Aratu','25.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Bolinho De Bobó De Camarão','25.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Queijo a Milanesa','21.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Macaxeira Frita','10.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Batata Frita','14.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values ('Batatinha Especial','19.90','(CHEDDAR/BACON','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values ('Batatinha Boa Da Pêga','25.90','(CALABRESA/MUSARELLA','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('KIBE','18.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Camarão C/Catupiry Na Tapioca','34.90','Petiscos')

insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Frango a Passarinho','32.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Coxinha de Asa','23.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Codorna','12.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Isca De Frango','29.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Isca De Peixe','34.50','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Arrumadinho Tradicinonal','36.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Arrumainho De Aratu','41.90','Petiscos')

insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Camarão à Milanesa','44.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Camarão Na (F.) Panka','46.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Camarão Alho e Óleo','44.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Camarão Crocante Praia Do Abaís','47.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Camarão Praia Do Saco','47.90','Petiscos')
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
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Pastel De Camarão','9.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Mini Pastel de Camarão C/Cream Cheese','18.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Mini Pastel de Salmão C/Cream Cheese','21.90','Petiscos')
insert Restaurante(RESTANome,RESTAPRECO,RESTACATEGORIA) values ('Mini Pastel de Costela C/Queijo','17.90','Petiscos')


Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('FILÉ DE FRANGO À CUBANA', '66.90', ' À MILANESA BATATA PALHA , ARROZ A GREGA, BANANA ABACAXI À MILANESA, SALADA','REFEIÇÕES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('FILÉ DE FRANGO À PARMEGIANA', '66.90', 'À MILANESA, PURÊ, MUSSARELA, PRESUNTO, MOLHO DE TOMATE, ARROZ, SALADA','REFEIÇÕES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('FILÉ DE FRANGO COM FRITAS', '66.90', 'GRELHADO, BATATA FRITA, ARROZ, FEIJÃO, SALADA, FAROFA','REFEIÇÕES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('FILÉ DE FRANGO COM LEGUMES', '66.90', 'GRELHADO, LEGUMES DIVERSOS, ARROZ, FEIJÃO, FAROFA','REFEIÇÕES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('FILÉ DE FRANGO AO LUNARY', '66.90', 'REFOGADO, MOLHO BRANCO, REQUEIJÃO CREMOSO, BATATA PALHA, SALADA', 'REFEIÇÕES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('MEDALHÃO DE FRANGO AO MOLHO MADEIRA', '68.90', 'GRELHADO C/ BACON, MOLHO MADEIRA, ARROZ À PIAMONTESE', 'REFEIÇÕES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('FILÉ FRANGO NA PEDRA', '66.90', 'GRELHADO, MACAXEIRA OU FRITAS, FEIJÃO TROPEIRO, VINAGRETE, ARROZ, FAROFA', 'REFEIÇÕES')



Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('FILÉ À CUBANA', '77.90', 'A MILANESA, BATATA PALHA, ARROZ À GREGA, BANANA OU ABACAXI À MILANESA, SALADA', 'REFEIÇÕES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values
('FILE À PARMEGIANA', '77.90', 'A MILANESA, PURÊ, MUSSARELA, PRESUNTO, MOLHO DE TOMATE, ARROZ, SALADA', 'REFEIÇÕES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values  
('FILÉ À CAVALO', '77.90', 'GRELHADO, BATATA FRITA, ARROZ, FEIJÃO, FAROFA, SALADA, OVO', 'REFEIÇÕES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('FILÉ COM FRITAS', '77.90', 'GRELHADO, BATATA FRITA, ARROZ, FEIJÃO, FAROFA, SALADA','REFEIÇÕES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('FILÉ COM LEGUMES', '77.80', 'GRELHADO, LEGUMES DIVERSOS, ARROZ, FEIJÃO, FAROFA','REFEIÇÕES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('MEDALHÃO C/ LINGUINE AO M.QUEIJO', '82.90', 'MEDALHÃO DE FILÉ, BACON, MOLHO MADEIRA, LINGUINE M, QUEIJO', 'REFEIÇÕES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values
('MEDALHÃO AO MOLHO MADEIRA', '79.90', 'MEDALHÃO DE FILÉ, BACON, FEIJÃO, ARROZ À GREGA, MOLHO MADEIRA', 'REFEIÇÕES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('MEDALHÃO AO MOLHO CABERNET', '82.90', 'MEDALHÃO DE FILÉ, M.CABERNET, ARROZ À PIOMONTESE, BATATAS', 'REFEIÇÕES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values
('PICANHA NA PEDRA', '79.90', 'GRELHADO, MACAXEIRA OU FRITAS, FEIJÃO TROPEIRO, ARROZ, VINAGRETE, FAROFA', 'REFEIÇÕES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('CARNE DO SOL À MODA DA CASA', '79.90', 'GRELHADA, MACAXEIRA OU FRITAS, BAIÃO DE DOIS, FAROFA, VINAGRETE', 'REFEIÇÕES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('MIX DE GRELHADOS', '77.90', 'BOI, FRANGO, TOSCANA, BAIÃO DE DOIS, MACAXEIRA OU FRITAS, FAROFA, VINAGRETE', 'REFEIÇÕES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('CARNE DO SOL C/ PIRÃO DE LEITE', '77.90', 'GRELHADO, PIRÃO DE LEITE, FEIJÃO TROPEIRO, ARROZ, FRITAS OU MACAXEIRA, FAROFA, VINAGRETE', 'REFEIÇÕES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('CUPIM NA CHAPA', '77.90', 'AO FORNO, SELADO NA MATEIGA DE GARRAFA, FEIJÃO TROPEIRO, ARROZ, FAROFA, VINAGRETE, FRITAS OU MACAXEIRA', 'REFEIÇÕES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('MEDALHÃO AO MOLHO DE QUEIJO', '82.90', 'GRELHADO, MOLHO DE QUEIJO, ARROZ DE BRÓCOLIS, BATATA FRITA','REFEIÇÕES')

Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Peixe Frito', '76.90','POSTA DE PEIXE FRITO,ARROZ,FEIJÃO,VINAGRETE,FAROFA','REFEIÇÕES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Peixe ao Molho de Camarão', '86.90','POSTA DE PEIXE FRITO,MOLHO DE TOMATE COM CAMARÃO,ARROZ,FEIJÃO,VINAGRETE,FAROFA','REFEIÇÕES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Peixe Escabeche', '79.90','POSTA DE PEIXE FRITO,MOLHO ESCABECHE,ARROZ,FEIJÃO,FAROFA,VINAGRETE','REFEIÇÕES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Filé De Pescada à Belle Meuniere', '84.90','FILÉ DE PESCADA,CHAMPIGNON,CAMARÃO,ARROZ À`PIAMONTESE,BATATA SOUTÉ','REFEIÇÕES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Filé De Pescada C/Legumes', '82.90','FILÉ DE PESCADA,LEGUMES SALTEADOS NA MANTEIGA,ARROZ,SALADA','REFEIÇÕES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Salmão à Bella Meuriere', '98.90','SALMÃO GRELHADO,ALCAPARRAS,CHAMPIGNON,CAMARÃO,ARROZ À PIAMONTESE,BATATA SOUTÉ','REFEIÇÕES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Chapa De Frutas Do Mar','98.90','SALMÃO,PESCADA,CAMARÃO.PEIXE GRELHADO,LEGUMES,SALTEADOS,FRITAS,ARROZ C/BRÓCOLIS,FAROFA','REFEIÇÕES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Chapa Terra e Mar', '94.90','BOI,FRANGO,CAMARÃO,PEIXE GRELHADO,LEGUMES SALTEADOS,FRITAS,ARROZ C/BRÓCOLIS,FAROFA','REFEIÇÕES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Peixe Frito C/Molho De Camarão Porto De Areia ', '92.90','PEIXE FRITO INTEIRO,MOLHO DE CAMARÃO NO CÔCO,ARROZ,FEIJÃO,VINAGRETE,FAROFA','REFEIÇÕES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Filé De Pescada C/Arroz De Aratu','94.90','FILÉ DE PESCADA FRITO,ARROZ DE MOQUECA DE ARATU,VINAGRETE,FAROFA','REFEIÇÕES')

Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Moqueca Delicia (Camarão/Aratu)', '86.90','CAMARÃO E ARATU NO LEITE DE CÓCO,DENDÊ,PIRÃO,ARROZ,FAROFA,VINAGRETE','REFEIÇÕES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Moqueca De Aratu', '82.90','ARATU NO LEITE DE CÓCO,DENDÊ,PIRÃO,ARROZ,FAROFA,VINAGRETE','REFEIÇÕES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Moqueca De Aratu', '82.90','ARATU NO LEITE DE CÓCO,DENDÊ,PIRÃO,ARROZ,FAROFA,VINAGRETE','REFEIÇÕES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Moqueca Trilícia(Camarão/Aratu/Caranguejo', '86.90','CAMARÃO,ARATU E CARANGUEIJO NO LEITE DE CÓCO,DENDÊ,PIRÃO,ARROZ,FAROFA,VINAGRETE','REFEIÇÕES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Moqueca De Caranguejo', '78.90','CARANGUEJO NO LEITE DE CÓCO,DENDÊ,PIRÃO,ARROZ,FAROFA,VINAGRETE','REFEIÇÕES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Mariscada', '92.90','OSTRA,SURGIU,ARATU,SIRI,CAMARÃO,PEIXE,LULA NO CÓCO,DENDÊ,PIRÃO,ARROZ,FAROFA,VINAGRETE','REFEIÇÕES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Moqueca De Camarão', '86.90','CAMARÃO NO LEITE DE CÓCO,DENDÊ,PIRÃO,ARROZ,FAROFA,VINAGRETE','REFEIÇÕES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Pirão De Camarão', '86.90','PIRÃO JUNTO C/CAMARÃO NO LEITE DE CÓCO,DENDÊ,ARROZ,FAROFA,VINAGRETE','REFEIÇÕES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Aratu Refogado', '78.90','ARATU REFOGADO NA AZEITE E TEMPEIROS,ARROZ,FAROFA,VINAGRETE','REFEIÇÕES')

Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Camarão Internacional','82.90','CAMARÃO AO M.CATUPIRY,CREME DE LEITE,ARROZ AO CREME C/ERVILHA,PRESUNTO, B PALHA','REFEIÇÕES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Camarão C/Catupiry Ao Lunary','78.90','CAMARÃO AO M.CATUPIRY,PURÊ GRATINADO,ARROZ BRANCO','REFEIÇÕES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Camarão Tropicalissimo','55.90','CAMARÃO FLABADO,MOLHO BRANCO CREMOSO,SERVIDO NO ABACAXI','REFEIÇÕES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Camarão à`Parmegiana','85.90','CAMARÃO A MILANESA,ARROZ Á GREGA, BATATA PALHA,M.DE TOMATE E QUEIJO','REFEIÇÕES')
Insert Restaurante ( RESTANOME,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Camarão à Grega','81.90','CAMARÃO A MILANESA,ARROZ Á GREGA,BATATA PALHA,M.DE TOMATE E QUEIJO','REFEIÇÕES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Linguine Ao M.Pomodoro de Camarão','59.90', 'MOLHO DE TOMATE','REFEIÇÕES')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Linguine à Bolonhesa','49.90','REFEIÇÕES')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Penne ao M.Branco C/Camarão','59.90', 'MOLHO BRANCO','REFEIÇÕES')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Linguine ao M.Queijo C/Camarões Grelhado','59.90', 'MOLHO BRANCO,REQUEIJÃO CREMOSO,AZEITE DE ERVAS','REFEIÇÕES')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Espaguete De Camarão Especial','62.90', 'AO ALHO E OLEO,CAMARÃO,TOMATES SECOS,AZEITONAS,ALCAPARRA,SALSA','REFEIÇÕES')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Espaguete a Moda Lunary','56.90','TIRAS DE FILÉ COM MOLHO MADEIRA E CREME DE LEITE','REFEIÇÕES')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Arroz De Camarão(invidual)','43.90','REFEIÇÕES')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Arroz De Camarão(P/2 Pessoas','69.90','REFEIÇÕES')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Arroz De Frutos Do Mar(invidual)','43.90','REFEIÇÕES')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Arroz De Frutos Do Mar(P/2 Pessoas)','69.90','REFEIÇÕES')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Arroz De Filé(invidual)','39.90','REFEIÇÕES')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Arroz De Filé(P/2 Pessoas)','64.90','REFEIÇÕES')

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
('Beck´S 600ML','15.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Colorado 600ML','19.90','Bebidas')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Malzebier','7.00','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Cerveja S/ÁLCOOL','7.50','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('BudWeiser','9.50','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Stella Artois','9.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Corona','10.50','Bebidas')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Cachaça Mineira','6.30','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Reserva do Barão','6.30','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Ipioca/Pitú','3.50','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Resera Do Barão(Garrafa)','62.00','Bebidas')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Guaraná','4.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Cola-Cola ','4.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Fanta','4.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Soda','4.90','Bebidas')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Guaraná(EM LATA)','5.00','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Cola-Cola(EM LATA)','5.00','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Schwepps(EM LATA)','5.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Tônica(EM LATA)','5.90','Bebidas')
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
('Bell´S','6.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Teacher´S','6.90','Bebidas')
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
('Teacher´S(Club Do Whisky)','85.00','Bebidas')
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
('Valúpia','13.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Aperol Spritz','17.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Mojito','13.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTADESCRICAO,RESTACATEGORIA) values 
('Caipilé Especial','16.90','KIWI OU MORANGO + PICOLÉ COCO/CAJÁ OU LIMÃO','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Gim/Tónica Com Morango','16.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Gim/Tónica/T.Pitya e Limão','17.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Gim C/Limão Siciliano Especiarias','15.90','Bebidas')

Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Caipirosca','11.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Caipirinha','8.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Capirinha Cach.Min','11.50','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Roskas Diversas (frutas da época)','11.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Morangoroska','13.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('KiwiRoska','13.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Roska C/Absolut','17.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Tangerina C/Pimenta','14.90','Bebidas')
Insert Restaurante ( RESTANome,RESTAPRECO,RESTACATEGORIA) values 
('Manga C/Maracujá','14.90','Bebidas')
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










