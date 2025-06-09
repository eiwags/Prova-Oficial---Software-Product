-- Tabela Cliente
CREATE TABLE Cliente (
    ID_Cliente INT PRIMARY KEY,
    Nome VARCHAR(100),
    Email VARCHAR(100),
    Data_Cadastro DATE,
    Segmento VARCHAR(50)
);

-- Tabela Produto
CREATE TABLE Produto (
    ID_Produto INT PRIMARY KEY,
    Nome VARCHAR(100),
    Categoria VARCHAR(50),
    Preco DECIMAL(10, 2),
    Estoque INT
);

-- Tabela Pedido
CREATE TABLE Pedido (
    ID_Pedido INT PRIMARY KEY,
    ID_Cliente INT,
    Data_Pedido DATE,
    Valor_Total DECIMAL(10, 2),
    Status VARCHAR(30),
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente)
);

-- Tabela Item_Pedido
CREATE TABLE Item_Pedido (
    ID_Item INT PRIMARY KEY,
    ID_Pedido INT,
    ID_Produto INT,
    Quantidade INT,
    Preco_Unitario DECIMAL(10, 2),
    FOREIGN KEY (ID_Pedido) REFERENCES Pedido(ID_Pedido),
    FOREIGN KEY (ID_Produto) REFERENCES Produto(ID_Produto)
);

-- Tabela Recomendação
CREATE TABLE Recomendacao (
    ID_Recomendacao INT PRIMARY KEY,
    ID_Cliente INT,
    ID_Produto INT,
    Data_Recomendacao DATE,
    Score DECIMAL(5, 2),
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente),
    FOREIGN KEY (ID_Produto) REFERENCES Produto(ID_Produto)
);

-- Tabela Feedback
CREATE TABLE Feedback (
    ID_Feedback INT PRIMARY KEY,
    ID_Cliente INT,
    ID_Produto INT,
    Avaliacao INT, -- de 1 a 5, por exemplo
    Comentario TEXT,
    Data DATE,
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente),
    FOREIGN KEY (ID_Produto) REFERENCES Produto(ID_Produto)
);