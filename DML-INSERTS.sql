CREATE TABLE IF NOT EXISTS Produtos (
    produtoId INT PRIMARY KEY AUTO_INCREMENT,
    RFID INT(7) NOT NULL,
    produtoDesc VARCHAR(45) NOT NULL,
    produtoCarac VARCHAR(45) NOT NULL,
    precoCusto DECIMAL(10 , 2 ) NOT NULL,
    precoVenda DECIMAL(10 , 2 ) NOT NULL,
    fornecedorProduto BIGINT(14) NOT NULL,
    pesoProduto NUMERIC(30 , 2 ) NOT NULL
);

CREATE TABLE IF NOT EXISTS Clientes (
    clienteId INT PRIMARY KEY AUTO_INCREMENT,
    nomeCliente VARCHAR(60) NOT NULL,
    cpf BIGINT(11) NOT NULL
);

CREATE TABLE IF NOT EXISTS Avaliacao (
    idAvaliacao INT PRIMARY KEY AUTO_INCREMENT,
    notaAvaliacao INT NOT NULL,
    clienteId INT(100) NOT NULL,
    produtoId INT(100) NOT NULL,
    tituloAvaliacao VARCHAR(60) NOT NULL,
    dataAvaliacao DATE NOT NULL,
    comentarioAvaliacao VARCHAR(100) NOT NULL,
    CONSTRAINT fk_ProdAval FOREIGN KEY (produtoId)
        REFERENCES Produtos (produtoId),
    CONSTRAINT fk_cliAval FOREIGN KEY (clienteId)
        REFERENCES Clientes (clienteId)
);



insert into produtos (RFID,
produtoDesc,produtoCarac,
precoCusto,precoVenda,
fornecedorProduto,pesoProduto) 
values (7587335,'Camisa Nike','Camiseta',100.25,250.65,'nike',5);

insert into produtos (RFID,
produtoDesc,produtoCarac,
precoCusto,precoVenda,
fornecedorProduto,pesoProduto) 
values (7587336,'camisa gucci','Camiseta',500.85,700.65,'GUCCI',0.4);

insert into produtos (RFID,
produtoDesc,produtoCarac,
precoCusto,precoVenda,
fornecedorProduto,pesoProduto) 
values (7587337,'camisa JORDAN','Camiseta',2000.25,4050.65,'JORDAN Brasil',2.6);

insert into produtos (RFID,
produtoDesc,produtoCarac,
precoCusto,precoVenda,
fornecedorProduto,pesoProduto)
values (7587338,'camisa oakley','Camiseta',900.05,2500.75,'OAKLEY Brasil',15.9);

insert into produtos (RFID,
produtoDesc,produtoCarac,
precoCusto,precoVenda,
fornecedorProduto,pesoProduto) 
values (7587339,'camisa varsace','Camiseta',900.60,1250.65,'VERSACE Brasil',0.2);

insert into produtos (RFID,
produtoDesc,produtoCarac,
precoCusto,precoVenda,
fornecedorProduto,pesoProduto)  
values (7587340,'tenis JORDAN','Tenis',900.60,2050.65,'JORDAN Brasil',0.4);

insert into produtos (RFID,
produtoDesc,produtoCarac,
precoCusto,precoVenda,
fornecedorProduto,pesoProduto) 
values (7587341,'tenis nike','Tenis',1000.15,1250.65,'Nike Brasil',0.7);

insert into produtos (RFID,
produtoDesc,produtoCarac,
precoCusto,precoVenda,
fornecedorProduto,pesoProduto) 
values (7587342,'tenis Adidas','Tenis',25.25,50.65,'Vans Brasil',0.1);

insert into produtos (RFID,
produtoDesc,produtoCarac,
precoCusto,precoVenda,
fornecedorProduto,pesoProduto) 
values (7587343,'Tenis Vans','Tenis',1000.50,2050.65,13236697000146,5);

insert into produtos (RFID,
produtoDesc,produtoCarac,
precoCusto,precoVenda,
fornecedorProduto,pesoProduto) 
values (7587344,'Tenis TommyHilgfer','Tenis',1000.05,2500.65,'TOMMY Brasil',5);

insert into produtos (RFID,
produtoDesc,produtoCarac,
precoCusto,precoVenda,
fornecedorProduto,pesoProduto) 
values (7587345,'Moletom nike','Blusa',900.25,2500.65,'Nike Brasil',0.25);

insert into produtos (RFID,
produtoDesc,produtoCarac,
precoCusto,precoVenda,
fornecedorProduto,pesoProduto) 
values (7587346,'Moleton Starter','Blusa',800.25,1250.65,'STARTER Brasil',2.5);

insert into produtos (RFID,
produtoDesc,produtoCarac,
precoCusto,precoVenda,
fornecedorProduto,pesoProduto) 
values (7587347,'Moleton Oakley','Blusa',500.25,950.65,'OAKLEY Brasil',5.3);

insert into produtos (RFID,
produtoDesc,produtoCarac,
precoCusto,precoVenda,
fornecedorProduto,pesoProduto) 
values (7587348,'Bone Oakley','Bone',100.25,205.65,'OAKLEY Brasil',7.5);

insert into produtos (RFID,
produtoDesc,produtoCarac,
precoCusto,precoVenda,
fornecedorProduto,pesoProduto) 
values (7587349,'Bone Nike','Bone',100.25,250.65,'NIKE BRASIL',3.5);


