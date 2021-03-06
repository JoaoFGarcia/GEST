--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.4

-- Started on 2021-09-21 09:31:45

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
--
-- TOC entry 3023 (class 1262 OID 16533)
-- Name: GEST; Type: DATABASE; Schema: -; Owner: postgres
--

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
-- TOC entry 205 (class 1259 OID 16632)
-- Name: cnae; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cnae (
    id integer NOT NULL,
    codigo_cnae integer NOT NULL,
    descricao character varying(255) NOT NULL
);


ALTER TABLE public.cnae OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16630)
-- Name: cnae_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cnae_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cnae_id_seq OWNER TO postgres;

--
-- TOC entry 3024 (class 0 OID 0)
-- Dependencies: 204
-- Name: cnae_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cnae_id_seq OWNED BY public.cnae.id;


--
-- TOC entry 206 (class 1259 OID 16640)
-- Name: estado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estado (
    id character(2) NOT NULL,
    nome character varying(19) NOT NULL,
    codigo integer
);


ALTER TABLE public.estado OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16621)
-- Name: fornecedor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fornecedor (
    id integer NOT NULL,
    atividade_principal integer,
    data_situacao date,
    tipo character varying(15),
    nome character varying(255),
    uf character(2),
    telefone character varying(30),
    email character varying(100),
    situacao character varying(20),
    bairro character varying(50),
    logradouro character varying(150),
    numero character varying(10),
    cep character varying(9),
    municipio character varying(50),
    porte character varying(10),
    abertura date,
    natureza_juridica character varying(255),
    cnpj character varying(18),
    nome_fantasia character varying(250),
    complemento character varying(250),
    ente_federativo character varying(255),
    situacao_especial character varying(255),
    motivo_situacaoesp character varying(255),
    data_situacaoesp date,
    capital_social numeric
);


ALTER TABLE public.fornecedor OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16619)
-- Name: fornecedor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fornecedor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fornecedor_id_seq OWNER TO postgres;

--
-- TOC entry 3025 (class 0 OID 0)
-- Dependencies: 202
-- Name: fornecedor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fornecedor_id_seq OWNED BY public.fornecedor.id;


--
-- TOC entry 201 (class 1259 OID 16610)
-- Name: qsa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.qsa (
    id integer NOT NULL,
    nome character varying(255) NOT NULL,
    qualificacao character varying(250),
    "ID_FORNECEDOR" integer
);


ALTER TABLE public.qsa OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16608)
-- Name: qsa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.qsa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.qsa_id_seq OWNER TO postgres;

--
-- TOC entry 3026 (class 0 OID 0)
-- Dependencies: 200
-- Name: qsa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.qsa_id_seq OWNED BY public.qsa.id;


--
-- TOC entry 2870 (class 2604 OID 16635)
-- Name: cnae id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cnae ALTER COLUMN id SET DEFAULT nextval('public.cnae_id_seq'::regclass);


--
-- TOC entry 2869 (class 2604 OID 16624)
-- Name: fornecedor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fornecedor ALTER COLUMN id SET DEFAULT nextval('public.fornecedor_id_seq'::regclass);


--
-- TOC entry 2868 (class 2604 OID 16613)
-- Name: qsa id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.qsa ALTER COLUMN id SET DEFAULT nextval('public.qsa_id_seq'::regclass);


