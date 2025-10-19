-- 1. CRIAÇÃO DA TABELA FILIAIS
CREATE TABLE Filiais (
    filial_id INT PRIMARY KEY,
    nome_filial VARCHAR(100) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    regiao VARCHAR(50) NOT NULL
);

-- 2. CRIAÇÃO DA TABELA FUNCIONARIOS
CREATE TABLE Funcionarios (
    func_id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL,
    filial_id INT,
    data_contratacao DATE,
    FOREIGN KEY (filial_id) REFERENCES Filiais(filial_id)
);

-- 3. CRIAÇÃO DA TABELA VENDAS
CREATE TABLE Vendas (
    venda_id INT PRIMARY KEY,
    func_id INT,
    valor_venda DECIMAL(10, 2) NOT NULL,
    data_venda DATE NOT NULL,
    produto VARCHAR(50),
    FOREIGN KEY (func_id) REFERENCES Funcionarios(func_id)
);

-- 4. POPULAÇÃO DAS TABELAS (Dados Variados para Agregação)

-- INSERIR DADOS EM FILIAIS
INSERT INTO Filiais (filial_id, nome_filial, cidade, regiao) VALUES
(101, 'Matriz Central', 'São Paulo', 'Sudeste'),
(102, 'Filial Rio', 'Rio de Janeiro', 'Sudeste'),
(103, 'Filial Sul', 'Porto Alegre', 'Sul'),
(104, 'Filial Nordeste', 'Salvador', 'Nordeste'),
(105, 'Filial Norte', 'Manaus', 'Norte');


-- INSERIR DADOS EM FUNCIONARIOS
INSERT INTO Funcionarios (func_id, nome, cargo, salario, filial_id, data_contratacao) VALUES
(1, 'Ana Silva', 'Gerente', 8000.00, 101, '2018-01-15'),
(2, 'Bruno Costa', 'Vendedor', 3500.00, 101, '2020-03-10'),
(3, 'Carla Lima', 'Vendedor', 3200.00, 101, '2021-08-20'),
(4, 'Daniel Alves', 'Gerente', 7500.00, 102, '2019-05-01'),
(5, 'Eduarda Feitosa', 'Vendedor', 4000.00, 102, '2022-01-25'),
(6, 'Fábio Gomes', 'Vendedor', 3800.00, 103, '2020-11-11'),
(7, 'Gabriela Rocha', 'Analista', 5500.00, 103, '2023-04-03'),
(8, 'Henrique Reis', 'Vendedor', 3000.00, 104, '2022-09-19'),
(9, 'Igor Souza', 'Gerente', 7800.00, 104, '2017-06-05'),
(10, 'Julia Pires', 'Vendedor', 4200.00, 105, '2021-02-14'),
(11, 'Luiz Martins', 'Vendedor', 3100.00, 105, '2023-01-01'),
(12, 'Marcia Neves', 'Analista', 6000.00, 101, '2019-07-07');


-- INSERIR DADOS EM VENDAS (Distribuídos por funcionários e datas)
INSERT INTO Vendas (venda_id, func_id, valor_venda, data_venda, produto) VALUES
(1, 2, 500.00, '2023-10-01', 'Produto A'),
(2, 2, 1200.00, '2023-10-01', 'Produto B'),
(3, 3, 300.00, '2023-10-02', 'Produto A'),
(4, 5, 800.00, '2023-10-02', 'Produto C'),
(5, 6, 2000.00, '2023-10-03', 'Produto B'),
(6, 6, 1500.00, '2023-10-03', 'Produto A'),
(7, 8, 450.00, '2023-10-04', 'Produto C'),
(8, 10, 1000.00, '2023-10-04', 'Produto B'),
(9, 10, 900.00, '2023-10-05', 'Produto A'),
(10, 11, 700.00, '2023-10-05', 'Produto C'),
(11, 2, 600.00, '2023-11-01', 'Produto B'),
(12, 3, 1100.00, '2023-11-02', 'Produto C'),
(13, 5, 1300.00, '2023-11-03', 'Produto A'),
(14, 6, 500.00, '2023-11-04', 'Produto C'),
(15, 8, 200.00, '2023-11-05', 'Produto A'),
(16, 10, 1800.00, '2023-11-06', 'Produto B'),
(17, 10, 200.00, '2023-11-06', 'Produto A'),
(18, 11, 400.00, '2023-11-07', 'Produto B'),
(19, 1, 3000.00, '2023-11-07', 'Serviço X'), -- Venda do Gerente
(20, 9, 5000.00, '2023-11-08', 'Serviço Y'), -- Venda de outro Gerente
(21, 2, 500.00, '2023-11-08', 'Produto A');