insert into clientes (nomeCliente,cpf) values ("Douglas Henrique",05002535879);
insert into clientes (nomeCliente,cpf) values ("Patricia Quiteria",52285439881);
insert into clientes (nomeCliente,cpf) values ("Flavio Silva",30438012887);
insert into clientes (nomeCliente,cpf) values ("Maria Amelia",91466806834);
insert into clientes (nomeCliente,cpf) values ("Vitor Rodriguez",71339941864);
insert into clientes (nomeCliente,cpf) values ("Luis Fernando",51438756844);
insert into clientes (nomeCliente,cpf) values ("Jefferson Moreira",20241493838);
insert into clientes (nomeCliente,cpf) values ("Ricardo gentil",89970339800);
insert into clientes (nomeCliente,cpf) values ("Jonathan Cavalieri",94431414851);
insert into clientes (nomeCliente,cpf) values ("Thiffany Costa",17349696876);

insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,produtoId,notaAvaliacao,clienteId) 
values ("Muito Bom",'2022-02-12',"Gostei de todos os detalhes.",1,4,2);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,produtoId,notaAvaliacao,clienteId) 
values ("Alem do esperado",'2021-10-15',"Realmente me supreendeu a qualidade .",1,4,1);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,produtoId,notaAvaliacao,clienteId) 
values ("Pessima qualidade",'2021-06-20',"Esperava um pouco mais de um produto dessa marca",2,1,3);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,produtoId,notaAvaliacao,clienteId)  
values ("ótimo",'2021-02-21',"Atendeu minha expectativa",2,5,4);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,produtoId,notaAvaliacao,clienteId) 
values ("Otimo Produto",'2021-05-30',"Já quero mais.",3,5,5);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,produtoId,notaAvaliacao,clienteId)  
values ("Produto bom",'2021-10-09',"dentro dos padrões",3,4,6);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,produtoId,notaAvaliacao,clienteId) 
values ("Péssimo Produto",'2021-11-12',"nunca mais compro",4,1,7);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,produtoId,notaAvaliacao,clienteId) 
values ("Referencia em qualidade",'2022-07-07',"Fica claro a qualidade, amei",4,5,8);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,produtoId,notaAvaliacao,clienteId) 
values ("Estou encantado",'2022-02-02',"Amei, recomendei para meus amigos",5,5,9);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,produtoId,notaAvaliacao,clienteId) 
values ("chique",'2021-12-06',"Amei.",5,4,10);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,produtoId,notaAvaliacao,clienteId) 
values ("Super recomendo",'2022-01-12',"Amei a qualidade",6,5,1);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,produtoId,notaAvaliacao,clienteId)  
values ("defeituoso",'2021-11-12',"veio com defeito, quero meu dinheiro de volta",6,5,2);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,produtoId,notaAvaliacao,clienteId) 
values ("pessima embalagem",'2022-01-01',"poderiam melhorar a embalagem",7,5,3);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,produtoId,notaAvaliacao,clienteId) 
values ("muito bom",'2021-12-06',"nenhum comentario adicional",7,4,4);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,produtoId,notaAvaliacao,clienteId) 
values ("Péssimo Produto",'2021-10-13',"Bem diferente da imagem do site",8,2,5);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,produtoId,notaAvaliacao,clienteId) 
values ("Amei",'2021-10-15',"Parabens pela qualidade",8,4,6);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,produtoId,notaAvaliacao,clienteId) 
values ("Já quero mais",'2022-05-12',"atendeu todas minhas expectativas",9,4,7);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,produtoId,notaAvaliacao,clienteId) 
values ("Péssimo Produto",'2021-10-07',"Produto nada sustentavel",9,1,8);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,produtoId,notaAvaliacao,clienteId) 
values ("Péssimo Produto",'2020-10-21',"não recomendo a ninguem",10,4,9);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,produtoId,notaAvaliacao,clienteId) 
values ("Amei as cores",'2021-10-11',"qualidade das cores impecavel",10,4,10);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,produtoId,notaAvaliacao,clienteId) 
values ("Produto bom",'2021-09-31',"é o que eu esperava",11,5,10);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,produtoId,notaAvaliacao,clienteId) 
values ("Péssimo Produto",'2021-10-31',"tenham mais empatia com seus clientes.",11,3,9);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,produtoId,notaAvaliacao,clienteId) 
values ("Bom Produto",'2021-11-31',"dentro dos padrões.",12,4,8);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,produtoId,notaAvaliacao,clienteId) 
values ("Otimo Produto",'2021-11-05',"recomendo muito.",12,4,7);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,produtoId,notaAvaliacao,clienteId) 
values ("Produto bom",'2021-06-21',"sempre atendem minhas expectativas.",13,5,6);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,produtoId,notaAvaliacao,clienteId) 
values ("Péssimo Produto",'2021-07-20',"Esperava um pouco mais de um produto dessa marca",13,2,5);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,produtoId,notaAvaliacao,clienteId) 
values ("Bom Produto",'2021-12-21',"gostei do acabamento",14,4,4);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,produtoId,notaAvaliacao,clienteId) 
values ("Otimo Produto",'2022-11-11',"estão de parabens",14,5,3);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,produtoId,notaAvaliacao,clienteId)  
values ("patrocina eu",'2021-12-15',"já quero todos desta marca",15,5,2);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,produtoId,notaAvaliacao,clienteId) 
values ("referencia em qualidade",'2021-04-25',"estão de parabens",15,1,2);