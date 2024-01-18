-- Inserir registros na tabela Estado
INSERT INTO Estado (Nome, UF) VALUES ('São Paulo', 'SP'), ('Rio de Janeiro', 'RJ'), ('Minas Gerais', 'MG');

-- Inserir registros na tabela Municipio
INSERT INTO Municipio (Estado_ID, Nome) VALUES (1, 'São Paulo'), (2, 'Rio de Janeiro'), (3, 'Belo Horizonte');

-- Inserir registros na tabela Cliente
INSERT INTO Cliente (Nome, CPF, Celular, Municipio_ID) VALUES ('João Cardoso', '12345678901', '11987654321', 1), ('Maria Oliveira', '23456789012', '21987654321', 2), ('Carlos Pereira', '34567890123', '31987654321', 3);

-- Inserir registros na tabela ContaReceber
INSERT INTO ContaReceber (Cliente_ID, FaturaValidade, DataConta, DataVencimento, Valor, Situacao) VALUES (1, 30, '2024-01-01', '2024-01-31', 100.00, '1'), (2, 60, '2024-02-01', '2024-03-31', 200.00, '2'), (3, 90, '2024-03-01', '2024-06-30', 300.00, '3');