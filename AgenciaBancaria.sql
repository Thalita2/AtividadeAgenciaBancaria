CREATE DATABASE Banco1;

USE Banco1;

DROP DATABASE Banco1;
 
CREATE TABLE Clientes (
  Cpf VARCHAR(15) PRIMARY KEY,
  Nome VARCHAR(255) NOT NULL,
  Endereco VARCHAR(255) NOT NULL,
  Telefone VARCHAR(30) NOT NULL,
  Email VARCHAR(255) UNIQUE NOT NULL
 );
 
INSERT INTO Clientes(Cpf, Nome, Endereco, Telefone, Email) VALUES ('85831714594', 'Thalita', 'Rua Sérgio Lanfulfo Furtado, 3', '(71) 98501-3844', 'thalita@gmail.com');
INSERT INTO Clientes(Cpf, Nome, Endereco, Telefone, Email) VALUES ('44020090572', 'Maria', 'Rua Sérgio, 4', '(71) 98701-5444', 'maria@gmail.com');
INSERT INTO Clientes(Cpf, Nome, Endereco, Telefone, Email) VALUES ('36055599973', 'João', 'Rua da Glória, 5', '(71) 98500-3044', 'joao@gmail.com');
INSERT INTO Clientes(Cpf, Nome, Endereco, Telefone, Email) VALUES ('48823406587', 'Joana', 'Rua Furtado, 7', '(71) 98571-3876', 'joana@gmail.com');
INSERT INTO Clientes(Cpf, Nome, Endereco, Telefone, Email) VALUES ('59800076132', 'Felipe', 'Rua Cosme de Farias, 6', '(71) 98051-3844', 'felipe@gmail.com');
 
 CREATE TABLE Contas_Bancarias(
  Numero_Conta INT(20) PRIMARY KEY,
  Agencia INT(4) NOT NULL,
  TipoConta VARCHAR(45) NOT NULL,
  Saldo DECIMAL(10,2) NOT NULL,
  Clientes_Cpf VARCHAR(15) NOT NULL,
  FOREIGN KEY (Clientes_Cpf) REFERENCES Clientes(Cpf)
  );
 
INSERT INTO Contas_Bancarias(Numero_Conta, Agencia, TipoConta, Saldo, Clientes_Cpf) VALUES (12345, 001, 'Conta Poupança', 1000.00, '59800076132');
INSERT INTO Contas_Bancarias(Numero_Conta, Agencia, TipoConta, Saldo, Clientes_Cpf) VALUES (56789, 002, 'Conta Corrente', 2000.00, '48823406587');
INSERT INTO Contas_Bancarias(Numero_Conta, Agencia, TipoConta, Saldo, Clientes_Cpf) VALUES (98765, 001, 'Conta Poupança', 3000.00, '36055599973');
INSERT INTO Contas_Bancarias(Numero_Conta, Agencia, TipoConta, Saldo, Clientes_Cpf) VALUES (54321, 002, 'Conta Corrente', 4000.00, '44020090572');
INSERT INTO Contas_Bancarias(Numero_Conta, Agencia, TipoConta, Saldo, Clientes_Cpf) VALUES (12569, 001, 'Conta Poupança', 5000.00, '85831714594');
 
DROP TABLE Contas_Bancarias;
 
-- RETORNANDO DADOS QUE FORAM INSERIDOS NA TABELA
SELECT Clientes.nome AS 'Nome do Cliente',
Contas_Bancarias.saldo AS 'Saldo'
FROM Clientes
INNER JOIN Contas_Bancarias
ON Clientes.cpf = Contas_Bancarias.Clientes_Cpf;
 
SELECT*FROM Clientes;
SELECT*FROM Contas_Bancarias;