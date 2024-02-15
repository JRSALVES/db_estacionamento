--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    cpf character varying(13) NOT NULL,
    nome character varying(50),
    dtnasc date
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- Name: estaciona_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.estaciona_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.estaciona_seq OWNER TO postgres;

--
-- Name: estaciona; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estaciona (
    cod_estac integer DEFAULT nextval('public.estaciona_seq'::regclass) NOT NULL,
    patio_num integer,
    veiculo_placa character varying(20),
    dtentrada date,
    dtsaida date,
    hsentrada time without time zone,
    hssaida time without time zone
);


ALTER TABLE public.estaciona OWNER TO postgres;

--
-- Name: modelo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.modelo (
    codmodelo integer NOT NULL,
    desc_modelo character varying(40)
);


ALTER TABLE public.modelo OWNER TO postgres;

--
-- Name: patio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.patio (
    patio_num integer NOT NULL,
    endereco character varying(40),
    capacidade integer
);


ALTER TABLE public.patio OWNER TO postgres;

--
-- Name: veiculo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.veiculo (
    placa character varying(8) NOT NULL,
    cor character varying(20),
    codmodelo integer,
    cpf character varying(13),
    ano_veiculo character varying(5)
);


ALTER TABLE public.veiculo OWNER TO postgres;

--
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cliente (cpf, nome, dtnasc) FROM stdin;
6762410855	Jeruso	1967-03-18
3567892512	Marcio	2000-09-09
2548963218	Luiza	2004-09-09
5874631254	Kleber	2010-03-01
5762410855	Luiz	1969-03-18
2067892512	Elza	2001-09-09
\.


--
-- Data for Name: estaciona; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estaciona (cod_estac, patio_num, veiculo_placa, dtentrada, dtsaida, hsentrada, hssaida) FROM stdin;
3	3	GHI9012	2024-02-12	2024-02-12	08:00:00	18:00:00
6	3	PQR1234	2024-02-12	2024-02-12	08:00:00	18:00:00
9	3	YZA3456	2024-02-12	2024-02-12	08:00:00	18:00:00
10	3	BCD7890	2024-02-12	2024-02-12	08:00:00	18:00:00
11	3	EFG1234	2024-02-12	2024-02-12	08:00:00	18:00:00
12	3	HIJ5678	2024-02-12	2024-02-12	08:00:00	18:00:00
13	3	KLM9012	2024-02-12	2024-02-12	08:00:00	18:00:00
14	3	NOP3456	2024-02-12	2024-02-12	08:00:00	18:00:00
17	3	WXYZ567	2024-02-12	2024-02-12	08:00:00	18:00:00
18	3	ABC8901	2024-02-12	2024-02-12	08:00:00	18:00:00
21	1	JJJ-2020	2020-03-15	2020-03-18	08:00:00	18:00:00
22	2	JEG-1010	2020-03-15	2020-03-18	08:00:00	18:00:00
1	1	ABC1234	2024-02-12	2024-02-12	08:00:00	18:00:00
2	2	DEF5678	2024-02-12	2024-02-12	08:00:00	18:00:00
4	1	JKL3456	2024-02-12	2024-02-12	08:00:00	18:00:00
5	2	MNO7890	2024-02-12	2024-02-12	08:00:00	18:00:00
7	1	STU5678	2024-02-12	2024-02-12	08:00:00	18:00:00
8	2	VWX9012	2024-02-12	2024-02-12	08:00:00	18:00:00
15	2	QRS7890	2024-02-12	2024-02-12	08:00:00	18:00:00
16	1	TUV1234	2024-02-12	2024-02-12	08:00:00	18:00:00
19	1	DEF2345	2024-02-12	2024-02-12	08:00:00	18:00:00
20	2	GHI6789	2024-02-12	2024-02-12	08:00:00	18:00:00
\.


--
-- Data for Name: modelo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.modelo (codmodelo, desc_modelo) FROM stdin;
1	Gol
2	Uno
3	Onix
4	HB20
5	Corolla
6	Civic
7	Palio
8	Sandero
9	Fox
10	Celta
\.


--
-- Data for Name: patio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.patio (patio_num, endereco, capacidade) FROM stdin;
1	Endereço do Pátio 1, Limeira	50
2	Endereço do Pátio 2, Limeira	100
3	Endereço do Pátio 3, Limeira	75
\.


--
-- Data for Name: veiculo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.veiculo (placa, cor, codmodelo, cpf, ano_veiculo) FROM stdin;
ABC1234	Preto	1	6762410855	2020
GHI9012	Azul	3	2548963218	2020
JKL3456	Prata	4	5874631254	2020
PQR1234	Verde	6	3567892512	2020
DEF5678	Branco	2	3567892512	2020
MNO7890	Vermelho	5	6762410855	2021
STU5678	Amarelo	7	2548963218	2021
VWX9012	Cinza	8	5874631254	2021
YZA3456	Rosa	9	6762410855	2021
BCD7890	Laranja	10	3567892512	2021
EFG1234	Roxo	1	2548963218	2022
HIJ5678	Marrom	2	5874631254	2022
KLM9012	Bege	3	6762410855	2022
NOP3456	Turquesa	4	3567892512	2023
QRS7890	Prata	5	2548963218	2023
TUV1234	Preto	6	5874631254	2023
WXYZ567	Branco	7	6762410855	2024
ABC8901	Azul	8	3567892512	2024
DEF2345	Prata	9	2548963218	2024
GHI6789	Preto	10	5874631254	2024
JJJ-2020	Preto	1	5762410855	2024
JEG-1010	Branco	2	2067892512	2024
\.


--
-- Name: estaciona_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estaciona_seq', 22, true);


--
-- Name: estaciona pk_cod_estaciona; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estaciona
    ADD CONSTRAINT pk_cod_estaciona PRIMARY KEY (cod_estac);


--
-- Name: cliente pk_cpf; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT pk_cpf PRIMARY KEY (cpf);


--
-- Name: modelo pk_modelo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.modelo
    ADD CONSTRAINT pk_modelo PRIMARY KEY (codmodelo);


--
-- Name: patio pk_num; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patio
    ADD CONSTRAINT pk_num PRIMARY KEY (patio_num);


--
-- Name: veiculo pk_placa; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.veiculo
    ADD CONSTRAINT pk_placa PRIMARY KEY (placa);


--
-- Name: veiculo fk_cliente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.veiculo
    ADD CONSTRAINT fk_cliente FOREIGN KEY (cpf) REFERENCES public.cliente(cpf);


--
-- Name: veiculo fk_codmodelo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.veiculo
    ADD CONSTRAINT fk_codmodelo FOREIGN KEY (codmodelo) REFERENCES public.modelo(codmodelo);


--
-- Name: estaciona fk_patio_num; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estaciona
    ADD CONSTRAINT fk_patio_num FOREIGN KEY (patio_num) REFERENCES public.patio(patio_num);


--
-- Name: estaciona fk_placa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estaciona
    ADD CONSTRAINT fk_placa FOREIGN KEY (veiculo_placa) REFERENCES public.veiculo(placa);


--
-- PostgreSQL database dump complete
--