--
-- TOC entry 3016 (class 0 OID 16632)
-- Dependencies: 205
-- Data for Name: cnae; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1, 111301, 'Cultivo de arroz');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (2, 111302, 'Cultivo de milho');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (3, 111303, 'Cultivo de trigo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (4, 111399, 'Cultivo de outros cereais n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (5, 112101, 'Cultivo de algod??o herb??ceo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (6, 112102, 'Cultivo de juta');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (7, 112199, 'Cultivo de outras fibras de lavoura tempor??ria n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (8, 113000, 'Cultivo de canadea????car');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (9, 114800, 'Cultivo de fumo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (10, 115600, 'Cultivo de soja');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (11, 116401, 'Cultivo de amendoim');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (12, 116402, 'Cultivo de girassol');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (13, 116403, 'Cultivo de mamona');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (14, 116499, 'Cultivo de outras oleaginosas de lavoura tempor??ria n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (15, 119901, 'Cultivo de abacaxi');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (16, 119902, 'Cultivo de alho');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (17, 119903, 'Cultivo de batatainglesa');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (18, 119904, 'Cultivo de cebola');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (19, 119905, 'Cultivo de feij??o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (20, 119906, 'Cultivo de mandioca');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (21, 119907, 'Cultivo de mel??o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (22, 119908, 'Cultivo de melancia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (23, 119909, 'Cultivo de tomate rasteiro');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (24, 119999, 'Cultivo de outras plantas de lavoura tempor??ria n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (25, 121101, 'Horticultura, exceto morango');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (26, 121102, 'Cultivo de morango');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (27, 122900, 'Floricultura');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (28, 131800, 'Cultivo de laranja');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (29, 132600, 'Cultivo de uva');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (30, 133401, 'Cultivo de a??a??');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (31, 133402, 'Cultivo de banana');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (32, 133403, 'Cultivo de caju');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (33, 133404, 'Cultivo de c??tricos, exceto laranja');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (34, 133405, 'Cultivo de cocodaba??a');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (35, 133406, 'Cultivo de guaran??');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (36, 133407, 'Cultivo de ma????');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (37, 133408, 'Cultivo de mam??o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (38, 133409, 'Cultivo de maracuj??');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (39, 133410, 'Cultivo de manga');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (40, 133411, 'Cultivo de p??ssego');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (41, 133499, 'Cultivo de frutas de lavoura permanente n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (42, 134200, 'Cultivo de caf??');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (43, 135100, 'Cultivo de cacau');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (44, 139301, 'Cultivo de ch??da??ndia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (45, 139302, 'Cultivo de ervamate');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (46, 139303, 'Cultivo de pimentadoreino');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (47, 139304, 'Cultivo de plantas para condimento, exceto pimentadoreino');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (48, 139305, 'Cultivo de dend??');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (49, 139306, 'Cultivo de seringueira');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (50, 139399, 'Cultivo de outras plantas de lavoura permanente n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (51, 141501, 'Produ????o de sementes certificadas, exceto de forrageiras para pasto');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (52, 141502, 'Produ????o de sementes certificadas de forrageiras para forma????o de pasto');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (53, 142300, 'Produ????o de mudas e outras formas de propaga????o vegetal, certificadas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (54, 151201, 'Cria????o de bovinos para corte');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (55, 151202, 'Cria????o de bovinos para leite');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (56, 151203, 'Cria????o de bovinos, exceto para corte e leite');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (57, 152101, 'Cria????o de bufalinos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (58, 152102, 'Cria????o de eq??inos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (59, 152103, 'Cria????o de asininos e muares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (60, 153901, 'Cria????o de caprinos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (61, 153902, 'Cria????o de ovinos, inclusive para produ????o de l??');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (62, 154700, 'Cria????o de su??nos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (63, 155501, 'Cria????o de frangos para corte');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (64, 155502, 'Produ????o de pintos de um dia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (65, 155503, 'Cria????o de outros galin??ceos, exceto para corte');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (66, 155504, 'Cria????o de aves, exceto galin??ceos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (67, 155505, 'Produ????o de ovos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (68, 159801, 'Apicultura');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (69, 159802, 'Cria????o de animais de estima????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (70, 159803, 'Cria????o de escarg??');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (71, 159804, 'Cria????o de bichodaseda');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (72, 159899, 'Cria????o de outros animais n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (73, 161001, 'Servi??o de pulveriza????o e controle de pragas agr??colas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (74, 161002, 'Servi??o de poda de ??rvores para lavouras');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (75, 161003, 'Servi??o de prepara????o de terreno, cultivo e colheita');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (76, 161099, 'Atividades de apoio ?? agricultura n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (77, 162801, 'Servi??o de insemina????o artificial de animais *');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (78, 162802, 'Servi??o de tosquiamento de ovinos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (79, 162803, 'Servi??o de manejo de animais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (80, 162899, 'Atividades de apoio ?? pecu??ria n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (81, 163600, 'Atividades de p??scolheita');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (82, 170900, 'Ca??a e servi??os relacionados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (83, 210101, 'Cultivo de eucalipto');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (84, 210102, 'Cultivo de ac??cianegra');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (85, 210103, 'Cultivo de pinus');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (86, 210104, 'Cultivo de teca');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (87, 210105, 'Cultivo de esp??cies madeireiras, exceto eucalipto, ac??cianegra, pinus e teca');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (88, 210106, 'Cultivo de mudas em viveiros florestais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (89, 210107, 'Extra????o de madeira em florestas plantadas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (90, 210108, 'Produ????o de carv??o vegetal  florestas plantadas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (91, 210109, 'Produ????o de casca de ac??cianegra  florestas plantadas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (92, 210199, 'Produ????o de produtos n??omadeireiros n??o especificados anteriormente em florestas plantadas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (93, 220901, 'Extra????o de madeira em florestas nativas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (94, 220902, 'Produ????o de carv??o vegetal  florestas nativas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (95, 220903, 'Coleta de castanhadopar?? em florestas nativas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (96, 220904, 'Coleta de l??tex em florestas nativas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (97, 220905, 'Coleta de palmito em florestas nativas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (98, 220906, 'Conserva????o de florestas nativas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (99, 220999, 'Coleta de produtos n??omadeireiros n??o especificados anteriormente em florestas nativas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (100, 230600, 'Atividades de apoio ?? produ????o florestal');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (101, 311601, 'Pesca de peixes em ??gua salgada');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (102, 311602, 'Pesca de crust??ceos e moluscos em ??gua salgada');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (103, 311603, 'Coleta de outros produtos marinhos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (104, 311604, 'Atividades de apoio ?? pesca em ??gua salgada');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (105, 312401, 'Pesca de peixes em ??gua doce');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (106, 312402, 'Pesca de crust??ceos e moluscos em ??gua doce');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (107, 312403, 'Coleta de outros produtos aqu??ticos de ??gua doce');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (108, 312404, 'Atividades de apoio ?? pesca em ??gua doce');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (109, 321301, 'Cria????o de peixes em ??gua salgada e salobra');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (110, 321302, 'Cria????o de camar??es em ??gua salgada e salobra');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (111, 321303, 'Cria????o de ostras e mexilh??es em ??gua salgada e salobra');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (112, 321304, 'Cria????o de peixes ornamentais em ??gua salgada e salobra');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (113, 321305, 'Atividades de apoio ?? aq??icultura em ??gua salgada e salobra');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (114, 321399, 'Cultivos e semicultivos da aq??icultura em ??gua salgada e salobra n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (115, 322101, 'Cria????o de peixes em ??gua doce');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (116, 322102, 'Cria????o de camar??es em ??gua doce');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (117, 322103, 'Cria????o de ostras e mexilh??es em ??gua doce');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (118, 322104, 'Cria????o de peixes ornamentais em ??gua doce');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (119, 322105, 'Ranicultura');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (120, 322106, 'Cria????o de jacar??');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (121, 322107, 'Atividades de apoio ?? aq??icultura em ??gua doce');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (122, 322199, 'Cultivos e semicultivos da aq??icultura em ??gua doce n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (123, 500301, 'Extra????o de carv??o mineral');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (124, 500302, 'Beneficiamento de carv??o mineral');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (125, 600001, 'Extra????o de petr??leo e g??s natural');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (126, 600002, 'Extra????o e beneficiamento de xisto');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (127, 600003, 'Extra????o e beneficiamento de areias betuminosas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (128, 710301, 'Extra????o de min??rio de ferro');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (129, 710302, 'Pelotiza????o, sinteriza????o e outros beneficiamentos de min??rio de ferro');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (130, 721901, 'Extra????o de min??rio de alum??nio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (131, 721902, 'Beneficiamento de min??rio de alum??nio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (132, 722701, 'Extra????o de min??rio de estanho');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (133, 722702, 'Beneficiamento de min??rio de estanho');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (134, 723501, 'Extra????o de min??rio de mangan??s');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (135, 723502, 'Beneficiamento de min??rio de mangan??s');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (136, 724301, 'Extra????o de min??rio de metais preciosos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (137, 724302, 'Beneficiamento de min??rio de metais preciosos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (138, 725100, 'Extra????o de minerais radioativos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (139, 729401, 'Extra????o de min??rios de ni??bio e tit??nio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (140, 729402, 'Extra????o de min??rio de tungst??nio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (141, 729403, 'Extra????o de min??rio de n??quel');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (142, 729404, 'Extra????o de min??rios de cobre, chumbo, zinco e outros minerais met??licos n??oferrosos n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (143, 729405, 'Beneficiamento de min??rios de cobre, chumbo, zinco e outros minerais met??licos n??oferrosos n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (144, 810001, 'Extra????o de ard??sia e beneficiamento associado');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (145, 810002, 'Extra????o de granito e beneficiamento associado');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (146, 810003, 'Extra????o de m??rmore e beneficiamento associado');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (147, 810004, 'Extra????o de calc??rio e dolomita e beneficiamento associado');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (148, 810005, 'Extra????o de gesso e caulim');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (149, 810006, 'Extra????o de areia, cascalho ou pedregulho e beneficiamento associado');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (150, 810007, 'Extra????o de argila e beneficiamento associado');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (151, 810008, 'Extra????o de saibro e beneficiamento associado');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (152, 810009, 'Extra????o de basalto e beneficiamento associado');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (153, 810010, 'Beneficiamento de gesso e caulim associado ?? extra????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (154, 810099, 'Extra????o e britamento de pedras e outros materiais para constru????o e beneficiamento associado');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (155, 891600, 'Extra????o de minerais para fabrica????o de adubos, fertilizantes e outros produtos qu??micos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (156, 892401, 'Extra????o de sal marinho');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (157, 892402, 'Extra????o de salgema');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (158, 892403, 'Refino e outros tratamentos do sal');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (159, 893200, 'Extra????o de gemas (pedras preciosas e semipreciosas)');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (160, 899101, 'Extra????o de grafita');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (161, 899102, 'Extra????o de quartzo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (162, 899103, 'Extra????o de amianto');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (163, 899199, 'Extra????o de outros minerais n??omet??licos n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (164, 910600, 'Atividades de apoio ?? extra????o de petr??leo e g??s natural');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (165, 990401, 'Atividades de apoio ?? extra????o de min??rio de ferro');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (166, 990402, 'Atividades de apoio ?? extra????o de minerais met??licos n??oferrosos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (167, 990403, 'Atividades de apoio ?? extra????o de minerais n??omet??licos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (168, 1011201, 'Frigor??fico  abate de bovinos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (169, 1011202, 'Frigor??fico  abate de eq??inos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (170, 1011203, 'Frigor??fico  abate de ovinos e caprinos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (171, 1011204, 'Frigor??fico  abate de bufalinos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (172, 1011205, 'Matadouro  abate de reses sob contrato  exceto abate de su??nos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (173, 1012101, 'Abate de aves');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (174, 1012102, 'Abate de pequenos animais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (175, 1012103, 'Frigor??fico  abate de su??nos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (176, 1012104, 'Matadouro  abate de su??nos sob contrato');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (177, 1013901, 'Fabrica????o de produtos de carne');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (178, 1013902, 'Prepara????o de subprodutos do abate');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (179, 1020101, 'Preserva????o de peixes, crust??ceos e moluscos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (180, 1020102, 'Fabrica????o de conservas de peixes, crust??ceos e moluscos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (181, 1031700, 'Fabrica????o de conservas de frutas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (182, 1032501, 'Fabrica????o de conservas de palmito');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (183, 1032599, 'Fabrica????o de conservas de legumes e outros vegetais, exceto palmito');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (184, 1033301, 'Fabrica????o de sucos concentrados de frutas, hortali??as e legumes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (185, 1033302, 'Fabrica????o de sucos de frutas, hortali??as e legumes, exceto concentrados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (186, 1041400, 'Fabrica????o de ??leos vegetais em bruto, exceto ??leo de milho');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (187, 1042200, 'Fabrica????o de ??leos vegetais refinados, exceto ??leo de milho');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (188, 1043100, 'Fabrica????o de margarina e outras gorduras vegetais e de ??leos n??ocomest??veis de animais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (189, 1051100, 'Prepara????o do leite');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (190, 1052000, 'Fabrica????o de latic??nios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (191, 1053800, 'Fabrica????o de sorvetes e outros gelados comest??veis');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (192, 1061901, 'Beneficiamento de arroz');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (193, 1061902, 'Fabrica????o de produtos do arroz');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (194, 1062700, 'Moagem de trigo e fabrica????o de derivados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (195, 1063500, 'Fabrica????o de farinha de mandioca e derivados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (196, 1064300, 'Fabrica????o de farinha de milho e derivados, exceto ??leos de milho');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (197, 1065101, 'Fabrica????o de amidos e f??culas de vegetais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (198, 1065102, 'Fabrica????o de ??leo de milho em bruto');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (199, 1065103, 'Fabrica????o de ??leo de milho refinado');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (200, 1066000, 'Fabrica????o de alimentos para animais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (594, 3831999, 'Recupera????o de materiais met??licos, exceto alum??nio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (201, 1069400, 'Moagem e fabrica????o de produtos de origem vegetal n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (202, 1071600, 'Fabrica????o de a????car em bruto');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (203, 1072401, 'Fabrica????o de a????car de cana refinado');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (204, 1072402, 'Fabrica????o de a????car de cereais (dextrose) e de beterraba');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (205, 1081301, 'Beneficiamento de caf??');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (206, 1081302, 'Torrefa????o e moagem de caf??');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (207, 1082100, 'Fabrica????o de produtos ?? base de caf??');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (208, 1091100, 'Fabrica????o de produtos de panifica????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (209, 1092900, 'Fabrica????o de biscoitos e bolachas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (210, 1093701, 'Fabrica????o de produtos derivados do cacau e de chocolates');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (211, 1093702, 'Fabrica????o de frutas cristalizadas, balas e semelhantes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (212, 1094500, 'Fabrica????o de massas aliment??cias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (213, 1095300, 'Fabrica????o de especiarias, molhos, temperos e condimentos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (214, 1096100, 'Fabrica????o de alimentos e pratos prontos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (215, 1099601, 'Fabrica????o de vinagres');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (216, 1099602, 'Fabrica????o de p??s aliment??cios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (217, 1099603, 'Fabrica????o de fermentos e leveduras');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (218, 1099604, 'Fabrica????o de gelo comum');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (219, 1099605, 'Fabrica????o de produtos para infus??o (ch??, mate, etc.)');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (220, 1099606, 'Fabrica????o de ado??antes naturais e artificiais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (221, 1099699, 'Fabrica????o de outros produtos aliment??cios n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (222, 1111901, 'Fabrica????o de aguardente de canadea????car');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (223, 1111902, 'Fabrica????o de outras aguardentes e bebidas destiladas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (224, 1112700, 'Fabrica????o de vinho');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (225, 1113501, 'Fabrica????o de malte, inclusive malte u??sque');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (226, 1113502, 'Fabrica????o de cervejas e chopes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (227, 1121600, 'Fabrica????o de ??guas envasadas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (228, 1122401, 'Fabrica????o de refrigerantes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (229, 1122402, 'Fabrica????o de ch?? mate e outros ch??s prontos para consumo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (230, 1122403, 'Fabrica????o de refrescos, xaropes e p??s para refrescos, exceto refrescos de frutas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (231, 1122499, 'Fabrica????o de outras bebidas n??oalco??licas n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (232, 1210700, 'Processamento industrial do fumo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (233, 1220401, 'Fabrica????o de cigarros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (234, 1220402, 'Fabrica????o de cigarrilhas e charutos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (235, 1220403, 'Fabrica????o de filtros para cigarros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (236, 1220499, 'Fabrica????o de outros produtos do fumo, exceto cigarros, cigarrilhas e charutos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (237, 1311100, 'Prepara????o e fia????o de fibras de algod??o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (238, 1312000, 'Prepara????o e fia????o de fibras t??xteis naturais, exceto algod??o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (239, 1313800, 'Fia????o de fibras artificiais e sint??ticas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (240, 1314600, 'Fabrica????o de linhas para costurar e bordar');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (241, 1321900, 'Tecelagem de fios de algod??o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (242, 1322700, 'Tecelagem de fios de fibras t??xteis naturais, exceto algod??o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (243, 1323500, 'Tecelagem de fios de fibras artificiais e sint??ticas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (244, 1330800, 'Fabrica????o de tecidos de malha');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (245, 1340501, 'Estamparia e texturiza????o em fios, tecidos, artefatos t??xteis e pe??as do vestu??rio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (246, 1340502, 'Alvejamento, tingimento e tor????o em fios, tecidos, artefatos t??xteis e pe??as do vestu??rio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (247, 1340599, 'Outros servi??os de acabamento em fios, tecidos, artefatos t??xteis e pe??as do vestu??rio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (248, 1351100, 'Fabrica????o de artefatos t??xteis para uso dom??stico');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (249, 1352900, 'Fabrica????o de artefatos de tape??aria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (250, 1353700, 'Fabrica????o de artefatos de cordoaria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (251, 1354500, 'Fabrica????o de tecidos especiais, inclusive artefatos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (252, 1359600, 'Fabrica????o de outros produtos t??xteis n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (253, 1411801, 'Confec????o de roupas ??ntimas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (254, 1411802, 'Fac????o de roupas ??ntimas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (255, 1412601, 'Confec????o de pe??as do vestu??rio, exceto roupas ??ntimas e as confeccionadas sob medida');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (256, 1412602, 'Confec????o, sob medida, de pe??as do vestu??rio, exceto roupas ??ntimas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (257, 1412603, 'Fac????o de pe??as do vestu??rio, exceto roupas ??ntimas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (258, 1413401, 'Confec????o de roupas profissionais, exceto sob medida');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (259, 1413402, 'Confec????o, sob medida, de roupas profissionais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (260, 1413403, 'Fac????o de roupas profissionais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (261, 1414200, 'Fabrica????o de acess??rios do vestu??rio, exceto para seguran??a e prote????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (262, 1421500, 'Fabrica????o de meias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (263, 1422300, 'Fabrica????o de artigos do vestu??rio, produzidos em malharias e tricotagens, exceto meias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (264, 1510600, 'Curtimento e outras prepara????es de couro');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (265, 1521100, 'Fabrica????o de artigos para viagem, bolsas e semelhantes de qualquer material');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (266, 1529700, 'Fabrica????o de artefatos de couro n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (267, 1531901, 'Fabrica????o de cal??ados de couro');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (268, 1531902, 'Acabamento de cal??ados de couro sob contrato');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (269, 1532700, 'Fabrica????o de t??nis de qualquer material');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (270, 1533500, 'Fabrica????o de cal??ados de material sint??tico');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (271, 1539400, 'Fabrica????o de cal??ados de materiais n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (272, 1540800, 'Fabrica????o de partes para cal??ados, de qualquer material');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (273, 1610201, 'Serrarias com desdobramento de madeira');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (274, 1610202, 'Serrarias sem desdobramento de madeira');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (275, 1621800, 'Fabrica????o de madeira laminada e de chapas de madeira compensada, prensada e aglomerada');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (276, 1622601, 'Fabrica????o de casas de madeira pr??fabricadas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (277, 1622602, 'Fabrica????o de esquadrias de madeira e de pe??as de madeira para instala????es industriais e comerciais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (278, 1622699, 'Fabrica????o de outros artigos de carpintaria para constru????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (279, 1623400, 'Fabrica????o de artefatos de tanoaria e de embalagens de madeira');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (280, 1629301, 'Fabrica????o de artefatos diversos de madeira, exceto m??veis');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (281, 1629302, 'Fabrica????o de artefatos diversos de corti??a, bambu, palha, vime e outros materiais tran??ados, exceto m??veis');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (282, 1710900, 'Fabrica????o de celulose e outras pastas para a fabrica????o de papel');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (283, 1721400, 'Fabrica????o de papel');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (284, 1722200, 'Fabrica????o de cartolina e papelcart??o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (285, 1731100, 'Fabrica????o de embalagens de papel');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (286, 1732000, 'Fabrica????o de embalagens de cartolina e papelcart??o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (287, 1733800, 'Fabrica????o de chapas e de embalagens de papel??o ondulado');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (288, 1741901, 'Fabrica????o de formul??rios cont??nuos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (289, 1741902, 'Fabrica????o de produtos de papel, cartolina, papelcart??o e papel??o ondulado para uso industrial, comercial e de escrit??rio, exceto formul??rio cont??nuo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (290, 1742701, 'Fabrica????o de fraldas descart??veis');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (291, 1742702, 'Fabrica????o de absorventes higi??nicos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (292, 1742799, 'Fabrica????o de produtos de papel para uso dom??stico e higi??nicosanit??rio n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (293, 1749400, 'Fabrica????o de produtos de pastas celul??sicas, papel, cartolina, papelcart??o e papel??o ondulado n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (294, 1811301, 'Impress??o de jornais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (295, 1811302, 'Impress??o de livros, revistas e outras publica????es peri??dicas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (296, 1812100, 'Impress??o de material de seguran??a');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (297, 1813001, 'Impress??o de material para uso publicit??rio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (298, 1813099, 'Impress??o de material para outros usos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (299, 1821100, 'Servi??os de pr??impress??o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (300, 1822900, 'Servi??os de acabamentos gr??ficos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (301, 1830001, 'Reprodu????o de som em qualquer suporte');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (302, 1830002, 'Reprodu????o de v??deo em qualquer suporte');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (303, 1830003, 'Reprodu????o de software em qualquer suporte');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (304, 1910100, 'Coquerias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (305, 1921700, 'Fabrica????o de produtos do refino de petr??leo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (306, 1922501, 'Formula????o de combust??veis');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (307, 1922502, 'Rerrefino de ??leos lubrificantes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (308, 1922599, 'Fabrica????o de outros produtos derivados do petr??leo, exceto produtos do refino');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (309, 1931400, 'Fabrica????o de ??lcool');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (310, 1932200, 'Fabrica????o de biocombust??veis, exceto ??lcool');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (311, 2011800, 'Fabrica????o de cloro e ??lcalis');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (312, 2012600, 'Fabrica????o de intermedi??rios para fertilizantes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (313, 2013400, 'Fabrica????o de adubos e fertilizantes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (314, 2014200, 'Fabrica????o de gases industriais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (315, 2019301, 'Elabora????o de combust??veis nucleares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (316, 2019399, 'Fabrica????o de outros produtos qu??micos inorg??nicos n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (317, 2021500, 'Fabrica????o de produtos petroqu??micos b??sicos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (318, 2022300, 'Fabrica????o de intermedi??rios para plastificantes, resinas e fibras');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (319, 2029100, 'Fabrica????o de produtos qu??micos org??nicos n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (320, 2031200, 'Fabrica????o de resinas termopl??sticas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (321, 2032100, 'Fabrica????o de resinas termofixas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (322, 2033900, 'Fabrica????o de elast??meros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (323, 2040100, 'Fabrica????o de fibras artificiais e sint??ticas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (324, 2051700, 'Fabrica????o de defensivos agr??colas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (325, 2052500, 'Fabrica????o de desinfestantes domissanit??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (326, 2061400, 'Fabrica????o de sab??es e detergentes sint??ticos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (327, 2062200, 'Fabrica????o de produtos de limpeza e polimento');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (328, 2063100, 'Fabrica????o de cosm??ticos, produtos de perfumaria e de higiene pessoal');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (329, 2071100, 'Fabrica????o de tintas, vernizes, esmaltes e lacas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (330, 2072000, 'Fabrica????o de tintas de impress??o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (331, 2073800, 'Fabrica????o de impermeabilizantes, solventes e produtos afins');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (332, 2091600, 'Fabrica????o de adesivos e selantes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (333, 2092401, 'Fabrica????o de p??lvoras, explosivos e detonantes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (334, 2092402, 'Fabrica????o de artigos pirot??cnicos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (335, 2092403, 'Fabrica????o de f??sforos de seguran??a');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (336, 2093200, 'Fabrica????o de aditivos de uso industrial');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (337, 2094100, 'Fabrica????o de catalisadores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (338, 2099101, 'Fabrica????o de chapas, filmes, pap??is e outros materiais e produtos qu??micos para fotografia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (339, 2099199, 'Fabrica????o de outros produtos qu??micos n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (340, 2110600, 'Fabrica????o de produtos farmoqu??micos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (341, 2121101, 'Fabrica????o de medicamentos alop??ticos para uso humano');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (342, 2121102, 'Fabrica????o de medicamentos homeop??ticos para uso humano');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (343, 2121103, 'Fabrica????o de medicamentos fitoter??picos para uso humano');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (344, 2122000, 'Fabrica????o de medicamentos para uso veterin??rio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (345, 2123800, 'Fabrica????o de prepara????es farmac??uticas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (346, 2211100, 'Fabrica????o de pneum??ticos e de c??marasdear');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (347, 2212900, 'Reforma de pneum??ticos usados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (348, 2219600, 'Fabrica????o de artefatos de borracha n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (349, 2221800, 'Fabrica????o de laminados planos e tubulares de material pl??stico');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (350, 2222600, 'Fabrica????o de embalagens de material pl??stico');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (351, 2223400, 'Fabrica????o de tubos e acess??rios de material pl??stico para uso na constru????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (352, 2229301, 'Fabrica????o de artefatos de material pl??stico para uso pessoal e dom??stico');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (353, 2229302, 'Fabrica????o de artefatos de material pl??stico para usos industriais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (354, 2229303, 'Fabrica????o de artefatos de material pl??stico para uso na constru????o, exceto tubos e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (355, 2229399, 'Fabrica????o de artefatos de material pl??stico para outros usos n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (356, 2311700, 'Fabrica????o de vidro plano e de seguran??a');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (357, 2312500, 'Fabrica????o de embalagens de vidro');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (358, 2319200, 'Fabrica????o de artigos de vidro');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (359, 2320600, 'Fabrica????o de cimento');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (360, 2330301, 'Fabrica????o de estruturas pr??moldadas de concreto armado, em s??rie e sob encomenda');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (361, 2330302, 'Fabrica????o de artefatos de cimento para uso na constru????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (362, 2330303, 'Fabrica????o de artefatos de fibrocimento para uso na constru????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (363, 2330304, 'Fabrica????o de casas pr??moldadas de concreto');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (364, 2330305, 'Prepara????o de massa de concreto e argamassa para constru????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (365, 2330399, 'Fabrica????o de outros artefatos e produtos de concreto, cimento, fibrocimento, gesso e materiais semelhantes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (366, 2341900, 'Fabrica????o de produtos cer??micos refrat??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (367, 2342701, 'Fabrica????o de azulejos e pisos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (368, 2342702, 'Fabrica????o de artefatos de cer??mica e barro cozido para uso na constru????o, exceto azulejos e pisos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (369, 2349401, 'Fabrica????o de material sanit??rio de cer??mica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (370, 2349499, 'Fabrica????o de produtos cer??micos n??orefrat??rios n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (371, 2391501, 'Britamento de pedras, exceto associado ?? extra????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (372, 2391502, 'Aparelhamento de pedras para constru????o, exceto associado ?? extra????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (373, 2391503, 'Aparelhamento de placas e execu????o de trabalhos em m??rmore, granito, ard??sia e outras pedras');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (374, 2392300, 'Fabrica????o de cal e gesso');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (375, 2399101, 'Decora????o, lapida????o, grava????o, vitrifica????o e outros trabalhos em cer??mica, lou??a, vidro e cristal');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (376, 2399199, 'Fabrica????o de outros produtos de minerais n??omet??licos n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (377, 2411300, 'Produ????o de ferrogusa');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (378, 2412100, 'Produ????o de ferroligas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (379, 2421100, 'Produ????o de semiacabados de a??o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (380, 2422901, 'Produ????o de laminados planos de a??o ao carbono, revestidos ou n??o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (381, 2422902, 'Produ????o de laminados planos de a??os especiais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (382, 2423701, 'Produ????o de tubos de a??o sem costura');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (383, 2423702, 'Produ????o de laminados longos de a??o, exceto tubos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (384, 2424501, 'Produ????o de arames de a??o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (385, 2424502, 'Produ????o de relaminados, trefilados e perfilados de a??o, exceto arames');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (386, 2431800, 'Produ????o de tubos de a??o com costura');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (387, 2439300, 'Produ????o de outros tubos de ferro e a??o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (388, 2441501, 'Produ????o de alum??nio e suas ligas em formas prim??rias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (389, 2441502, 'Produ????o de laminados de alum??nio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (390, 2442300, 'Metalurgia dos metais preciosos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (391, 2443100, 'Metalurgia do cobre');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (392, 2449101, 'Produ????o de zinco em formas prim??rias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (393, 2449102, 'Produ????o de laminados de zinco');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (394, 2449103, 'Produ????o de soldas e ??nodos para galvanoplastia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (395, 2449199, 'Metalurgia de outros metais n??oferrosos e suas ligas n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (396, 2451200, 'Fundi????o de ferro e a??o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (397, 2452100, 'Fundi????o de metais n??oferrosos e suas ligas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (398, 2511000, 'Fabrica????o de estruturas met??licas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (399, 2512800, 'Fabrica????o de esquadrias de metal');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (400, 2513600, 'Fabrica????o de obras de caldeiraria pesada');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (401, 2521700, 'Fabrica????o de tanques, reservat??rios met??licos e caldeiras para aquecimento central');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (402, 2522500, 'Fabrica????o de caldeiras geradoras de vapor, exceto para aquecimento central e para ve??culos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (403, 2531401, 'Produ????o de forjados de a??o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (404, 2531402, 'Produ????o de forjados de metais n??oferrosos e suas ligas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (405, 2532201, 'Produ????o de artefatos estampados de metal');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (406, 2532202, 'Metalurgia do p??');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (407, 2539000, 'Servi??os de usinagem, solda, tratamento e revestimento em metais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (408, 2541100, 'Fabrica????o de artigos de cutelaria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (409, 2542000, 'Fabrica????o de artigos de serralheria, exceto esquadrias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (410, 2543800, 'Fabrica????o de ferramentas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (411, 2550101, 'Fabrica????o de equipamento b??lico pesado, exceto ve??culos militares de combate');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (412, 2550102, 'Fabrica????o de armas de fogo e muni????es');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (413, 2591800, 'Fabrica????o de embalagens met??licas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (414, 2592601, 'Fabrica????o de produtos de trefilados de metal padronizados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (415, 2592602, 'Fabrica????o de produtos de trefilados de metal, exceto padronizados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (416, 2593400, 'Fabrica????o de artigos de metal para uso dom??stico e pessoal');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (417, 2599301, 'Servi??os de confec????o de arma????es met??licas para a constru????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (418, 2599399, 'Fabrica????o de outros produtos de metal n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (419, 2610800, 'Fabrica????o de componentes eletr??nicos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (420, 2621300, 'Fabrica????o de equipamentos de inform??tica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (421, 2622100, 'Fabrica????o de perif??ricos para equipamentos de inform??tica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (422, 2631100, 'Fabrica????o de equipamentos transmissores de comunica????o, pe??as e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (423, 2632900, 'Fabrica????o de aparelhos telef??nicos e de outros equipamentos de comunica????o, pe??as e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (424, 2640000, 'Fabrica????o de aparelhos de recep????o, reprodu????o, grava????o e amplifica????o de ??udio e v??deo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (425, 2651500, 'Fabrica????o de aparelhos e equipamentos de medida, teste e controle');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (426, 2652300, 'Fabrica????o de cron??metros e rel??gios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (427, 2660400, 'Fabrica????o de aparelhos eletrom??dicos e eletroterap??uticos e equipamentos de irradia????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (428, 2670101, 'Fabrica????o de equipamentos e instrumentos ??pticos, pe??as e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (429, 2670102, 'Fabrica????o de aparelhos fotogr??ficos e cinematogr??ficos, pe??as e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (430, 2680900, 'Fabrica????o de m??dias virgens, magn??ticas e ??pticas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (431, 2710401, 'Fabrica????o de geradores de corrente cont??nua e alternada, pe??as e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (432, 2710402, 'Fabrica????o de transformadores, indutores, conversores, sincronizadores e semelhantes, pe??as e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (433, 2710403, 'Fabrica????o de motores el??tricos, pe??as e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (434, 2721000, 'Fabrica????o de pilhas, baterias e acumuladores el??tricos, exceto para ve??culos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (435, 2722801, 'Fabrica????o de baterias e acumuladores para ve??culos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (436, 2722802, 'Recondicionamento de baterias e acumuladores para ve??culos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (437, 2731700, 'Fabrica????o de aparelhos e equipamentos para distribui????o e controle de energia el??trica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (438, 2732500, 'Fabrica????o de material el??trico para instala????es em circuito de consumo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (439, 2733300, 'Fabrica????o de fios, cabos e condutores el??tricos isolados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (440, 2740601, 'Fabrica????o de l??mpadas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (441, 2740602, 'Fabrica????o de lumin??rias e outros equipamentos de ilumina????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (442, 2751100, 'Fabrica????o de fog??es, refrigeradores e m??quinas de lavar e secar para uso dom??stico, pe??as e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (443, 2759701, 'Fabrica????o de aparelhos el??tricos de uso pessoal, pe??as e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (444, 2759799, 'Fabrica????o de outros aparelhos eletrodom??sticos n??o especificados anteriormente, pe??as e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (445, 2790201, 'Fabrica????o de eletrodos, contatos e outros artigos de carv??o e grafita para uso el??trico, eletro??m??s e isoladores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (446, 2790202, 'Fabrica????o de equipamentos para sinaliza????o e alarme');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (447, 2790299, 'Fabrica????o de outros equipamentos e aparelhos el??tricos n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (448, 2811900, 'Fabrica????o de motores e turbinas, pe??as e acess??rios, exceto para avi??es e ve??culos rodovi??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (449, 2812700, 'Fabrica????o de equipamentos hidr??ulicos e pneum??ticos, pe??as e acess??rios, exceto v??lvulas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (450, 2813500, 'Fabrica????o de v??lvulas, registros e dispositivos semelhantes, pe??as e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (451, 2814301, 'Fabrica????o de compressores para uso industrial, pe??as e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (452, 2814302, 'Fabrica????o de compressores para uso n??o industrial, pe??as e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (453, 2815101, 'Fabrica????o de rolamentos para fins industriais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1000, 6424703, 'Cooperativas de cr??dito m??tuo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (454, 2815102, 'Fabrica????o de equipamentos de transmiss??o para fins industriais, exceto rolamentos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (455, 2821601, 'Fabrica????o de fornos industriais, aparelhos e equipamentos n??oel??tricos para instala????es t??rmicas, pe??as e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (456, 2821602, 'Fabrica????o de estufas e fornos el??tricos para fins industriais, pe??as e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (457, 2822401, 'Fabrica????o de m??quinas, equipamentos e aparelhos para transporte e eleva????o de pessoas, pe??as e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (458, 2822402, 'Fabrica????o de m??quinas, equipamentos e aparelhos para transporte e eleva????o de cargas, pe??as e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (459, 2823200, 'Fabrica????o de m??quinas e aparelhos de refrigera????o e ventila????o para uso industrial e comercial, pe??as e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (460, 2824101, 'Fabrica????o de aparelhos e equipamentos de ar condicionado para uso industrial');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (461, 2824102, 'Fabrica????o de aparelhos e equipamentos de ar condicionado para uso n??oindustrial');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (462, 2825900, 'Fabrica????o de m??quinas e equipamentos para saneamento b??sico e ambiental, pe??as e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (463, 2829101, 'Fabrica????o de m??quinas de escrever, calcular e outros equipamentos n??oeletr??nicos para escrit??rio, pe??as e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (464, 2829199, 'Fabrica????o de outras m??quinas e equipamentos de uso geral n??o especificados anteriormente, pe??as e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (465, 2831300, 'Fabrica????o de tratores agr??colas, pe??as e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (466, 2832100, 'Fabrica????o de equipamentos para irriga????o agr??cola, pe??as e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (467, 2833000, 'Fabrica????o de m??quinas e equipamentos para a agricultura e pecu??ria, pe??as e acess??rios, exceto para irriga????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (468, 2840200, 'Fabrica????o de m??quinasferramenta, pe??as e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (469, 2851800, 'Fabrica????o de m??quinas e equipamentos para a prospec????o e extra????o de petr??leo, pe??as e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (470, 2852600, 'Fabrica????o de outras m??quinas e equipamentos para uso na extra????o mineral, pe??as e acess??rios, exceto na extra????o de petr??leo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (471, 2853400, 'Fabrica????o de tratores, pe??as e acess??rios, exceto agr??colas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (472, 2854200, 'Fabrica????o de m??quinas e equipamentos para terraplenagem, pavimenta????o e constru????o, pe??as e acess??rios, exceto tratores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (473, 2861500, 'Fabrica????o de m??quinas para a ind??stria metal??rgica, pe??as e acess??rios, exceto m??quinasferramenta');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (474, 2862300, 'Fabrica????o de m??quinas e equipamentos para as ind??strias de alimentos, bebidas e fumo, pe??as e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (475, 2863100, 'Fabrica????o de m??quinas e equipamentos para a ind??stria t??xtil, pe??as e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (476, 2864000, 'Fabrica????o de m??quinas e equipamentos para as ind??strias do vestu??rio, do couro e de cal??ados, pe??as e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (477, 2865800, 'Fabrica????o de m??quinas e equipamentos para as ind??strias de celulose, papel e papel??o e artefatos, pe??as e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (478, 2866600, 'Fabrica????o de m??quinas e equipamentos para a ind??stria do pl??stico, pe??as e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (479, 2869100, 'Fabrica????o de m??quinas e equipamentos para uso industrial espec??fico n??o especificados anteriormente, pe??as e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (480, 2910701, 'Fabrica????o de autom??veis, camionetas e utilit??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (481, 2910702, 'Fabrica????o de chassis com motor para autom??veis, camionetas e utilit??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (482, 2910703, 'Fabrica????o de motores para autom??veis, camionetas e utilit??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (483, 2920401, 'Fabrica????o de caminh??es e ??nibus');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (484, 2920402, 'Fabrica????o de motores para caminh??es e ??nibus');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (485, 2930101, 'Fabrica????o de cabines, carrocerias e reboques para caminh??es');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (486, 2930102, 'Fabrica????o de carrocerias para ??nibus');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (487, 2930103, 'Fabrica????o de cabines, carrocerias e reboques para outros ve??culos automotores, exceto caminh??es e ??nibus');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (488, 2941700, 'Fabrica????o de pe??as e acess??rios para o sistema motor de ve??culos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (489, 2942500, 'Fabrica????o de pe??as e acess??rios para os sistemas de marcha e transmiss??o de ve??culos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (490, 2943300, 'Fabrica????o de pe??as e acess??rios para o sistema de freios de ve??culos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (491, 2944100, 'Fabrica????o de pe??as e acess??rios para o sistema de dire????o e suspens??o de ve??culos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (492, 2945000, 'Fabrica????o de material el??trico e eletr??nico para ve??culos automotores, exceto baterias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (493, 2949201, 'Fabrica????o de bancos e estofados para ve??culos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (494, 2949299, 'Fabrica????o de outras pe??as e acess??rios para ve??culos automotores n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (495, 2950600, 'Recondicionamento e recupera????o de motores para ve??culos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (496, 3011301, 'Constru????o de embarca????es de grande porte');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (497, 3011302, 'Constru????o de embarca????es para uso comercial e para usos especiais, exceto de grande porte');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (498, 3012100, 'Constru????o de embarca????es para esporte e lazer');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (499, 3021100, 'Manuten????o e repara????o de embarca????es e estruturas flutuantes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (500, 3022900, 'Manuten????o e repara????o de embarca????es para esporte e lazer');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (501, 3031800, 'Fabrica????o de locomotivas, vag??es e outros materiais rodantes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (502, 3032600, 'Fabrica????o de pe??as e acess??rios para ve??culos ferrovi??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (503, 3041500, 'Fabrica????o de aeronaves');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (504, 3042300, 'Fabrica????o de turbinas, motores e outros componentes e pe??as para aeronaves');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (505, 3050400, 'Fabrica????o de ve??culos militares de combate');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (506, 3091100, 'Fabrica????o de motocicletas, pe??as e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (507, 3092000, 'Fabrica????o de bicicletas e triciclos n??omotorizados, pe??as e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (508, 3099700, 'Fabrica????o de equipamentos de transporte n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (509, 3101200, 'Fabrica????o de m??veis com predomin??ncia de madeira');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (510, 3102100, 'Fabrica????o de m??veis com predomin??ncia de metal');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (511, 3103900, 'Fabrica????o de m??veis de outros materiais, exceto madeira e metal');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (512, 3104700, 'Fabrica????o de colch??es');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (513, 3211601, 'Lapida????o de gemas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (514, 3211602, 'Fabrica????o de artefatos de joalheria e ourivesaria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (515, 3211603, 'Cunhagem de moedas e medalhas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (516, 3212400, 'Fabrica????o de bijuterias e artefatos semelhantes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (517, 3220500, 'Fabrica????o de instrumentos musicais, pe??as e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (518, 3230200, 'Fabrica????o de artefatos para pesca e esporte');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (519, 3240001, 'Fabrica????o de jogos eletr??nicos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (520, 3240002, 'Fabrica????o de mesas de bilhar, de sinuca e acess??rios n??o associada ?? loca????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (521, 3240003, 'Fabrica????o de mesas de bilhar, de sinuca e acess??rios associada ?? loca????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (595, 3832700, 'Recupera????o de materiais pl??sticos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (522, 3240099, 'Fabrica????o de outros brinquedos e jogos recreativos n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (523, 3250701, 'Fabrica????o de instrumentos n??oeletr??nicos e utens??lios para uso m??dico, cir??rgico, odontol??gico e de laborat??rio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (524, 3250702, 'Fabrica????o de mobili??rio para uso m??dico, cir??rgico, odontol??gico e de laborat??rio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (525, 3250703, 'Fabrica????o de aparelhos e utens??lios para corre????o de defeitos f??sicos e aparelhos ortop??dicos em geral sob encomenda');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (526, 3250704, 'Fabrica????o de aparelhos e utens??lios para corre????o de defeitos f??sicos e aparelhos ortop??dicos em geral, exceto sob encomenda');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (527, 3250705, 'Fabrica????o de materiais para medicina e odontologia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (528, 3250706, 'Servi??os de pr??tese dent??ria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (529, 3250707, 'Fabrica????o de artigos ??pticos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (530, 3250708, 'Fabrica????o de artefatos de tecido n??o tecido para uso odontom??dicohospitalar');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (531, 3291400, 'Fabrica????o de escovas, pinc??is e vassouras');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (532, 3292201, 'Fabrica????o de roupas de prote????o e seguran??a e resistentes a fogo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (533, 3292202, 'Fabrica????o de equipamentos e acess??rios para seguran??a pessoal e profissional');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (534, 3299001, 'Fabrica????o de guardachuvas e similares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (535, 3299002, 'Fabrica????o de canetas, l??pis e outros artigos para escrit??rio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (536, 3299003, 'Fabrica????o de letras, letreiros e placas de qualquer material, exceto luminosos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (537, 3299004, 'Fabrica????o de pain??is e letreiros luminosos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (538, 3299005, 'Fabrica????o de aviamentos para costura');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (539, 3299099, 'Fabrica????o de produtos diversos n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (540, 3311200, 'Manuten????o e repara????o de tanques, reservat??rios met??licos e caldeiras, exceto para ve??culos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (541, 3312101, 'Manuten????o e repara????o de equipamentos transmissores de comunica????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (542, 3312102, 'Manuten????o e repara????o de aparelhos e instrumentos de medida, teste e controle');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (543, 3312103, 'Manuten????o e repara????o de aparelhos eletrom??dicos e eletroterap??uticos e equipamentos de irradia????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (544, 3312104, 'Manuten????o e repara????o de equipamentos e instrumentos ??pticos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (545, 3313901, 'Manuten????o e repara????o de geradores, transformadores e motores el??tricos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (546, 3313902, 'Manuten????o e repara????o de baterias e acumuladores el??tricos, exceto para ve??culos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (547, 3313999, 'Manuten????o e repara????o de m??quinas, aparelhos e materiais el??tricos n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (548, 3314701, 'Manuten????o e repara????o de m??quinas motrizes n??oel??tricas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (549, 3314702, 'Manuten????o e repara????o de equipamentos hidr??ulicos e pneum??ticos, exceto v??lvulas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (550, 3314703, 'Manuten????o e repara????o de v??lvulas industriais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (551, 3314704, 'Manuten????o e repara????o de compressores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (552, 3314705, 'Manuten????o e repara????o de equipamentos de transmiss??o para fins industriais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (553, 3314706, 'Manuten????o e repara????o de m??quinas, aparelhos e equipamentos para instala????es t??rmicas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (554, 3314707, 'Manuten????o e repara????o de m??quinas e aparelhos de refrigera????o e ventila????o para uso industrial e comercial');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (555, 3314708, 'Manuten????o e repara????o de m??quinas, equipamentos e aparelhos para transporte e eleva????o de cargas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (556, 3314709, 'Manuten????o e repara????o de m??quinas de escrever, calcular e de outros equipamentos n??oeletr??nicos para escrit??rio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (557, 3314710, 'Manuten????o e repara????o de m??quinas e equipamentos para uso geral n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (558, 3314711, 'Manuten????o e repara????o de m??quinas e equipamentos para agricultura e pecu??ria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (559, 3314712, 'Manuten????o e repara????o de tratores agr??colas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (560, 3314713, 'Manuten????o e repara????o de m??quinasferramenta');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (561, 3314714, 'Manuten????o e repara????o de m??quinas e equipamentos para a prospec????o e extra????o de petr??leo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (562, 3314715, 'Manuten????o e repara????o de m??quinas e equipamentos para uso na extra????o mineral, exceto na extra????o de petr??leo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (563, 3314716, 'Manuten????o e repara????o de tratores, exceto agr??colas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (564, 3314717, 'Manuten????o e repara????o de m??quinas e equipamentos de terraplenagem, pavimenta????o e constru????o, exceto tratores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (565, 3314718, 'Manuten????o e repara????o de m??quinas para a ind??stria metal??rgica, exceto m??quinasferramenta');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (566, 3314719, 'Manuten????o e repara????o de m??quinas e equipamentos para as ind??strias de alimentos, bebidas e fumo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (567, 3314720, 'Manuten????o e repara????o de m??quinas e equipamentos para a ind??stria t??xtil, do vestu??rio, do couro e cal??ados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (568, 3314721, 'Manuten????o e repara????o de m??quinas e aparelhos para a ind??stria de celulose, papel e papel??o e artefatos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (569, 3314722, 'Manuten????o e repara????o de m??quinas e aparelhos para a ind??stria do pl??stico');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (570, 3314799, 'Manuten????o e repara????o de outras m??quinas e equipamentos para usos industriais n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (571, 3315500, 'Manuten????o e repara????o de ve??culos ferrovi??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (572, 3316301, 'Manuten????o e repara????o de aeronaves, exceto a manuten????o na pista');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (573, 3316302, 'Manuten????o de aeronaves na pista *');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (574, 3319800, 'Manuten????o e repara????o de equipamentos e produtos n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (575, 3321000, 'Instala????o de m??quinas e equipamentos industriais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (576, 3329501, 'Servi??os de montagem de m??veis de qualquer material');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (577, 3329599, 'Instala????o de outros equipamentos n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (578, 3511500, 'Gera????o de energia el??trica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (579, 3512300, 'Transmiss??o de energia el??trica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (580, 3513100, 'Com??rcio atacadista de energia el??trica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (581, 3514000, 'Distribui????o de energia el??trica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (582, 3520401, 'Produ????o de g??s; processamento de g??s natural');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (583, 3520402, 'Distribui????o de combust??veis gasosos por redes urbanas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (584, 3530100, 'Produ????o e distribui????o de vapor, ??gua quente e ar condicionado');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (585, 3600601, 'Capta????o, tratamento e distribui????o de ??gua');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (586, 3600602, 'Distribui????o de ??gua por caminh??es');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (587, 3701100, 'Gest??o de redes de esgoto');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (588, 3702900, 'Atividades relacionadas a esgoto, exceto a gest??o de redes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (589, 3811400, 'Coleta de res??duos n??operigosos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (590, 3812200, 'Coleta de res??duos perigosos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (591, 3821100, 'Tratamento e disposi????o de res??duos n??operigosos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (592, 3822000, 'Tratamento e disposi????o de res??duos perigosos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (593, 3831901, 'Recupera????o de sucatas de alum??nio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (596, 3839401, 'Usinas de compostagem');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (597, 3839499, 'Recupera????o de materiais n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (598, 3900500, 'Descontamina????o e outros servi??os de gest??o de res??duos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (599, 4110700, 'Incorpora????o de empreendimentos imobili??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (600, 4120400, 'Constru????o de edif??cios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (601, 4211101, 'Constru????o de rodovias e ferrovias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (602, 4211102, 'Pintura para sinaliza????o em pistas rodovi??rias e aeroportos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (603, 4212000, 'Constru????o de obras de arte especiais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (604, 4213800, 'Obras de urbaniza????o  ruas, pra??as e cal??adas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (605, 4221901, 'Constru????o de barragens e represas para gera????o de energia el??trica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (606, 4221902, 'Constru????o de esta????es e redes de distribui????o de energia el??trica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (607, 4221903, 'Manuten????o de redes de distribui????o de energia el??trica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (608, 4221904, 'Constru????o de esta????es e redes de telecomunica????es');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (609, 4221905, 'Manuten????o de esta????es e redes de telecomunica????es');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (610, 4222701, 'Constru????o de redes de abastecimento de ??gua, coleta de esgoto e constru????es correlatas, exceto obras de irriga????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (611, 4222702, 'Obras de irriga????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (612, 4223500, 'Constru????o de redes de transportes por dutos, exceto para ??gua e esgoto');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (613, 4291000, 'Obras portu??rias, mar??timas e fluviais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (614, 4292801, 'Montagem de estruturas met??licas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (615, 4292802, 'Obras de montagem industrial');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (616, 4299501, 'Constru????o de instala????es esportivas e recreativas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (617, 4299599, 'Outras obras de engenharia civil n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (618, 4311801, 'Demoli????o de edif??cios e outras estruturas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (619, 4311802, 'Prepara????o de canteiro e limpeza de terreno');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (620, 4312600, 'Perfura????es e sondagens');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (621, 4313400, 'Obras de terraplenagem');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (622, 4319300, 'Servi??os de prepara????o do terreno n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (623, 4321500, 'Instala????o e manuten????o el??trica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (624, 4322301, 'Instala????es hidr??ulicas, sanit??rias e de g??s');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (625, 4322302, 'Instala????o e manuten????o de sistemas centrais de ar condicionado, de ventila????o e refrigera????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (626, 4322303, 'Instala????es de sistema de preven????o contra inc??ndio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (627, 4329101, 'Instala????o de pain??is publicit??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (628, 4329102, 'Instala????o de equipamentos para orienta????o ?? navega????o mar??tima, fluvial e lacustre');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (629, 4329103, 'Instala????o, manuten????o e repara????o de elevadores, escadas e esteiras rolantes, exceto de fabrica????o pr??pria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (630, 4329104, 'Montagem e instala????o de sistemas e equipamentos de ilumina????o e sinaliza????o em vias p??blicas, portos e aeroportos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (631, 4329105, 'Tratamentos t??rmicos, ac??sticos ou de vibra????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (632, 4329199, 'Outras obras de instala????es em constru????es n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (633, 4330401, 'Impermeabiliza????o em obras de engenharia civil');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (634, 4330402, 'Instala????o de portas, janelas, tetos, divis??rias e arm??rios embutidos de qualquer material');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (635, 4330403, 'Obras de acabamento em gesso e estuque');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (636, 4330404, 'Servi??os de pintura de edif??cios em geral');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (637, 4330405, 'Aplica????o de revestimentos e de resinas em interiores e exteriores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (638, 4330499, 'Outras obras de acabamento da constru????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (639, 4391600, 'Obras de funda????es');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (640, 4399101, 'Administra????o de obras');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (641, 4399102, 'Montagem e desmontagem de andaimes e outras estruturas tempor??rias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (642, 4399103, 'Obras de alvenaria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (643, 4399104, 'Servi??os de opera????o e fornecimento de equipamentos para transporte e eleva????o de cargas e pessoas para uso em obras');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (644, 4399105, 'Perfura????o e constru????o de po??os de ??gua');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (645, 4399199, 'Servi??os especializados para constru????o n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (646, 4511101, 'Com??rcio a varejo de autom??veis, camionetas e utilit??rios novos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (647, 4511102, 'Com??rcio a varejo de autom??veis, camionetas e utilit??rios usados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (648, 4511103, 'Com??rcio por atacado de autom??veis, camionetas e utilit??rios novos e usados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (649, 4511104, 'Com??rcio por atacado de caminh??es novos e usados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (650, 4511105, 'Com??rcio por atacado de reboques e semireboques novos e usados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (651, 4511106, 'Com??rcio por atacado de ??nibus e micro??nibus novos e usados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (652, 4512901, 'Representantes comerciais e agentes do com??rcio de ve??culos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (653, 4512902, 'Com??rcio sob consigna????o de ve??culos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (654, 4520001, 'Servi??os de manuten????o e repara????o mec??nica de ve??culos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (655, 4520002, 'Servi??os de lanternagem ou funilaria e pintura de ve??culos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (656, 4520003, 'Servi??os de manuten????o e repara????o el??trica de ve??culos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (657, 4520004, 'Servi??os de alinhamento e balanceamento de ve??culos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (658, 4520005, 'Servi??os de lavagem, lubrifica????o e polimento de ve??culos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (659, 4520006, 'Servi??os de borracharia para ve??culos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (660, 4520007, 'Servi??os de instala????o, manuten????o e repara????o de acess??rios para ve??culos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (661, 4530701, 'Com??rcio por atacado de pe??as e acess??rios novos para ve??culos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (662, 4530702, 'Com??rcio por atacado de pneum??ticos e c??marasdear');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (663, 4530703, 'Com??rcio a varejo de pe??as e acess??rios novos para ve??culos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (664, 4530704, 'Com??rcio a varejo de pe??as e acess??rios usados para ve??culos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (665, 4530705, 'Com??rcio a varejo de pneum??ticos e c??marasdear');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (666, 4530706, 'Representantes comerciais e agentes do com??rcio de pe??as e acess??rios novos e usados para ve??culos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (667, 4541201, 'Com??rcio por atacado de motocicletas e motonetas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (668, 4541202, 'Com??rcio por atacado de pe??as e acess??rios para motocicletas e motonetas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (669, 4541203, 'Com??rcio a varejo de motocicletas e motonetas novas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (670, 4541204, 'Com??rcio a varejo de motocicletas e motonetas usadas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (671, 4541205, 'Com??rcio a varejo de pe??as e acess??rios para motocicletas e motonetas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (672, 4542101, 'Representantes comerciais e agentes do com??rcio de motocicletas e motonetas, pe??as e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (673, 4542102, 'Com??rcio sob consigna????o de motocicletas e motonetas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (674, 4543900, 'Manuten????o e repara????o de motocicletas e motonetas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (675, 4611700, 'Representantes comerciais e agentes do com??rcio de mat??riasprimas agr??colas e animais vivos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (827, 4755501, 'Com??rcio varejista de tecidos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (676, 4612500, 'Representantes comerciais e agentes do com??rcio de combust??veis, minerais, produtos sider??rgicos e qu??micos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (677, 4613300, 'Representantes comerciais e agentes do com??rcio de madeira, material de constru????o e ferragens');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (678, 4614100, 'Representantes comerciais e agentes do com??rcio de m??quinas, equipamentos, embarca????es e aeronaves');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (679, 4615000, 'Representantes comerciais e agentes do com??rcio de eletrodom??sticos, m??veis e artigos de uso dom??stico');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (680, 4616800, 'Representantes comerciais e agentes do com??rcio de t??xteis, vestu??rio, cal??ados e artigos de viagem');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (681, 4617600, 'Representantes comerciais e agentes do com??rcio de produtos aliment??cios, bebidas e fumo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (682, 4618401, 'Representantes comerciais e agentes do com??rcio de medicamentos, cosm??ticos e produtos de perfumaria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (683, 4618402, 'Representantes comerciais e agentes do com??rcio de instrumentos e materiais odontom??dicohospitalares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (684, 4618403, 'Representantes comerciais e agentes do com??rcio de jornais, revistas e outras publica????es');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (685, 4618499, 'Outros representantes comerciais e agentes do com??rcio especializado em produtos n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (686, 4619200, 'Representantes comerciais e agentes do com??rcio de mercadorias em geral n??o especializado');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (687, 4621400, 'Com??rcio atacadista de caf?? em gr??o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (688, 4622200, 'Com??rcio atacadista de soja');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (689, 4623101, 'Com??rcio atacadista de animais vivos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (690, 4623102, 'Com??rcio atacadista de couros, l??s, peles e outros subprodutos n??ocomest??veis de origem animal');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (691, 4623103, 'Com??rcio atacadista de algod??o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (692, 4623104, 'Com??rcio atacadista de fumo em folha n??o beneficiado');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (693, 4623105, 'Com??rcio atacadista de cacau *');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (694, 4623106, 'Com??rcio atacadista de sementes, flores, plantas e gramas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (695, 4623107, 'Com??rcio atacadista de sisal');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (696, 4623108, 'Com??rcio atacadista de mat??riasprimas agr??colas com atividade de fracionamento e acondicionamento associada');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (697, 4623109, 'Com??rcio atacadista de alimentos para animais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (698, 4623199, 'Com??rcio atacadista de mat??riasprimas agr??colas n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (699, 4631100, 'Com??rcio atacadista de leite e latic??nios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (700, 4632001, 'Com??rcio atacadista de cereais e leguminosas beneficiados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (701, 4632002, 'Com??rcio atacadista de farinhas, amidos e f??culas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (702, 4632003, 'Com??rcio atacadista de cereais e leguminosas beneficiados, farinhas, amidos e f??culas, com atividade de fracionamento e acondicionamento associada');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (703, 4633801, 'Com??rcio atacadista de frutas, verduras, ra??zes, tub??rculos, hortali??as e legumes frescos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (704, 4633802, 'Com??rcio atacadista de aves vivas e ovos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (705, 4633803, 'Com??rcio atacadista de coelhos e outros pequenos animais vivos para alimenta????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (706, 4634601, 'Com??rcio atacadista de carnes bovinas e su??nas e derivados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (707, 4634602, 'Com??rcio atacadista de aves abatidas e derivados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (708, 4634603, 'Com??rcio atacadista de pescados e frutos do mar');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (709, 4634699, 'Com??rcio atacadista de carnes e derivados de outros animais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (710, 4635401, 'Com??rcio atacadista de ??gua mineral');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (711, 4635402, 'Com??rcio atacadista de cerveja, chope e refrigerante');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (712, 4635403, 'Com??rcio atacadista de bebidas com atividade de fracionamento e acondicionamento associada');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (713, 4635499, 'Com??rcio atacadista de bebidas n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (714, 4636201, 'Com??rcio atacadista de fumo beneficiado');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (715, 4636202, 'Com??rcio atacadista de cigarros, cigarrilhas e charutos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (716, 4637101, 'Com??rcio atacadista de caf?? torrado, mo??do e sol??vel');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (717, 4637102, 'Com??rcio atacadista de a????car');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (718, 4637103, 'Com??rcio atacadista de ??leos e gorduras');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (719, 4637104, 'Com??rcio atacadista de p??es, bolos, biscoitos e similares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (720, 4637105, 'Com??rcio atacadista de massas aliment??cias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (721, 4637106, 'Com??rcio atacadista de sorvetes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (722, 4637107, 'Com??rcio atacadista de chocolates, confeitos, balas, bombons e semelhantes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (723, 4637199, 'Com??rcio atacadista especializado em outros produtos aliment??cios n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (724, 4639701, 'Com??rcio atacadista de produtos aliment??cios em geral');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (725, 4639702, 'Com??rcio atacadista de produtos aliment??cios em geral, com atividade de fracionamento e acondicionamento associada');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (726, 4641901, 'Com??rcio atacadista de tecidos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (727, 4641902, 'Com??rcio atacadista de artigos de cama, mesa e banho');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (728, 4641903, 'Com??rcio atacadista de artigos de armarinho');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (729, 4642701, 'Com??rcio atacadista de artigos do vestu??rio e acess??rios, exceto profissionais e de seguran??a');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (730, 4642702, 'Com??rcio atacadista de roupas e acess??rios para uso profissional e de seguran??a do trabalho');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (731, 4643501, 'Com??rcio atacadista de cal??ados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (732, 4643502, 'Com??rcio atacadista de bolsas, malas e artigos de viagem');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (733, 4644301, 'Com??rcio atacadista de medicamentos e drogas de uso humano');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (734, 4644302, 'Com??rcio atacadista de medicamentos e drogas de uso veterin??rio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (735, 4645101, 'Com??rcio atacadista de instrumentos e materiais para uso m??dico, cir??rgico, hospitalar e de laborat??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (736, 4645102, 'Com??rcio atacadista de pr??teses e artigos de ortopedia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (737, 4645103, 'Com??rcio atacadista de produtos odontol??gicos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (738, 4646001, 'Com??rcio atacadista de cosm??ticos e produtos de perfumaria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (739, 4646002, 'Com??rcio atacadista de produtos de higiene pessoal');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (740, 4647801, 'Com??rcio atacadista de artigos de escrit??rio e de papelaria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (741, 4647802, 'Com??rcio atacadista de livros, jornais e outras publica????es');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (742, 4649401, 'Com??rcio atacadista de equipamentos el??tricos de uso pessoal e dom??stico');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (743, 4649402, 'Com??rcio atacadista de aparelhos eletr??nicos de uso pessoal e dom??stico');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (744, 4649403, 'Com??rcio atacadista de bicicletas, triciclos e outros ve??culos recreativos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (745, 4649404, 'Com??rcio atacadista de m??veis e artigos de colchoaria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (746, 4649405, 'Com??rcio atacadista de artigos de tape??aria; persianas e cortinas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (747, 4649406, 'Com??rcio atacadista de lustres, lumin??rias e abajures');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (748, 4649407, 'Com??rcio atacadista de filmes, CDs, DVDs, fitas e discos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (749, 4649408, 'Com??rcio atacadista de produtos de higiene, limpeza e conserva????o domiciliar');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (750, 4649409, 'Com??rcio atacadista de produtos de higiene, limpeza e conserva????o domiciliar, com atividade de fracionamento e acondicionamento associada');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (751, 4649410, 'Com??rcio atacadista de j??ias, rel??gios e bijuterias, inclusive pedras preciosas e semipreciosas lapidadas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (752, 4649499, 'Com??rcio atacadista de outros equipamentos e artigos de uso pessoal e dom??stico n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (753, 4651601, 'Com??rcio atacadista de equipamentos de inform??tica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (754, 4651602, 'Com??rcio atacadista de suprimentos para inform??tica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (755, 4652400, 'Com??rcio atacadista de componentes eletr??nicos e equipamentos de telefonia e comunica????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (756, 4661300, 'Com??rcio atacadista de m??quinas, aparelhos e equipamentos para uso agropecu??rio; partes e pe??as');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (757, 4662100, 'Com??rcio atacadista de m??quinas, equipamentos para terraplenagem, minera????o e constru????o; partes e pe??as');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (758, 4663000, 'Com??rcio atacadista de m??quinas e equipamentos para uso industrial; partes e pe??as');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (759, 4664800, 'Com??rcio atacadista de m??quinas, aparelhos e equipamentos para uso odontom??dicohospitalar; partes e pe??as');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (760, 4665600, 'Com??rcio atacadista de m??quinas e equipamentos para uso comercial; partes e pe??as');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (761, 4669901, 'Com??rcio atacadista de bombas e compressores; partes e pe??as');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (762, 4669999, 'Com??rcio atacadista de outras m??quinas e equipamentos n??o especificados anteriormente; partes e pe??as');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (763, 4671100, 'Com??rcio atacadista de madeira e produtos derivados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (764, 4672900, 'Com??rcio atacadista de ferragens e ferramentas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (765, 4673700, 'Com??rcio atacadista de material el??trico');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (766, 4674500, 'Com??rcio atacadista de cimento');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (767, 4679601, 'Com??rcio atacadista de tintas, vernizes e similares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (768, 4679602, 'Com??rcio atacadista de m??rmores e granitos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (769, 4679603, 'Com??rcio atacadista de vidros, espelhos e vitrais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (770, 4679604, 'Com??rcio atacadista especializado de materiais de constru????o n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (771, 4679699, 'Com??rcio atacadista de materiais de constru????o em geral');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (772, 4681801, 'Com??rcio atacadista de ??lcool carburante, biodiesel, gasolina e demais derivados de petr??leo, exceto lubrificantes, n??o realizado por transportador retalhista (TRR)');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (773, 4681802, 'Com??rcio atacadista de combust??veis realizado por transportador retalhista (TRR)');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (774, 4681803, 'Com??rcio atacadista de combust??veis de origem vegetal, exceto ??lcool carburante');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (775, 4681804, 'Com??rcio atacadista de combust??veis de origem mineral em bruto');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (776, 4681805, 'Com??rcio atacadista de lubrificantes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (777, 4682600, 'Com??rcio atacadista de g??s liq??efeito de petr??leo (GLP)');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (778, 4683400, 'Com??rcio atacadista de defensivos agr??colas, adubos, fertilizantes e corretivos do solo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (779, 4684201, 'Com??rcio atacadista de resinas e elast??meros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (780, 4684202, 'Com??rcio atacadista de solventes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (781, 4684299, 'Com??rcio atacadista de outros produtos qu??micos e petroqu??micos n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (782, 4685100, 'Com??rcio atacadista de produtos sider??rgicos e metal??rgicos, exceto para constru????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (783, 4686901, 'Com??rcio atacadista de papel e papel??o em bruto');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (784, 4686902, 'Com??rcio atacadista de embalagens');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (785, 4687701, 'Com??rcio atacadista de res??duos de papel e papel??o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (786, 4687702, 'Com??rcio atacadista de res??duos e sucatas n??omet??licos, exceto de papel e papel??o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (787, 4687703, 'Com??rcio atacadista de res??duos e sucatas met??licos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (788, 4689301, 'Com??rcio atacadista de produtos da extra????o mineral, exceto combust??veis');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (789, 4689302, 'Com??rcio atacadista de fios e fibras t??xteis beneficiados *');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (790, 4689399, 'Com??rcio atacadista especializado em outros produtos intermedi??rios n??o especificados anteriormente *');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (791, 4691500, 'Com??rcio atacadista de mercadorias em geral, com predomin??ncia de produtos aliment??cios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (792, 4692300, 'Com??rcio atacadista de mercadorias em geral, com predomin??ncia de insumos agropecu??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (793, 4693100, 'Com??rcio atacadista de mercadorias em geral, sem predomin??ncia de alimentos ou de insumos agropecu??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (794, 4711301, 'Com??rcio varejista de mercadorias em geral, com predomin??ncia de produtos aliment??cios  hipermercados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (795, 4711302, 'Com??rcio varejista de mercadorias em geral, com predomin??ncia de produtos aliment??cios  supermercados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (796, 4712100, 'Com??rcio varejista de mercadorias em geral, com predomin??ncia de produtos aliment??cios  minimercados, mercearias e armaz??ns');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (797, 4713001, 'Lojas de departamentos ou magazines');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (798, 4713002, 'Lojas de variedades, exceto lojas de departamentos ou magazines');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (799, 4713003, 'Lojas duty free de aeroportos internacionais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (800, 4721101, 'Padaria e confeitaria com predomin??ncia de produ????o pr??pria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (801, 4721102, 'Padaria e confeitaria com predomin??ncia de revenda');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (802, 4721103, 'Com??rcio varejista de latic??nios e frios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (803, 4721104, 'Com??rcio varejista de doces, balas, bombons e semelhantes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (804, 4722901, 'Com??rcio varejista de carnes  a??ougues');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (805, 4722902, 'Peixaria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (806, 4723700, 'Com??rcio varejista de bebidas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (807, 4724500, 'Com??rcio varejista de hortifrutigranjeiros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (808, 4729601, 'Tabacaria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (809, 4729699, 'Com??rcio varejista de produtos aliment??cios em geral ou especializado em produtos aliment??cios n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (810, 4731800, 'Com??rcio varejista de combust??veis para ve??culos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (811, 4732600, 'Com??rcio varejista de lubrificantes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (812, 4741500, 'Com??rcio varejista de tintas e materiais para pintura');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (813, 4742300, 'Com??rcio varejista de material el??trico');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (814, 4743100, 'Com??rcio varejista de vidros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (815, 4744001, 'Com??rcio varejista de ferragens e ferramentas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (816, 4744002, 'Com??rcio varejista de madeira e artefatos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (817, 4744003, 'Com??rcio varejista de materiais hidr??ulicos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (818, 4744004, 'Com??rcio varejista de cal, areia, pedra britada, tijolos e telhas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (819, 4744005, 'Com??rcio varejista de materiais de constru????o n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (820, 4744099, 'Com??rcio varejista de materiais de constru????o em geral');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (821, 4751200, 'Com??rcio varejista especializado de equipamentos e suprimentos de inform??tica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (822, 4752100, 'Com??rcio varejista especializado de equipamentos de telefonia e comunica????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (823, 4753900, 'Com??rcio varejista especializado de eletrodom??sticos e equipamentos de ??udio e v??deo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (824, 4754701, 'Com??rcio varejista de m??veis');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (825, 4754702, 'Com??rcio varejista de artigos de colchoaria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (826, 4754703, 'Com??rcio varejista de artigos de ilumina????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (828, 4755502, 'Comercio varejista de artigos de armarinho');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (829, 4755503, 'Comercio varejista de artigos de cama, mesa e banho');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (830, 4756300, 'Com??rcio varejista especializado de instrumentos musicais e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (831, 4757100, 'Com??rcio varejista especializado de pe??as e acess??rios para aparelhos eletroeletr??nicos para uso dom??stico, exceto inform??tica e comunica????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (832, 4759801, 'Com??rcio varejista de artigos de tape??aria, cortinas e persianas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (833, 4759899, 'Com??rcio varejista de outros artigos de uso dom??stico n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (834, 4761001, 'Com??rcio varejista de livros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (835, 4761002, 'Com??rcio varejista de jornais e revistas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (836, 4761003, 'Com??rcio varejista de artigos de papelaria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (837, 4762800, 'Com??rcio varejista de discos, CDs, DVDs e fitas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (838, 4763601, 'Com??rcio varejista de brinquedos e artigos recreativos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (839, 4763602, 'Com??rcio varejista de artigos esportivos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (840, 4763603, 'Com??rcio varejista de bicicletas e triciclos; pe??as e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (841, 4763604, 'Com??rcio varejista de artigos de ca??a, pesca e camping');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (842, 4763605, 'Com??rcio varejista de embarca????es e outros ve??culos recreativos; pe??as e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (843, 4771701, 'Com??rcio varejista de produtos farmac??uticos, sem manipula????o de f??rmulas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (844, 4771702, 'Com??rcio varejista de produtos farmac??uticos, com manipula????o de f??rmulas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (845, 4771703, 'Com??rcio varejista de produtos farmac??uticos homeop??ticos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (846, 4771704, 'Com??rcio varejista de medicamentos veterin??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (847, 4772500, 'Com??rcio varejista de cosm??ticos, produtos de perfumaria e de higiene pessoal');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (848, 4773300, 'Com??rcio varejista de artigos m??dicos e ortop??dicos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (849, 4774100, 'Com??rcio varejista de artigos de ??ptica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (850, 4781400, 'Com??rcio varejista de artigos do vestu??rio e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (851, 4782201, 'Com??rcio varejista de cal??ados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (852, 4782202, 'Com??rcio varejista de artigos de viagem');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (853, 4783101, 'Com??rcio varejista de artigos de joalheria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (854, 4783102, 'Com??rcio varejista de artigos de relojoaria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (855, 4784900, 'Com??rcio varejista de g??s liq??efeito de petr??leo (GLP)');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (856, 4785701, 'Com??rcio varejista de antig??idades');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (857, 4785799, 'Com??rcio varejista de outros artigos usados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (858, 4789001, 'Com??rcio varejista de suvenires, bijuterias e artesanatos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (859, 4789002, 'Com??rcio varejista de plantas e flores naturais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (860, 4789003, 'Com??rcio varejista de objetos de arte');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (861, 4789004, 'Com??rcio varejista de animais vivos e de artigos e alimentos para animais de estima????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (862, 4789005, 'Com??rcio varejista de produtos saneantes domissanit??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (863, 4789006, 'Com??rcio varejista de fogos de artif??cio e artigos pirot??cnicos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (864, 4789007, 'Com??rcio varejista de equipamentos para escrit??rio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (865, 4789008, 'Com??rcio varejista de artigos fotogr??ficos e para filmagem');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (866, 4789009, 'Com??rcio varejista de armas e muni????es');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (867, 4789099, 'Com??rcio varejista de outros produtos n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (868, 4911600, 'Transporte ferrovi??rio de carga');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (869, 4912401, 'Transporte ferrovi??rio de passageiros intermunicipal e interestadual');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (870, 4912402, 'Transporte ferrovi??rio de passageiros municipal e em regi??o metropolitana');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (871, 4912403, 'Transporte metrovi??rio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (872, 4921301, 'Transporte rodovi??rio coletivo de passageiros, com itiner??rio fixo, municipal');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (873, 4921302, 'Transporte rodovi??rio coletivo de passageiros, com itiner??rio fixo, intermunicipal em regi??o metropolitana');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (874, 4922101, 'Transporte rodovi??rio coletivo de passageiros, com itiner??rio fixo, intermunicipal, exceto em regi??o metropolitana');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (875, 4922102, 'Transporte rodovi??rio coletivo de passageiros, com itiner??rio fixo, interestadual');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (876, 4922103, 'Transporte rodovi??rio coletivo de passageiros, com itiner??rio fixo, internacional');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (877, 4923001, 'Servi??o de t??xi');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (878, 4923002, 'Servi??o de transporte de passageiros  loca????o de autom??veis com motorista');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (879, 4924800, 'Transporte escolar');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (880, 4929901, 'Transporte rodovi??rio coletivo de passageiros, sob regime de fretamento, municipal');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (881, 4929902, 'Transporte rodovi??rio coletivo de passageiros, sob regime de fretamento, intermunicipal, interestadual e internacional');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (882, 4929903, 'Organiza????o de excurs??es em ve??culos rodovi??rios pr??prios, municipal');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (883, 4929904, 'Organiza????o de excurs??es em ve??culos rodovi??rios pr??prios, intermunicipal, interestadual e internacional');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (884, 4929999, 'Outros transportes rodovi??rios de passageiros n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (885, 4930201, 'Transporte rodovi??rio de carga, exceto produtos perigosos e mudan??as, municipal');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (886, 4930202, 'Transporte rodovi??rio de carga, exceto produtos perigosos e mudan??as, intermunicipal, interestadual e internacional');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (887, 4930203, 'Transporte rodovi??rio de produtos perigosos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (888, 4930204, 'Transporte rodovi??rio de mudan??as');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (889, 4940000, 'Transporte dutovi??rio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (890, 4950700, 'Trens tur??sticos, telef??ricos e similares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (891, 5011401, 'Transporte mar??timo de cabotagem  Carga');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (892, 5011402, 'Transporte mar??timo de cabotagem  passageiros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (893, 5012201, 'Transporte mar??timo de longo curso  Carga');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (894, 5012202, 'Transporte mar??timo de longo curso  Passageiros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (895, 5021101, 'Transporte por navega????o interior de carga, municipal, exceto travessia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (896, 5021102, 'Transporte por navega????o interior de carga, intermunicipal, interestadual e internacional, exceto travessia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (897, 5022001, 'Transporte por navega????o interior de passageiros em linhas regulares, municipal, exceto travessia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (898, 5022002, 'Transporte por navega????o interior de passageiros em linhas regulares, intermunicipal, interestadual e internacional, exceto travessia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (899, 5030101, 'Navega????o de apoio mar??timo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (900, 5030102, 'Navega????o de apoio portu??rio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (901, 5091201, 'Transporte por navega????o de travessia, municipal');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (902, 5091202, 'Transporte por navega????o de travessia, intermunicipal');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (903, 5099801, 'Transporte aquavi??rio para passeios tur??sticos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (904, 5099899, 'Outros transportes aquavi??rios n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (905, 5111100, 'Transporte a??reo de passageiros regular');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (906, 5112901, 'Servi??o de t??xi a??reo e loca????o de aeronaves com tripula????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (907, 5112999, 'Outros servi??os de transporte a??reo de passageiros n??oregular');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (908, 5120000, 'Transporte a??reo de carga');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (909, 5130700, 'Transporte espacial');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (910, 5211701, 'Armaz??ns gerais  emiss??o de warrant');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (911, 5211702, 'Guardam??veis');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (912, 5211799, 'Dep??sitos de mercadorias para terceiros, exceto armaz??ns gerais e guardam??veis');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (913, 5212500, 'Carga e descarga');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (914, 5221400, 'Concession??rias de rodovias, pontes, t??neis e servi??os relacionados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (915, 5222200, 'Terminais rodovi??rios e ferrovi??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (916, 5223100, 'Estacionamento de ve??culos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (917, 5229001, 'Servi??os de apoio ao transporte por t??xi, inclusive centrais de chamada');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (918, 5229002, 'Servi??os de reboque de ve??culos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (919, 5229099, 'Outras atividades auxiliares dos transportes terrestres n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (920, 5231101, 'Administra????o da infraestrutura portu??ria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (921, 5231102, 'Opera????es de terminais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (922, 5232000, 'Atividades de agenciamento mar??timo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (923, 5239700, 'Atividades auxiliares dos transportes aquavi??rios n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (924, 5240101, 'Opera????o dos aeroportos e campos de aterrissagem');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (925, 5240199, 'Atividades auxiliares dos transportes a??reos, exceto opera????o dos aeroportos e campos de aterrissagem');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (926, 5250801, 'Comissaria de despachos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (927, 5250802, 'Atividades de despachantes aduaneiros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (928, 5250803, 'Agenciamento de cargas, exceto para o transporte mar??timo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (929, 5250804, 'Organiza????o log??stica do transporte de carga');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (930, 5250805, 'Operador de transporte multimodal  OTM');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (931, 5310501, 'Atividades do Correio Nacional');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (932, 5310502, 'Atividades de  franqueadas e permission??rias do Correio Nacional');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (933, 5320201, 'Servi??os de malote n??o realizados pelo Correio Nacional');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (934, 5320202, 'Servi??os de entrega r??pida');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (935, 5510801, 'Hot??is');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (936, 5510802, 'Aparthot??is');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (937, 5510803, 'Mot??is');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (938, 5590601, 'Albergues, exceto assistenciais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (939, 5590602, 'Campings');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (940, 5590603, 'Pens??es');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (941, 5590699, 'Outros alojamentos n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (942, 5611201, 'Restaurantes e similares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (943, 5611202, 'Bares e outros estabelecimentos especializados em servir bebidas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (944, 5611203, 'Lanchonetes, casas de ch??, de sucos e similares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (945, 5612100, 'Servi??os ambulantes de alimenta????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (946, 5620101, 'Fornecimento de alimentos preparados preponderantemente para empresas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (947, 5620102, 'Servi??os de alimenta????o para eventos e recep????es  buf??');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (948, 5620103, 'Cantinas  servi??os de alimenta????o privativos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (949, 5620104, 'Fornecimento de alimentos preparados preponderantemente para consumo domiciliar');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (950, 5811500, 'Edi????o de livros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (951, 5812300, 'Edi????o de jornais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (952, 5813100, 'Edi????o de revistas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (953, 5819100, 'Edi????o de cadastros, listas e de outros produtos gr??ficos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (954, 5821200, 'Edi????o integrada ?? impress??o de livros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (955, 5822100, 'Edi????o integrada ?? impress??o de jornais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (956, 5823900, 'Edi????o integrada ?? impress??o de revistas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (957, 5829800, 'Edi????o integrada ?? impress??o de cadastros, listas e de outros produtos gr??ficos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (958, 5911101, 'Est??dios cinematogr??ficos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (959, 5911102, 'Produ????o de filmes para publicidade');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (960, 5911199, 'Atividades de produ????o cinematogr??fica, de v??deos e de programas de televis??o n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (961, 5912001, 'Servi??os de dublagem');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (962, 5912002, 'Servi??os de mixagem sonora');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (963, 5912099, 'Atividades de p??sprodu????o cinematogr??fica, de v??deos e de programas de televis??o n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (964, 5913800, 'Distribui????o cinematogr??fica, de v??deo e de programas de televis??o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (965, 5914600, 'Atividades de exibi????o cinematogr??fica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (966, 5920100, 'Atividades de grava????o de som e de edi????o de m??sica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (967, 6010100, 'Atividades de r??dio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (968, 6021700, 'Atividades de televis??o aberta');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (969, 6022501, 'Programadoras');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (970, 6022502, 'Atividades relacionadas ?? televis??o por assinatura, exceto programadoras');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (971, 6110801, 'Servi??os de telefonia fixa comutada  STFC');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (972, 6110802, 'Servi??os de redes de transportes de telecomunica????es  SRTT');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (973, 6110803, 'Servi??os de comunica????o multim??dia  SMC');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (974, 6110899, 'Servi??os de telecomunica????es por fio n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (975, 6120501, 'Telefonia m??vel celular');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (976, 6120502, 'Servi??o m??vel especializado  SME');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (977, 6120599, 'Servi??os de telecomunica????es sem fio n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (978, 6130200, 'Telecomunica????es por sat??lite');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (979, 6141800, 'Operadoras de televis??o por assinatura por cabo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (980, 6142600, 'Operadoras de televis??o por assinatura por microondas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (981, 6143400, 'Operadoras de televis??o por assinatura por sat??lite');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (982, 6190601, 'Provedores de acesso ??s redes de comunica????es');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (983, 6190602, 'Provedores de voz sobre protocolo internet  VOIP');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (984, 6190699, 'Outras atividades de telecomunica????es n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (985, 6201500, 'Desenvolvimento de programas de computador sob encomenda');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (986, 6202300, 'Desenvolvimento e licenciamento de programas de computador customiz??veis');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (987, 6203100, 'Desenvolvimento e licenciamento de programas de computador n??ocustomiz??veis');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (988, 6204000, 'Consultoria em tecnologia da informa????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (989, 6209100, 'Suporte t??cnico, manuten????o e outros servi??os em tecnologia da informa????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (990, 6311900, 'Tratamento de dados, provedores de servi??os de aplica????o e servi??os de hospedagem na internet');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (991, 6319400, 'Portais, provedores de conte??do e outros servi??os de informa????o na internet');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (992, 6391700, 'Ag??ncias de not??cias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (993, 6399200, 'Outras atividades de presta????o de servi??os de informa????o n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (994, 6410700, 'Banco Central');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (995, 6421200, 'Bancos comerciais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (996, 6422100, 'Bancos m??ltiplos, com carteira comercial');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (997, 6423900, 'Caixas econ??micas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (998, 6424701, 'Bancos cooperativos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (999, 6424702, 'Cooperativas centrais de cr??dito');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1001, 6424704, 'Cooperativas de cr??dito rural');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1002, 6431000, 'Bancos m??ltiplos, sem carteira comercial');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1003, 6432800, 'Bancos de investimento');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1004, 6433600, 'Bancos de desenvolvimento');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1005, 6434400, 'Ag??ncias de fomento');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1006, 6435201, 'Sociedades de cr??dito imobili??rio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1007, 6435202, 'Associa????es de poupan??a e empr??stimo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1008, 6435203, 'Companhias hipotec??rias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1009, 6436100, 'Sociedades de cr??dito, financiamento e investimento  financeiras');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1010, 6437900, 'Sociedades de cr??dito ao microempreendedor');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1011, 6440900, 'Arrendamento mercantil');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1012, 6450600, 'Sociedades de capitaliza????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1013, 6461100, 'Holdings de institui????es financeiras');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1014, 6462000, 'Holdings de institui????es n??ofinanceiras');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1015, 6463800, 'Outras sociedades de participa????o, exceto holdings');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1016, 6470101, 'Fundos de investimento, exceto previdenci??rios e imobili??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1017, 6470102, 'Fundos de investimento previdenci??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1018, 6470103, 'Fundos de investimento imobili??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1019, 6491300, 'Sociedades de fomento mercantil  factoring');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1020, 6492100, 'Securitiza????o de cr??ditos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1021, 6493000, 'Administra????o de cons??rcios para aquisi????o de bens e direitos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1022, 6499901, 'Clubes de investimento');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1023, 6499902, 'Sociedades de investimento');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1024, 6499903, 'Fundo garantidor de cr??dito');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1025, 6499904, 'Caixas de financiamento de corpora????es');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1026, 6499905, 'Concess??o de cr??dito pelas OSCIP');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1027, 6499999, 'Outras atividades de servi??os financeiros n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1028, 6511101, 'Seguros de vida');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1029, 6511102, 'Planos de aux??liofuneral');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1030, 6512000, 'Seguros n??ovida');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1031, 6520100, 'Segurossa??de');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1032, 6530800, 'Resseguros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1033, 6541300, 'Previd??ncia complementar fechada');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1034, 6542100, 'Previd??ncia complementar aberta');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1035, 6550200, 'Planos de sa??de');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1036, 6611801, 'Bolsa de valores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1037, 6611802, 'Bolsa de mercadorias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1038, 6611803, 'Bolsa de mercadorias e futuros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1039, 6611804, 'Administra????o de mercados de balc??o organizados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1040, 6612601, 'Corretoras de t??tulos e valores mobili??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1041, 6612602, 'Distribuidoras de t??tulos e valores mobili??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1042, 6612603, 'Corretoras de c??mbio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1043, 6612604, 'Corretoras de contratos de mercadorias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1044, 6612605, 'Agentes de investimentos em aplica????es financeiras');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1045, 6613400, 'Administra????o de cart??es de cr??dito');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1046, 6619301, 'Servi??os de liquida????o e cust??dia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1047, 6619302, 'Correspondentes de institui????es financeiras');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1048, 6619303, 'Representa????es de bancos estrangeiros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1049, 6619304, 'Caixas eletr??nicos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1050, 6619305, 'Operadoras de cart??es de d??bito');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1051, 6619399, 'Outras atividades auxiliares dos servi??os financeiros n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1052, 6621501, 'Peritos e avaliadores de seguros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1053, 6621502, 'Auditoria e consultoria atuarial');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1054, 6622300, 'Corretores e agentes de seguros, de planos de previd??ncia complementar e de sa??de');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1055, 6629100, 'Atividades auxiliares dos seguros, da previd??ncia complementar e dos planos de sa??de n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1056, 6630400, 'Atividades de administra????o de fundos por contrato ou comiss??o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1057, 6810201, 'Compra e venda de im??veis pr??prios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1058, 6810202, 'Aluguel de im??veis pr??prios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1059, 6821801, 'Corretagem na compra e venda e avalia????o de im??veis');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1060, 6821802, 'Corretagem no aluguel de im??veis');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1061, 6822600, 'Gest??o e administra????o da propriedade imobili??ria*');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1062, 6911701, 'Servi??os advocat??cios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1063, 6911702, 'Atividades auxiliares da justi??a');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1064, 6911703, 'Agente de propriedade industrial');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1065, 6912500, 'Cart??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1066, 6920601, 'Atividades de contabilidade');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1067, 6920602, 'Atividades de consultoria e auditoria cont??bil e tribut??ria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1068, 7020400, 'Atividades de consultoria em gest??o empresarial, exceto consultoria t??cnica espec??fica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1069, 7111100, 'Servi??os de arquitetura');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1070, 7112000, 'Servi??os de engenharia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1071, 7119701, 'Servi??os de cartografia, topografia e geod??sia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1072, 7119702, 'Atividades de estudos geol??gicos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1073, 7119703, 'Servi??os de desenho t??cnico relacionados ?? arquitetura e engenharia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1074, 7119704, 'Servi??os de per??cia t??cnica relacionados ?? seguran??a do trabalho');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1075, 7119799, 'Atividades t??cnicas relacionadas ?? engenharia e arquitetura n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1076, 7120100, 'Testes e an??lises t??cnicas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1077, 7210000, 'Pesquisa e desenvolvimento experimental em ci??ncias f??sicas e naturais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1078, 7220700, 'Pesquisa e desenvolvimento experimental em ci??ncias sociais e humanas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1079, 7311400, 'Ag??ncias de publicidade');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1080, 7312200, 'Agenciamento de espa??os para publicidade, exceto em ve??culos de comunica????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1081, 7319001, 'Cria????o e montagem de estandes para feiras e exposi????es');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1082, 7319002, 'Promo????o de vendas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1083, 7319003, 'Marketing direto');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1084, 7319004, 'Consultoria em publicidade');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1085, 7319099, 'Outras atividades de publicidade n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1086, 7320300, 'Pesquisas de mercado e de opini??o p??blica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1087, 7410201, 'Design');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1088, 7410202, 'Decora????o de interiores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1089, 7420001, 'Atividades de produ????o de fotografias, exceto a??rea e submarina');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1090, 7420002, 'Atividades de produ????o de fotografias a??reas e submarinas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1091, 7420003, 'Laborat??rios fotogr??ficos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1092, 7420004, 'Filmagem de festas e eventos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1093, 7420005, 'Servi??os de microfilmagem');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1094, 7490101, 'Servi??os de tradu????o, interpreta????o e similares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1095, 7490102, 'Escafandria e mergulho');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1096, 7490103, 'Servi??os de agronomia e de consultoria ??s atividades agr??colas e pecu??rias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1097, 7490104, 'Atividades de intermedia????o e agenciamento de servi??os e neg??cios em geral, exceto imobili??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1098, 7490105, 'Agenciamento de profissionais para atividades esportivas, culturais e art??sticas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1099, 7490199, 'Outras atividades profissionais, cient??ficas e t??cnicas n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1100, 7500100, 'Atividades veterin??rias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1101, 7711000, 'Loca????o de autom??veis sem condutor');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1102, 7719501, 'Loca????o de embarca????es sem tripula????o, exceto para fins recreativos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1103, 7719502, 'Loca????o de aeronaves sem tripula????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1104, 7719599, 'Loca????o de outros meios de transporte n??o especificados anteriormente, sem condutor');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1105, 7721700, 'Aluguel de equipamentos recreativos e esportivos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1106, 7722500, 'Aluguel de fitas de v??deo, DVDs e similares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1107, 7723300, 'Aluguel de objetos do vestu??rio, j??ias e acess??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1108, 7729201, 'Aluguel de aparelhos de jogos eletr??nicos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1109, 7729202, 'Aluguel de m??veis, utens??lios e aparelhos de uso dom??stico e pessoal; instrumentos musicais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1110, 7729203, 'Aluguel de material m??dico*');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1111, 7729299, 'Aluguel de outros objetos pessoais e dom??sticos n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1112, 7731400, 'Aluguel de m??quinas e equipamentos agr??colas sem operador');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1113, 7732201, 'Aluguel de m??quinas e equipamentos para constru????o sem operador, exceto andaimes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1114, 7732202, 'Aluguel de andaimes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1115, 7733100, 'Aluguel de m??quinas e equipamentos para escrit??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1116, 7739001, 'Aluguel de m??quinas e equipamentos para extra????o de min??rios e petr??leo, sem operador');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1117, 7739002, 'Aluguel de equipamentos cient??ficos, m??dicos e hospitalares, sem operador');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1118, 7739003, 'Aluguel de palcos, coberturas e outras estruturas de uso tempor??rio, exceto andaimes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1119, 7739099, 'Aluguel de outras m??quinas e equipamentos comerciais e industriais n??o especificados anteriormente, sem operador');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1120, 7740300, 'Gest??o de ativos intang??veis n??ofinanceiros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1121, 7810800, 'Sele????o e agenciamento de m??odeobra');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1122, 7820500, 'Loca????o de m??odeobra tempor??ria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1123, 7830200, 'Fornecimento e gest??o de recursos humanos para terceiros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1124, 7911200, 'Ag??ncias de viagens');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1125, 7912100, 'Operadores tur??sticos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1126, 7990200, 'Servi??os de reservas e outros servi??os de turismo n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1127, 8011101, 'Atividades de vigil??ncia e seguran??a privada');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1128, 8011102, 'Servi??os de adestramento de c??es de guarda');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1129, 8012900, 'Atividades de transporte de valores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1130, 8020000, 'Atividades de monitoramento de sistemas de seguran??a');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1131, 8030700, 'Atividades de investiga????o particular');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1132, 8111700, 'Servi??os combinados para apoio a edif??cios, exceto condom??nios prediais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1133, 8112500, 'Condom??nios prediais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1134, 8121400, 'Limpeza em pr??dios e em domic??lios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1135, 8122200, 'Imuniza????o e controle de pragas urbanas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1136, 8129000, 'Atividades de limpeza n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1137, 8130300, 'Atividades paisag??sticas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1138, 8211300, 'Servi??os combinados de escrit??rio e apoio administrativo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1139, 8219901, 'Fotoc??pias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1140, 8219999, 'Prepara????o de documentos e servi??os especializados de apoio administrativo n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1141, 8220200, 'Atividades de teleatendimento');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1142, 8230001, 'Servi??os de organiza????o de feiras, congressos, exposi????es e festas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1143, 8230002, 'Casas de festas e eventos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1144, 8291100, 'Atividades de cobran??as e informa????es cadastrais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1145, 8292000, 'Envasamento e empacotamento sob contrato');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1146, 8299701, 'Medi????o de consumo de energia el??trica, g??s e ??gua');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1147, 8299702, 'Emiss??o de valesalimenta????o, valestransporte e similares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1148, 8299703, 'Servi??os de grava????o de carimbos, exceto confec????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1149, 8299704, 'Leiloeiros independentes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1150, 8299705, 'Servi??os de levantamento de fundos sob contrato');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1151, 8299706, 'Casas lot??ricas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1152, 8299707, 'Salas de acesso ?? internet');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1153, 8299799, 'Outras atividades de servi??os prestados principalmente ??s empresas n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1154, 8411600, 'Administra????o p??blica em geral');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1155, 8412400, 'Regula????o das atividades de sa??de, educa????o, servi??os culturais e outros servi??os sociais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1156, 8413200, 'Regula????o das atividades econ??micas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1157, 8414100, 'Atividades de suporte ?? administra????o p??blica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1158, 8421300, 'Rela????es exteriores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1159, 8422100, 'Defesa');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1160, 8423000, 'Justi??a');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1161, 8424800, 'Seguran??a e ordem p??blica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1162, 8425600, 'Defesa Civil');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1163, 8430200, 'Seguridade social obrigat??ria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1164, 8511200, 'Educa????o infantil  creche');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1165, 8512100, 'Educa????o infantil  pr??escola');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1166, 8513900, 'Ensino fundamental');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1167, 8520100, 'Ensino m??dio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1168, 8531700, 'Educa????o superior  gradua????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1169, 8532500, 'Educa????o superior  gradua????o e p??sgradua????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1170, 8533300, 'Educa????o superior  p??sgradua????o e extens??o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1171, 8541400, 'Educa????o profissional de n??vel t??cnico');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1172, 8542200, 'Educa????o profissional de n??vel tecnol??gico');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1173, 8550301, 'Administra????o de caixas escolares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1174, 8550302, 'Servi??os auxiliares ?? educa????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1175, 8591100, 'Ensino de esportes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1176, 8592901, 'Ensino de dan??a');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1177, 8592902, 'Ensino de artes c??nicas, exceto dan??a');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1178, 8592903, 'Ensino de m??sica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1179, 8592999, 'Ensino de arte e cultura n??o especificado anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1180, 8593700, 'Ensino de idiomas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1181, 8599601, 'Forma????o de condutores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1182, 8599602, 'Cursos de pilotagem');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1183, 8599603, 'Treinamento em inform??tica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1184, 8599604, 'Treinamento em desenvolvimento profissional e gerencial');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1185, 8599605, 'Cursos preparat??rios para concursos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1186, 8599699, 'Outras atividades de ensino n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1187, 8610101, 'Atividades de atendimento hospitalar, exceto prontosocorro e unidades para atendimento a urg??ncias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1188, 8610102, 'Atividades de atendimento em prontosocorro e unidades hospitalares para atendimento a urg??ncias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1189, 8621601, 'UTI m??vel');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1190, 8621602, 'Servi??os m??veis de atendimento a urg??ncias, exceto por UTI m??vel');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1191, 8622400, 'Servi??os de remo????o de pacientes, exceto os servi??os m??veis de atendimento a urg??ncias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1192, 8630501, 'Atividade m??dica ambulatorial com recursos para realiza????o de procedimentos cir??rgicos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1193, 8630502, 'Atividade m??dica ambulatorial com recursos para realiza????o de exames complementares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1194, 8630503, 'Atividade m??dica ambulatorial restrita a consultas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1195, 8630504, 'Atividade odontol??gica com recursos para realiza????o de procedimentos cir??rgicos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1196, 8630505, 'Atividade odontol??gica sem recursos para realiza????o de procedimentos cir??rgicos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1197, 8630506, 'Servi??os de vacina????o e imuniza????o humana');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1198, 8630507, 'Atividades de reprodu????o humana assistida');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1199, 8630599, 'Atividades de aten????o ambulatorial n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1200, 8640201, 'Laborat??rios de anatomia patol??gica e citol??gica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1201, 8640202, 'Laborat??rios cl??nicos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1202, 8640203, 'Servi??os de di??lise e nefrologia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1203, 8640204, 'Servi??os de tomografia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1204, 8640205, 'Servi??os de diagn??stico por imagem com uso de radia????o ionizante, exceto tomografia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1205, 8640206, 'Servi??os de resson??ncia magn??tica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1206, 8640207, 'Servi??os de diagn??stico por imagem sem uso de radia????o ionizante, exceto resson??ncia magn??tica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1207, 8640208, 'Servi??os de diagn??stico por registro gr??fico  ECG, EEG e outros exames an??logos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1208, 8640209, 'Servi??os de diagn??stico por m??todos ??pticos  endoscopia e outros exames an??logos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1209, 8640210, 'Servi??os de quimioterapia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1210, 8640211, 'Servi??os de radioterapia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1211, 8640212, 'Servi??os de hemoterapia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1212, 8640213, 'Servi??os de litotripsia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1213, 8640214, 'Servi??os de bancos de c??lulas e tecidos humanos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1214, 8640299, 'Atividades de servi??os de complementa????o diagn??stica e terap??utica n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1215, 8650001, 'Atividades de enfermagem');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1216, 8650002, 'Atividades de profissionais da nutri????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1217, 8650003, 'Atividades de psicologia e psican??lise');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1218, 8650004, 'Atividades de fisioterapia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1219, 8650005, 'Atividades de terapia ocupacional');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1220, 8650006, 'Atividades de fonoaudiologia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1221, 8650007, 'Atividades de terapia de nutri????o enteral e parenteral');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1222, 8650099, 'Atividades de profissionais da ??rea de sa??de n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1223, 8660700, 'Atividades de apoio ?? gest??o de sa??de');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1224, 8690901, 'Atividades de pr??ticas integrativas e complementares em sa??de humana');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1225, 8690902, 'Atividades de banco de leite humano');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1226, 8690999, 'Outras atividades de aten????o ?? sa??de humana n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1227, 8711501, 'Cl??nicas e resid??ncias geri??tricas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1228, 8711502, 'Institui????es de longa perman??ncia para idosos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1229, 8711503, 'Atividades de assist??ncia a deficientes f??sicos, imunodeprimidos e convalescentes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1230, 8711504, 'Centros de apoio a pacientes com c??ncer e com AIDS');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1231, 8711505, 'Condom??nios residenciais para idosos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1232, 8712300, 'Atividades de fornecimento de infraestrutura de apoio e assist??ncia a paciente no domic??lio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1233, 8720401, 'Atividades de centros de assist??ncia psicossocial');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1234, 8720499, 'Atividades de assist??ncia psicossocial e ?? sa??de a portadores de dist??rbios ps??quicos, defici??ncia mental e depend??ncia qu??mica n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1235, 8730101, 'Orfanatos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1236, 8730102, 'Albergues assistenciais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1237, 8730199, 'Atividades de assist??ncia social prestadas em resid??ncias coletivas e particulares n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1238, 8800600, 'Servi??os de assist??ncia social sem alojamento');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1239, 9001901, 'Produ????o teatral');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1240, 9001902, 'Produ????o musical');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1241, 9001903, 'Produ????o de espet??culos de dan??a');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1242, 9001904, 'Produ????o de espet??culos circenses, de marionetes e similares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1243, 9001905, 'Produ????o de espet??culos de rodeios, vaquejadas e similares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1244, 9001906, 'Atividades de sonoriza????o e de ilumina????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1245, 9001999, 'Artes c??nicas, espet??culos e atividades complementares n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1246, 9002701, 'Atividades de artistas pl??sticos, jornalistas independentes e escritores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1247, 9002702, 'Restaura????o de obrasdearte');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1248, 9003500, 'Gest??o de espa??os para artes c??nicas, espet??culos e outras atividades art??sticas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1249, 9101500, 'Atividades de bibliotecas e arquivos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1250, 9102301, 'Atividades de museus e de explora????o de lugares e pr??dios hist??ricos e atra????es similares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1251, 9102302, 'Restaura????o e conserva????o de lugares e pr??dios hist??ricos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1252, 9103100, 'Atividades de jardins bot??nicos, zool??gicos, parques nacionais, reservas ecol??gicas e ??reas de prote????o ambiental');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1253, 9200301, 'Casas de bingo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1254, 9200302, 'Explora????o de apostas em corridas de cavalos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1255, 9200399, 'Explora????o de jogos de azar e apostas n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1256, 9311500, 'Gest??o de instala????es de esportes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1257, 9312300, 'Clubes sociais, esportivos e similares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1258, 9313100, 'Atividades de condicionamento f??sico');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1259, 9319101, 'Produ????o e promo????o de eventos esportivos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1260, 9319199, 'Outras atividades esportivas n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1261, 9321200, 'Parques de divers??o e parques tem??ticos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1262, 9329801, 'Discotecas, danceterias, sal??es de dan??a e similares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1263, 9329802, 'Explora????o de boliches');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1264, 9329803, 'Explora????o de jogos de sinuca, bilhar e similares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1265, 9329804, 'Explora????o de jogos eletr??nicos recreativos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1266, 9329899, 'Outras atividades de recrea????o e lazer n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1267, 9411100, 'Atividades de organiza????es associativas patronais e empresariais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1268, 9412000, 'Atividades de organiza????es associativas profissionais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1269, 9420100, 'Atividades de organiza????es sindicais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1270, 9430800, 'Atividades de associa????es de defesa de direitos sociais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1271, 9491000, 'Atividades de organiza????es religiosas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1272, 9492800, 'Atividades de organiza????es pol??ticas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1273, 9493600, 'Atividades de organiza????es associativas ligadas ?? cultura e ?? arte');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1274, 9499500, 'Atividades associativas n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1275, 9511800, 'Repara????o e manuten????o de computadores e de equipamentos perif??ricos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1276, 9512600, 'Repara????o e manuten????o de equipamentos de comunica????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1277, 9521500, 'Repara????o e manuten????o de equipamentos eletroeletr??nicos de uso pessoal e dom??stico');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1278, 9529101, 'Repara????o de cal??ados, de bolsas e artigos de viagem*');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1279, 9529102, 'Chaveiros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1280, 9529103, 'Repara????o de rel??gios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1281, 9529104, 'Repara????o de bicicletas, triciclos e outros ve??culos n??omotorizados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1282, 9529105, 'Repara????o de artigos do mobili??rio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1283, 9529106, 'Repara????o de j??ias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1284, 9529199, 'Repara????o e manuten????o de outros objetos e equipamentos pessoais e dom??sticos n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1285, 9601701, 'Lavanderias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1286, 9601702, 'Tinturarias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1287, 9601703, 'Toalheiros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1288, 9602501, 'Cabeleireiros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1289, 9602502, 'Outras atividades de tratamento de beleza');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1290, 9603301, 'Gest??o e manuten????o de cemit??rios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1291, 9603302, 'Servi??os de crema????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1292, 9603303, 'Servi??os de sepultamento');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1293, 9603304, 'Servi??os de funer??rias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1294, 9603305, 'Servi??os de somatoconserva????o');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1295, 9603399, 'Atividades funer??rias e servi??os relacionados n??o especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1296, 9609201, 'Cl??nicas de est??tica e similares*');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1297, 9609202, 'Ag??ncias matrimoniais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1298, 9609203, 'Alojamento, higiene e embelezamento de animais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1299, 9609204, 'Explora????o de m??quinas de servi??os pessoais acionadas por moeda');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1300, 9609299, 'Outras atividades de servi??os pessoais n??o especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1301, 9700500, 'Servi??os dom??sticos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1302, 9900800, 'Organismos internacionais e outras institui????es extraterritoriais');


--
-- TOC entry 3017 (class 0 OID 16640)
-- Dependencies: 206
-- Data for Name: estado; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.estado (id, nome, codigo) VALUES ('AC', 'Acre', 12);
INSERT INTO public.estado (id, nome, codigo) VALUES ('AL', 'Alagoas', 27);
INSERT INTO public.estado (id, nome, codigo) VALUES ('AP', 'Amap??', 16);
INSERT INTO public.estado (id, nome, codigo) VALUES ('AM', 'Amazonas', 13);
INSERT INTO public.estado (id, nome, codigo) VALUES ('BA', 'Bahia', 29);
INSERT INTO public.estado (id, nome, codigo) VALUES ('CE', 'Cear??', 23);
INSERT INTO public.estado (id, nome, codigo) VALUES ('DF', 'Distrito Federal', 53);
INSERT INTO public.estado (id, nome, codigo) VALUES ('ES', 'Esp??rito Santo', 32);
INSERT INTO public.estado (id, nome, codigo) VALUES ('GO', 'Goi??s', 52);
INSERT INTO public.estado (id, nome, codigo) VALUES ('MA', 'Maranh??o', 21);
INSERT INTO public.estado (id, nome, codigo) VALUES ('MS', 'Mato Grosso do Sul', 50);
INSERT INTO public.estado (id, nome, codigo) VALUES ('MT', 'Mato Grosso', 51);
INSERT INTO public.estado (id, nome, codigo) VALUES ('MG', 'Minas Gerais', 31);
INSERT INTO public.estado (id, nome, codigo) VALUES ('PR', 'Paran??', 41);
INSERT INTO public.estado (id, nome, codigo) VALUES ('PB', 'Para??ba', 25);
INSERT INTO public.estado (id, nome, codigo) VALUES ('PA', 'Par??', 15);
INSERT INTO public.estado (id, nome, codigo) VALUES ('PE', 'Pernambuco', 26);
INSERT INTO public.estado (id, nome, codigo) VALUES ('PI', 'Piau??', 22);
INSERT INTO public.estado (id, nome, codigo) VALUES ('RJ', 'Rio de Janeiro', 33);
INSERT INTO public.estado (id, nome, codigo) VALUES ('RN', 'Rio Grande do Norte', 24);
INSERT INTO public.estado (id, nome, codigo) VALUES ('RS', 'Rio Grande do Sul', 43);
INSERT INTO public.estado (id, nome, codigo) VALUES ('RO', 'Rond??nia', 11);
INSERT INTO public.estado (id, nome, codigo) VALUES ('RR', 'Roraima', 14);
INSERT INTO public.estado (id, nome, codigo) VALUES ('SC', 'Santa Catarina', 42);
INSERT INTO public.estado (id, nome, codigo) VALUES ('SE', 'Sergipe', 28);
INSERT INTO public.estado (id, nome, codigo) VALUES ('SP', 'S??o Paulo', 35);
INSERT INTO public.estado (id, nome, codigo) VALUES ('TO', 'Tocantins', 17);


--
-- TOC entry 3014 (class 0 OID 16621)
-- Dependencies: 203
-- Data for Name: fornecedor; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3012 (class 0 OID 16610)
-- Dependencies: 201
-- Data for Name: qsa; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3027 (class 0 OID 0)
-- Dependencies: 204
-- Name: cnae_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cnae_id_seq', 1, false);


--
-- TOC entry 3028 (class 0 OID 0)
-- Dependencies: 202
-- Name: fornecedor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fornecedor_id_seq', 1, true);


--
-- TOC entry 3029 (class 0 OID 0)
-- Dependencies: 200
-- Name: qsa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.qsa_id_seq', 1, false);


--
-- TOC entry 2876 (class 2606 OID 16639)
-- Name: cnae cnae_codigo_cnae_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cnae
    ADD CONSTRAINT cnae_codigo_cnae_key UNIQUE (codigo_cnae);


--
-- TOC entry 2878 (class 2606 OID 16637)
-- Name: cnae cnae_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cnae
    ADD CONSTRAINT cnae_pkey PRIMARY KEY (id);


--
-- TOC entry 2880 (class 2606 OID 16644)
-- Name: estado estado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado
    ADD CONSTRAINT estado_pkey PRIMARY KEY (id);


--
-- TOC entry 2874 (class 2606 OID 16629)
-- Name: fornecedor fornecedor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fornecedor
    ADD CONSTRAINT fornecedor_pkey PRIMARY KEY (id);


--
-- TOC entry 2872 (class 2606 OID 16618)
-- Name: qsa qsa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.qsa
    ADD CONSTRAINT qsa_pkey PRIMARY KEY (id);


-- Completed on 2021-09-21 09:31:45

--
-- PostgreSQL database dump complete
--

