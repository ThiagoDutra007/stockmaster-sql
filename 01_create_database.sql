CREATE DATABASE StockMaster;
USE StockMaster;

-- Categoria
CREATE TABLE Categoria (
  categoria_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL UNIQUE,
  descricao TEXT
);

-- Fornecedor
CREATE TABLE Fornecedor (
  fornecedor_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(150) NOT NULL,
  cnpj_cpf VARCHAR(20),
  contato VARCHAR(100),
  telefone VARCHAR(30),
  email VARCHAR(100),
  endereco VARCHAR(250),
  ativo BOOLEAN DEFAULT TRUE
);

-- Produto
CREATE TABLE Produto (
  produto_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(150) NOT NULL,
  descricao TEXT,
  preco DECIMAL(10,2) NOT NULL,
  categoria_id INT,
  fornecedor_id INT,
  FOREIGN KEY (categoria_id) REFERENCES Categoria(categoria_id),
  FOREIGN KEY (fornecedor_id) REFERENCES Fornecedor(fornecedor_id)
);

-- Estoque
CREATE TABLE Estoque (
  estoque_id INT PRIMARY KEY AUTO_INCREMENT,
  produto_id INT NOT NULL,
  quantidade INT NOT NULL,
  localizacao VARCHAR(100),
  FOREIGN KEY (produto_id) REFERENCES Produto(produto_id)
);

-- Cliente
CREATE TABLE Cliente (
  cliente_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(150) NOT NULL,
  telefone VARCHAR(30),
  email VARCHAR(100)
);

-- Pedido
CREATE TABLE Pedido (
  pedido_id INT PRIMARY KEY AUTO_INCREMENT,
  cliente_id INT NOT NULL,
  data_pedido DATE NOT NULL,
  FOREIGN KEY (cliente_id) REFERENCES Cliente(cliente_id)
);

-- Itens
CREATE TABLE ItemPedido (
  item_id INT PRIMARY KEY AUTO_INCREMENT,
  pedido_id INT NOT NULL,
  produto_id INT NOT NULL,
  quantidade INT NOT NULL,
  preco_unitario DECIMAL(10,2),
  FOREIGN KEY (pedido_id) REFERENCES Pedido(pedido_id),
  FOREIGN KEY (produto_id) REFERENCES Produto(produto_id)
);