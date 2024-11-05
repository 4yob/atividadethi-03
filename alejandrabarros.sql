CREATE DATABASE hotel;

\c hotel;

CREATE TABLE hospedes (
    id_hospede SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    telefone VARCHAR(14) UNIQUE NOT NULL,
    email VARCHAR(200) UNIQUE NOT NULL
);

CREATE TABLE quartos (
    id_quarto SERIAL PRIMARY KEY,
    numero INT NOT NULL,
    andar NOT NULL
);

CREATE TABLE reservas (
    id_reserva SERIAL PRIMARY KEY,
    id_hospede INT NOT NULL,
    id_quarto INT NOT NULL,
    data_checkin DATE NOT NULL,
    data_checkout DATE NOT NULL,
    CONSTRAINT fk_hospede FOREIGN KEY (id_hospede) REFERENCES hospedes(id_hospede),
    CONSTRAINT fk_quarto FOREIGN KEY (id_quarto) REFERENCES quartos(id_quarto)
);

INSERT INTO hospedes (nome, cpf, telefone, email) VALUES ('Alejandra', '111.111.111-11', '(19)99999-1111', 'alejandra@gmail.com'),
('Ana Carolina', '222.222.222-22', '(19)99999-2222', 'anacarol@gmail.com'),
('Bruna', '333.333.333-33', '(19)99999-3333', 'buba@gmail.com'),
('Evelyn', '444.444.444-44', '(19)99999-4444', 'eve@gmail.com'),
('Laura', '555.555.555-55', '(19)99999-5555', 'laurette@gmail.com'),
('Felipe', '666.666.666-66', '(19)99999-6666', 'dev@gmail.com'),
('Thiago', '777.777.777-77', '(19)99999-7777', 'thigo@gmail.com');


INSERT INTO quartos (numero, andar) VALUES (51, 4),
(42, 3),
(43, 3),
(44, 3),
(45, 3),
(32, 2),
(36, 2);

INSERT INTO reservas (id_hospede, id_quarto, data_entrada, data_saida, ) VALUES (1, 7, '15-01-2023', '20-01-2023'),
(7, 1, '25-12-2024', '30-12-2024'),
(2, 6, '07-06-2022', '07-07-2022'),
(6, 2, '13-03-2024', '14-03-2024'),
(3, 5, '10-07-2024', '10-12-2024'),
(5, 3, '22-10-2024', '26-10-2024'),
(4, 4, '30-09-2024', '22-11-2024');

