CREATE TABLE CLIENTES (
    id_cliente INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    cpf TEXT UNIQUE NOT NULL,
    telefone TEXT,
    endereco TEXT
);

CREATE TABLE VEICULO (
    id_veiculo INTEGER PRIMARY KEY,
    modelo TEXT NOT NULL,
    ano INTEGER,
    placa TEXT UNIQUE NOT NULL,
    id_cliente INTEGER,
    FOREIGN KEY (id_cliente) REFERENCES CLIENTES(id_cliente)
);

CREATE TABLE FUNCIONARIO (
    id_funcionario INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    cargo TEXT
);

CREATE TABLE BATERIA (
    id_bateria INTEGER PRIMARY KEY,
    modelo TEXT NOT NULL,
    capacidade_ah INTEGER,
    preco REAL,
    quantidade_estoque INTEGER
);

CREATE TABLE VENDA (
    id_venda INTEGER PRIMARY KEY,
    valor_total REAL,
    data TEXT,
    id_cliente INTEGER,
    id_funcionario INTEGER,
    FOREIGN KEY (id_cliente) REFERENCES CLIENTES(id_cliente),
    FOREIGN KEY (id_funcionario) REFERENCES FUNCIONARIO(id_funcionario)
);

CREATE TABLE ITEMVENDA (
    id_item_venda INTEGER PRIMARY KEY,
    quantidade INTEGER,
    preco_unitario REAL,
    id_venda INTEGER,
    id_bateria INTEGER,
    FOREIGN KEY (id_venda) REFERENCES VENDA(id_venda),
    FOREIGN KEY (id_bateria) REFERENCES BATERIA(id_bateria)
);