-- Criando a base de dados da Loja
CREATE DATABASE Loja;
USE Loja;

-- Criando a tabela de Estado
CREATE TABLE Estado (
	ID INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    uf CHAR(2) NOT NULL
    );

-- Criando a tabela Municipio
CREATE TABLE Municipio(
	ID INT AUTO_INCREMENT PRIMARY KEY,
    Estado_ID INT NOT NULL,
    Nome VARCHAR(80) NOT NULL,
    CodIBGE INT NOT NULL,
    FOREIGN KEY (Estado_ID) REFERENCES Estado(ID)
);

-- Criando Tabela Cliente
CREATE TABLE Cliente(
	ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(80) NOT NULL,
    CPF CHAR(11) NOT NULL,
    Celular CHAR(11),
    End_Logradouro VARCHAR(100) NOT NULL,
    End_Numero VARCHAR(10) NOT NULL,
    End_Municipio INT NOT NULL,
    End_CEP CHAR(8),
    Municipio_ID INT NOT NULL,
    FOREIGN KEY(Municipio_ID) REFERENCES Municipio(ID)
);

-- Criando a Tabela Contas a Receber
CREATE TABLE ContaReceber (
	ID INT AUTO_INCREMENT PRIMARY KEY,
    Cliente_ID INT NOT NULL,
    FaturaValidade INT,
    DataConta DATE NOT NULL,
    DataVencimento DATE NOT NULL,
    Valor DECIMAL(18, 2) NOT NULL,
    Situacao ENUM('1', '2', '3') NOT NULL COMMENT '1 - Conta Registrada, 2 - Conta Cancelada, 3 - Conta Paga',
    FOREIGN KEY (Cliente_ID) REFERENCES Cliente(ID)
);