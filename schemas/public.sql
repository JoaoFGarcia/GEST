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

DROP DATABASE "GEST";
--
-- TOC entry 3023 (class 1262 OID 16533)
-- Name: GEST; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "GEST" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';


ALTER DATABASE "GEST" OWNER TO postgres;

\connect "GEST"

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
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (4, 111399, 'Cultivo de outros cereais não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (5, 112101, 'Cultivo de algodão herbáceo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (6, 112102, 'Cultivo de juta');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (7, 112199, 'Cultivo de outras fibras de lavoura temporária não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (8, 113000, 'Cultivo de canadeaçúcar');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (9, 114800, 'Cultivo de fumo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (10, 115600, 'Cultivo de soja');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (11, 116401, 'Cultivo de amendoim');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (12, 116402, 'Cultivo de girassol');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (13, 116403, 'Cultivo de mamona');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (14, 116499, 'Cultivo de outras oleaginosas de lavoura temporária não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (15, 119901, 'Cultivo de abacaxi');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (16, 119902, 'Cultivo de alho');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (17, 119903, 'Cultivo de batatainglesa');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (18, 119904, 'Cultivo de cebola');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (19, 119905, 'Cultivo de feijão');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (20, 119906, 'Cultivo de mandioca');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (21, 119907, 'Cultivo de melão');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (22, 119908, 'Cultivo de melancia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (23, 119909, 'Cultivo de tomate rasteiro');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (24, 119999, 'Cultivo de outras plantas de lavoura temporária não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (25, 121101, 'Horticultura, exceto morango');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (26, 121102, 'Cultivo de morango');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (27, 122900, 'Floricultura');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (28, 131800, 'Cultivo de laranja');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (29, 132600, 'Cultivo de uva');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (30, 133401, 'Cultivo de açaí');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (31, 133402, 'Cultivo de banana');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (32, 133403, 'Cultivo de caju');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (33, 133404, 'Cultivo de cítricos, exceto laranja');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (34, 133405, 'Cultivo de cocodabaía');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (35, 133406, 'Cultivo de guaraná');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (36, 133407, 'Cultivo de maçã');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (37, 133408, 'Cultivo de mamão');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (38, 133409, 'Cultivo de maracujá');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (39, 133410, 'Cultivo de manga');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (40, 133411, 'Cultivo de pêssego');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (41, 133499, 'Cultivo de frutas de lavoura permanente não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (42, 134200, 'Cultivo de café');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (43, 135100, 'Cultivo de cacau');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (44, 139301, 'Cultivo de chádaíndia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (45, 139302, 'Cultivo de ervamate');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (46, 139303, 'Cultivo de pimentadoreino');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (47, 139304, 'Cultivo de plantas para condimento, exceto pimentadoreino');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (48, 139305, 'Cultivo de dendê');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (49, 139306, 'Cultivo de seringueira');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (50, 139399, 'Cultivo de outras plantas de lavoura permanente não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (51, 141501, 'Produção de sementes certificadas, exceto de forrageiras para pasto');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (52, 141502, 'Produção de sementes certificadas de forrageiras para formação de pasto');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (53, 142300, 'Produção de mudas e outras formas de propagação vegetal, certificadas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (54, 151201, 'Criação de bovinos para corte');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (55, 151202, 'Criação de bovinos para leite');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (56, 151203, 'Criação de bovinos, exceto para corte e leite');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (57, 152101, 'Criação de bufalinos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (58, 152102, 'Criação de eqüinos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (59, 152103, 'Criação de asininos e muares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (60, 153901, 'Criação de caprinos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (61, 153902, 'Criação de ovinos, inclusive para produção de lã');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (62, 154700, 'Criação de suínos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (63, 155501, 'Criação de frangos para corte');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (64, 155502, 'Produção de pintos de um dia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (65, 155503, 'Criação de outros galináceos, exceto para corte');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (66, 155504, 'Criação de aves, exceto galináceos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (67, 155505, 'Produção de ovos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (68, 159801, 'Apicultura');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (69, 159802, 'Criação de animais de estimação');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (70, 159803, 'Criação de escargô');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (71, 159804, 'Criação de bichodaseda');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (72, 159899, 'Criação de outros animais não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (73, 161001, 'Serviço de pulverização e controle de pragas agrícolas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (74, 161002, 'Serviço de poda de árvores para lavouras');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (75, 161003, 'Serviço de preparação de terreno, cultivo e colheita');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (76, 161099, 'Atividades de apoio à agricultura não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (77, 162801, 'Serviço de inseminação artificial de animais *');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (78, 162802, 'Serviço de tosquiamento de ovinos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (79, 162803, 'Serviço de manejo de animais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (80, 162899, 'Atividades de apoio à pecuária não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (81, 163600, 'Atividades de póscolheita');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (82, 170900, 'Caça e serviços relacionados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (83, 210101, 'Cultivo de eucalipto');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (84, 210102, 'Cultivo de acácianegra');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (85, 210103, 'Cultivo de pinus');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (86, 210104, 'Cultivo de teca');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (87, 210105, 'Cultivo de espécies madeireiras, exceto eucalipto, acácianegra, pinus e teca');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (88, 210106, 'Cultivo de mudas em viveiros florestais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (89, 210107, 'Extração de madeira em florestas plantadas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (90, 210108, 'Produção de carvão vegetal  florestas plantadas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (91, 210109, 'Produção de casca de acácianegra  florestas plantadas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (92, 210199, 'Produção de produtos nãomadeireiros não especificados anteriormente em florestas plantadas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (93, 220901, 'Extração de madeira em florestas nativas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (94, 220902, 'Produção de carvão vegetal  florestas nativas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (95, 220903, 'Coleta de castanhadopará em florestas nativas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (96, 220904, 'Coleta de látex em florestas nativas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (97, 220905, 'Coleta de palmito em florestas nativas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (98, 220906, 'Conservação de florestas nativas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (99, 220999, 'Coleta de produtos nãomadeireiros não especificados anteriormente em florestas nativas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (100, 230600, 'Atividades de apoio à produção florestal');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (101, 311601, 'Pesca de peixes em água salgada');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (102, 311602, 'Pesca de crustáceos e moluscos em água salgada');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (103, 311603, 'Coleta de outros produtos marinhos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (104, 311604, 'Atividades de apoio à pesca em água salgada');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (105, 312401, 'Pesca de peixes em água doce');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (106, 312402, 'Pesca de crustáceos e moluscos em água doce');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (107, 312403, 'Coleta de outros produtos aquáticos de água doce');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (108, 312404, 'Atividades de apoio à pesca em água doce');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (109, 321301, 'Criação de peixes em água salgada e salobra');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (110, 321302, 'Criação de camarões em água salgada e salobra');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (111, 321303, 'Criação de ostras e mexilhões em água salgada e salobra');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (112, 321304, 'Criação de peixes ornamentais em água salgada e salobra');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (113, 321305, 'Atividades de apoio à aqüicultura em água salgada e salobra');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (114, 321399, 'Cultivos e semicultivos da aqüicultura em água salgada e salobra não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (115, 322101, 'Criação de peixes em água doce');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (116, 322102, 'Criação de camarões em água doce');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (117, 322103, 'Criação de ostras e mexilhões em água doce');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (118, 322104, 'Criação de peixes ornamentais em água doce');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (119, 322105, 'Ranicultura');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (120, 322106, 'Criação de jacaré');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (121, 322107, 'Atividades de apoio à aqüicultura em água doce');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (122, 322199, 'Cultivos e semicultivos da aqüicultura em água doce não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (123, 500301, 'Extração de carvão mineral');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (124, 500302, 'Beneficiamento de carvão mineral');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (125, 600001, 'Extração de petróleo e gás natural');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (126, 600002, 'Extração e beneficiamento de xisto');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (127, 600003, 'Extração e beneficiamento de areias betuminosas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (128, 710301, 'Extração de minério de ferro');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (129, 710302, 'Pelotização, sinterização e outros beneficiamentos de minério de ferro');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (130, 721901, 'Extração de minério de alumínio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (131, 721902, 'Beneficiamento de minério de alumínio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (132, 722701, 'Extração de minério de estanho');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (133, 722702, 'Beneficiamento de minério de estanho');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (134, 723501, 'Extração de minério de manganês');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (135, 723502, 'Beneficiamento de minério de manganês');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (136, 724301, 'Extração de minério de metais preciosos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (137, 724302, 'Beneficiamento de minério de metais preciosos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (138, 725100, 'Extração de minerais radioativos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (139, 729401, 'Extração de minérios de nióbio e titânio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (140, 729402, 'Extração de minério de tungstênio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (141, 729403, 'Extração de minério de níquel');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (142, 729404, 'Extração de minérios de cobre, chumbo, zinco e outros minerais metálicos nãoferrosos não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (143, 729405, 'Beneficiamento de minérios de cobre, chumbo, zinco e outros minerais metálicos nãoferrosos não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (144, 810001, 'Extração de ardósia e beneficiamento associado');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (145, 810002, 'Extração de granito e beneficiamento associado');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (146, 810003, 'Extração de mármore e beneficiamento associado');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (147, 810004, 'Extração de calcário e dolomita e beneficiamento associado');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (148, 810005, 'Extração de gesso e caulim');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (149, 810006, 'Extração de areia, cascalho ou pedregulho e beneficiamento associado');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (150, 810007, 'Extração de argila e beneficiamento associado');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (151, 810008, 'Extração de saibro e beneficiamento associado');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (152, 810009, 'Extração de basalto e beneficiamento associado');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (153, 810010, 'Beneficiamento de gesso e caulim associado à extração');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (154, 810099, 'Extração e britamento de pedras e outros materiais para construção e beneficiamento associado');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (155, 891600, 'Extração de minerais para fabricação de adubos, fertilizantes e outros produtos químicos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (156, 892401, 'Extração de sal marinho');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (157, 892402, 'Extração de salgema');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (158, 892403, 'Refino e outros tratamentos do sal');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (159, 893200, 'Extração de gemas (pedras preciosas e semipreciosas)');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (160, 899101, 'Extração de grafita');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (161, 899102, 'Extração de quartzo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (162, 899103, 'Extração de amianto');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (163, 899199, 'Extração de outros minerais nãometálicos não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (164, 910600, 'Atividades de apoio à extração de petróleo e gás natural');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (165, 990401, 'Atividades de apoio à extração de minério de ferro');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (166, 990402, 'Atividades de apoio à extração de minerais metálicos nãoferrosos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (167, 990403, 'Atividades de apoio à extração de minerais nãometálicos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (168, 1011201, 'Frigorífico  abate de bovinos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (169, 1011202, 'Frigorífico  abate de eqüinos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (170, 1011203, 'Frigorífico  abate de ovinos e caprinos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (171, 1011204, 'Frigorífico  abate de bufalinos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (172, 1011205, 'Matadouro  abate de reses sob contrato  exceto abate de suínos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (173, 1012101, 'Abate de aves');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (174, 1012102, 'Abate de pequenos animais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (175, 1012103, 'Frigorífico  abate de suínos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (176, 1012104, 'Matadouro  abate de suínos sob contrato');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (177, 1013901, 'Fabricação de produtos de carne');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (178, 1013902, 'Preparação de subprodutos do abate');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (179, 1020101, 'Preservação de peixes, crustáceos e moluscos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (180, 1020102, 'Fabricação de conservas de peixes, crustáceos e moluscos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (181, 1031700, 'Fabricação de conservas de frutas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (182, 1032501, 'Fabricação de conservas de palmito');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (183, 1032599, 'Fabricação de conservas de legumes e outros vegetais, exceto palmito');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (184, 1033301, 'Fabricação de sucos concentrados de frutas, hortaliças e legumes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (185, 1033302, 'Fabricação de sucos de frutas, hortaliças e legumes, exceto concentrados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (186, 1041400, 'Fabricação de óleos vegetais em bruto, exceto óleo de milho');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (187, 1042200, 'Fabricação de óleos vegetais refinados, exceto óleo de milho');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (188, 1043100, 'Fabricação de margarina e outras gorduras vegetais e de óleos nãocomestíveis de animais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (189, 1051100, 'Preparação do leite');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (190, 1052000, 'Fabricação de laticínios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (191, 1053800, 'Fabricação de sorvetes e outros gelados comestíveis');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (192, 1061901, 'Beneficiamento de arroz');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (193, 1061902, 'Fabricação de produtos do arroz');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (194, 1062700, 'Moagem de trigo e fabricação de derivados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (195, 1063500, 'Fabricação de farinha de mandioca e derivados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (196, 1064300, 'Fabricação de farinha de milho e derivados, exceto óleos de milho');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (197, 1065101, 'Fabricação de amidos e féculas de vegetais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (198, 1065102, 'Fabricação de óleo de milho em bruto');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (199, 1065103, 'Fabricação de óleo de milho refinado');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (200, 1066000, 'Fabricação de alimentos para animais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (594, 3831999, 'Recuperação de materiais metálicos, exceto alumínio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (201, 1069400, 'Moagem e fabricação de produtos de origem vegetal não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (202, 1071600, 'Fabricação de açúcar em bruto');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (203, 1072401, 'Fabricação de açúcar de cana refinado');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (204, 1072402, 'Fabricação de açúcar de cereais (dextrose) e de beterraba');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (205, 1081301, 'Beneficiamento de café');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (206, 1081302, 'Torrefação e moagem de café');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (207, 1082100, 'Fabricação de produtos à base de café');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (208, 1091100, 'Fabricação de produtos de panificação');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (209, 1092900, 'Fabricação de biscoitos e bolachas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (210, 1093701, 'Fabricação de produtos derivados do cacau e de chocolates');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (211, 1093702, 'Fabricação de frutas cristalizadas, balas e semelhantes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (212, 1094500, 'Fabricação de massas alimentícias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (213, 1095300, 'Fabricação de especiarias, molhos, temperos e condimentos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (214, 1096100, 'Fabricação de alimentos e pratos prontos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (215, 1099601, 'Fabricação de vinagres');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (216, 1099602, 'Fabricação de pós alimentícios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (217, 1099603, 'Fabricação de fermentos e leveduras');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (218, 1099604, 'Fabricação de gelo comum');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (219, 1099605, 'Fabricação de produtos para infusão (chá, mate, etc.)');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (220, 1099606, 'Fabricação de adoçantes naturais e artificiais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (221, 1099699, 'Fabricação de outros produtos alimentícios não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (222, 1111901, 'Fabricação de aguardente de canadeaçúcar');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (223, 1111902, 'Fabricação de outras aguardentes e bebidas destiladas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (224, 1112700, 'Fabricação de vinho');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (225, 1113501, 'Fabricação de malte, inclusive malte uísque');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (226, 1113502, 'Fabricação de cervejas e chopes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (227, 1121600, 'Fabricação de águas envasadas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (228, 1122401, 'Fabricação de refrigerantes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (229, 1122402, 'Fabricação de chá mate e outros chás prontos para consumo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (230, 1122403, 'Fabricação de refrescos, xaropes e pós para refrescos, exceto refrescos de frutas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (231, 1122499, 'Fabricação de outras bebidas nãoalcoólicas não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (232, 1210700, 'Processamento industrial do fumo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (233, 1220401, 'Fabricação de cigarros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (234, 1220402, 'Fabricação de cigarrilhas e charutos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (235, 1220403, 'Fabricação de filtros para cigarros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (236, 1220499, 'Fabricação de outros produtos do fumo, exceto cigarros, cigarrilhas e charutos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (237, 1311100, 'Preparação e fiação de fibras de algodão');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (238, 1312000, 'Preparação e fiação de fibras têxteis naturais, exceto algodão');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (239, 1313800, 'Fiação de fibras artificiais e sintéticas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (240, 1314600, 'Fabricação de linhas para costurar e bordar');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (241, 1321900, 'Tecelagem de fios de algodão');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (242, 1322700, 'Tecelagem de fios de fibras têxteis naturais, exceto algodão');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (243, 1323500, 'Tecelagem de fios de fibras artificiais e sintéticas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (244, 1330800, 'Fabricação de tecidos de malha');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (245, 1340501, 'Estamparia e texturização em fios, tecidos, artefatos têxteis e peças do vestuário');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (246, 1340502, 'Alvejamento, tingimento e torção em fios, tecidos, artefatos têxteis e peças do vestuário');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (247, 1340599, 'Outros serviços de acabamento em fios, tecidos, artefatos têxteis e peças do vestuário');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (248, 1351100, 'Fabricação de artefatos têxteis para uso doméstico');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (249, 1352900, 'Fabricação de artefatos de tapeçaria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (250, 1353700, 'Fabricação de artefatos de cordoaria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (251, 1354500, 'Fabricação de tecidos especiais, inclusive artefatos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (252, 1359600, 'Fabricação de outros produtos têxteis não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (253, 1411801, 'Confecção de roupas íntimas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (254, 1411802, 'Facção de roupas íntimas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (255, 1412601, 'Confecção de peças do vestuário, exceto roupas íntimas e as confeccionadas sob medida');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (256, 1412602, 'Confecção, sob medida, de peças do vestuário, exceto roupas íntimas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (257, 1412603, 'Facção de peças do vestuário, exceto roupas íntimas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (258, 1413401, 'Confecção de roupas profissionais, exceto sob medida');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (259, 1413402, 'Confecção, sob medida, de roupas profissionais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (260, 1413403, 'Facção de roupas profissionais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (261, 1414200, 'Fabricação de acessórios do vestuário, exceto para segurança e proteção');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (262, 1421500, 'Fabricação de meias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (263, 1422300, 'Fabricação de artigos do vestuário, produzidos em malharias e tricotagens, exceto meias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (264, 1510600, 'Curtimento e outras preparações de couro');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (265, 1521100, 'Fabricação de artigos para viagem, bolsas e semelhantes de qualquer material');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (266, 1529700, 'Fabricação de artefatos de couro não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (267, 1531901, 'Fabricação de calçados de couro');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (268, 1531902, 'Acabamento de calçados de couro sob contrato');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (269, 1532700, 'Fabricação de tênis de qualquer material');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (270, 1533500, 'Fabricação de calçados de material sintético');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (271, 1539400, 'Fabricação de calçados de materiais não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (272, 1540800, 'Fabricação de partes para calçados, de qualquer material');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (273, 1610201, 'Serrarias com desdobramento de madeira');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (274, 1610202, 'Serrarias sem desdobramento de madeira');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (275, 1621800, 'Fabricação de madeira laminada e de chapas de madeira compensada, prensada e aglomerada');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (276, 1622601, 'Fabricação de casas de madeira préfabricadas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (277, 1622602, 'Fabricação de esquadrias de madeira e de peças de madeira para instalações industriais e comerciais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (278, 1622699, 'Fabricação de outros artigos de carpintaria para construção');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (279, 1623400, 'Fabricação de artefatos de tanoaria e de embalagens de madeira');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (280, 1629301, 'Fabricação de artefatos diversos de madeira, exceto móveis');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (281, 1629302, 'Fabricação de artefatos diversos de cortiça, bambu, palha, vime e outros materiais trançados, exceto móveis');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (282, 1710900, 'Fabricação de celulose e outras pastas para a fabricação de papel');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (283, 1721400, 'Fabricação de papel');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (284, 1722200, 'Fabricação de cartolina e papelcartão');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (285, 1731100, 'Fabricação de embalagens de papel');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (286, 1732000, 'Fabricação de embalagens de cartolina e papelcartão');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (287, 1733800, 'Fabricação de chapas e de embalagens de papelão ondulado');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (288, 1741901, 'Fabricação de formulários contínuos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (289, 1741902, 'Fabricação de produtos de papel, cartolina, papelcartão e papelão ondulado para uso industrial, comercial e de escritório, exceto formulário contínuo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (290, 1742701, 'Fabricação de fraldas descartáveis');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (291, 1742702, 'Fabricação de absorventes higiênicos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (292, 1742799, 'Fabricação de produtos de papel para uso doméstico e higiênicosanitário não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (293, 1749400, 'Fabricação de produtos de pastas celulósicas, papel, cartolina, papelcartão e papelão ondulado não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (294, 1811301, 'Impressão de jornais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (295, 1811302, 'Impressão de livros, revistas e outras publicações periódicas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (296, 1812100, 'Impressão de material de segurança');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (297, 1813001, 'Impressão de material para uso publicitário');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (298, 1813099, 'Impressão de material para outros usos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (299, 1821100, 'Serviços de préimpressão');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (300, 1822900, 'Serviços de acabamentos gráficos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (301, 1830001, 'Reprodução de som em qualquer suporte');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (302, 1830002, 'Reprodução de vídeo em qualquer suporte');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (303, 1830003, 'Reprodução de software em qualquer suporte');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (304, 1910100, 'Coquerias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (305, 1921700, 'Fabricação de produtos do refino de petróleo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (306, 1922501, 'Formulação de combustíveis');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (307, 1922502, 'Rerrefino de óleos lubrificantes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (308, 1922599, 'Fabricação de outros produtos derivados do petróleo, exceto produtos do refino');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (309, 1931400, 'Fabricação de álcool');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (310, 1932200, 'Fabricação de biocombustíveis, exceto álcool');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (311, 2011800, 'Fabricação de cloro e álcalis');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (312, 2012600, 'Fabricação de intermediários para fertilizantes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (313, 2013400, 'Fabricação de adubos e fertilizantes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (314, 2014200, 'Fabricação de gases industriais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (315, 2019301, 'Elaboração de combustíveis nucleares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (316, 2019399, 'Fabricação de outros produtos químicos inorgânicos não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (317, 2021500, 'Fabricação de produtos petroquímicos básicos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (318, 2022300, 'Fabricação de intermediários para plastificantes, resinas e fibras');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (319, 2029100, 'Fabricação de produtos químicos orgânicos não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (320, 2031200, 'Fabricação de resinas termoplásticas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (321, 2032100, 'Fabricação de resinas termofixas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (322, 2033900, 'Fabricação de elastômeros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (323, 2040100, 'Fabricação de fibras artificiais e sintéticas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (324, 2051700, 'Fabricação de defensivos agrícolas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (325, 2052500, 'Fabricação de desinfestantes domissanitários');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (326, 2061400, 'Fabricação de sabões e detergentes sintéticos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (327, 2062200, 'Fabricação de produtos de limpeza e polimento');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (328, 2063100, 'Fabricação de cosméticos, produtos de perfumaria e de higiene pessoal');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (329, 2071100, 'Fabricação de tintas, vernizes, esmaltes e lacas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (330, 2072000, 'Fabricação de tintas de impressão');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (331, 2073800, 'Fabricação de impermeabilizantes, solventes e produtos afins');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (332, 2091600, 'Fabricação de adesivos e selantes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (333, 2092401, 'Fabricação de pólvoras, explosivos e detonantes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (334, 2092402, 'Fabricação de artigos pirotécnicos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (335, 2092403, 'Fabricação de fósforos de segurança');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (336, 2093200, 'Fabricação de aditivos de uso industrial');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (337, 2094100, 'Fabricação de catalisadores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (338, 2099101, 'Fabricação de chapas, filmes, papéis e outros materiais e produtos químicos para fotografia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (339, 2099199, 'Fabricação de outros produtos químicos não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (340, 2110600, 'Fabricação de produtos farmoquímicos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (341, 2121101, 'Fabricação de medicamentos alopáticos para uso humano');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (342, 2121102, 'Fabricação de medicamentos homeopáticos para uso humano');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (343, 2121103, 'Fabricação de medicamentos fitoterápicos para uso humano');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (344, 2122000, 'Fabricação de medicamentos para uso veterinário');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (345, 2123800, 'Fabricação de preparações farmacêuticas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (346, 2211100, 'Fabricação de pneumáticos e de câmarasdear');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (347, 2212900, 'Reforma de pneumáticos usados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (348, 2219600, 'Fabricação de artefatos de borracha não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (349, 2221800, 'Fabricação de laminados planos e tubulares de material plástico');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (350, 2222600, 'Fabricação de embalagens de material plástico');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (351, 2223400, 'Fabricação de tubos e acessórios de material plástico para uso na construção');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (352, 2229301, 'Fabricação de artefatos de material plástico para uso pessoal e doméstico');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (353, 2229302, 'Fabricação de artefatos de material plástico para usos industriais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (354, 2229303, 'Fabricação de artefatos de material plástico para uso na construção, exceto tubos e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (355, 2229399, 'Fabricação de artefatos de material plástico para outros usos não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (356, 2311700, 'Fabricação de vidro plano e de segurança');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (357, 2312500, 'Fabricação de embalagens de vidro');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (358, 2319200, 'Fabricação de artigos de vidro');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (359, 2320600, 'Fabricação de cimento');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (360, 2330301, 'Fabricação de estruturas prémoldadas de concreto armado, em série e sob encomenda');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (361, 2330302, 'Fabricação de artefatos de cimento para uso na construção');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (362, 2330303, 'Fabricação de artefatos de fibrocimento para uso na construção');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (363, 2330304, 'Fabricação de casas prémoldadas de concreto');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (364, 2330305, 'Preparação de massa de concreto e argamassa para construção');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (365, 2330399, 'Fabricação de outros artefatos e produtos de concreto, cimento, fibrocimento, gesso e materiais semelhantes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (366, 2341900, 'Fabricação de produtos cerâmicos refratários');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (367, 2342701, 'Fabricação de azulejos e pisos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (368, 2342702, 'Fabricação de artefatos de cerâmica e barro cozido para uso na construção, exceto azulejos e pisos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (369, 2349401, 'Fabricação de material sanitário de cerâmica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (370, 2349499, 'Fabricação de produtos cerâmicos nãorefratários não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (371, 2391501, 'Britamento de pedras, exceto associado à extração');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (372, 2391502, 'Aparelhamento de pedras para construção, exceto associado à extração');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (373, 2391503, 'Aparelhamento de placas e execução de trabalhos em mármore, granito, ardósia e outras pedras');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (374, 2392300, 'Fabricação de cal e gesso');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (375, 2399101, 'Decoração, lapidação, gravação, vitrificação e outros trabalhos em cerâmica, louça, vidro e cristal');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (376, 2399199, 'Fabricação de outros produtos de minerais nãometálicos não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (377, 2411300, 'Produção de ferrogusa');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (378, 2412100, 'Produção de ferroligas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (379, 2421100, 'Produção de semiacabados de aço');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (380, 2422901, 'Produção de laminados planos de aço ao carbono, revestidos ou não');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (381, 2422902, 'Produção de laminados planos de aços especiais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (382, 2423701, 'Produção de tubos de aço sem costura');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (383, 2423702, 'Produção de laminados longos de aço, exceto tubos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (384, 2424501, 'Produção de arames de aço');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (385, 2424502, 'Produção de relaminados, trefilados e perfilados de aço, exceto arames');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (386, 2431800, 'Produção de tubos de aço com costura');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (387, 2439300, 'Produção de outros tubos de ferro e aço');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (388, 2441501, 'Produção de alumínio e suas ligas em formas primárias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (389, 2441502, 'Produção de laminados de alumínio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (390, 2442300, 'Metalurgia dos metais preciosos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (391, 2443100, 'Metalurgia do cobre');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (392, 2449101, 'Produção de zinco em formas primárias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (393, 2449102, 'Produção de laminados de zinco');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (394, 2449103, 'Produção de soldas e ânodos para galvanoplastia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (395, 2449199, 'Metalurgia de outros metais nãoferrosos e suas ligas não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (396, 2451200, 'Fundição de ferro e aço');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (397, 2452100, 'Fundição de metais nãoferrosos e suas ligas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (398, 2511000, 'Fabricação de estruturas metálicas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (399, 2512800, 'Fabricação de esquadrias de metal');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (400, 2513600, 'Fabricação de obras de caldeiraria pesada');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (401, 2521700, 'Fabricação de tanques, reservatórios metálicos e caldeiras para aquecimento central');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (402, 2522500, 'Fabricação de caldeiras geradoras de vapor, exceto para aquecimento central e para veículos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (403, 2531401, 'Produção de forjados de aço');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (404, 2531402, 'Produção de forjados de metais nãoferrosos e suas ligas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (405, 2532201, 'Produção de artefatos estampados de metal');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (406, 2532202, 'Metalurgia do pó');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (407, 2539000, 'Serviços de usinagem, solda, tratamento e revestimento em metais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (408, 2541100, 'Fabricação de artigos de cutelaria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (409, 2542000, 'Fabricação de artigos de serralheria, exceto esquadrias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (410, 2543800, 'Fabricação de ferramentas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (411, 2550101, 'Fabricação de equipamento bélico pesado, exceto veículos militares de combate');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (412, 2550102, 'Fabricação de armas de fogo e munições');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (413, 2591800, 'Fabricação de embalagens metálicas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (414, 2592601, 'Fabricação de produtos de trefilados de metal padronizados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (415, 2592602, 'Fabricação de produtos de trefilados de metal, exceto padronizados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (416, 2593400, 'Fabricação de artigos de metal para uso doméstico e pessoal');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (417, 2599301, 'Serviços de confecção de armações metálicas para a construção');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (418, 2599399, 'Fabricação de outros produtos de metal não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (419, 2610800, 'Fabricação de componentes eletrônicos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (420, 2621300, 'Fabricação de equipamentos de informática');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (421, 2622100, 'Fabricação de periféricos para equipamentos de informática');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (422, 2631100, 'Fabricação de equipamentos transmissores de comunicação, peças e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (423, 2632900, 'Fabricação de aparelhos telefônicos e de outros equipamentos de comunicação, peças e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (424, 2640000, 'Fabricação de aparelhos de recepção, reprodução, gravação e amplificação de áudio e vídeo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (425, 2651500, 'Fabricação de aparelhos e equipamentos de medida, teste e controle');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (426, 2652300, 'Fabricação de cronômetros e relógios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (427, 2660400, 'Fabricação de aparelhos eletromédicos e eletroterapêuticos e equipamentos de irradiação');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (428, 2670101, 'Fabricação de equipamentos e instrumentos ópticos, peças e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (429, 2670102, 'Fabricação de aparelhos fotográficos e cinematográficos, peças e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (430, 2680900, 'Fabricação de mídias virgens, magnéticas e ópticas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (431, 2710401, 'Fabricação de geradores de corrente contínua e alternada, peças e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (432, 2710402, 'Fabricação de transformadores, indutores, conversores, sincronizadores e semelhantes, peças e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (433, 2710403, 'Fabricação de motores elétricos, peças e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (434, 2721000, 'Fabricação de pilhas, baterias e acumuladores elétricos, exceto para veículos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (435, 2722801, 'Fabricação de baterias e acumuladores para veículos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (436, 2722802, 'Recondicionamento de baterias e acumuladores para veículos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (437, 2731700, 'Fabricação de aparelhos e equipamentos para distribuição e controle de energia elétrica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (438, 2732500, 'Fabricação de material elétrico para instalações em circuito de consumo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (439, 2733300, 'Fabricação de fios, cabos e condutores elétricos isolados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (440, 2740601, 'Fabricação de lâmpadas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (441, 2740602, 'Fabricação de luminárias e outros equipamentos de iluminação');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (442, 2751100, 'Fabricação de fogões, refrigeradores e máquinas de lavar e secar para uso doméstico, peças e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (443, 2759701, 'Fabricação de aparelhos elétricos de uso pessoal, peças e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (444, 2759799, 'Fabricação de outros aparelhos eletrodomésticos não especificados anteriormente, peças e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (445, 2790201, 'Fabricação de eletrodos, contatos e outros artigos de carvão e grafita para uso elétrico, eletroímãs e isoladores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (446, 2790202, 'Fabricação de equipamentos para sinalização e alarme');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (447, 2790299, 'Fabricação de outros equipamentos e aparelhos elétricos não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (448, 2811900, 'Fabricação de motores e turbinas, peças e acessórios, exceto para aviões e veículos rodoviários');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (449, 2812700, 'Fabricação de equipamentos hidráulicos e pneumáticos, peças e acessórios, exceto válvulas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (450, 2813500, 'Fabricação de válvulas, registros e dispositivos semelhantes, peças e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (451, 2814301, 'Fabricação de compressores para uso industrial, peças e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (452, 2814302, 'Fabricação de compressores para uso não industrial, peças e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (453, 2815101, 'Fabricação de rolamentos para fins industriais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1000, 6424703, 'Cooperativas de crédito mútuo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (454, 2815102, 'Fabricação de equipamentos de transmissão para fins industriais, exceto rolamentos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (455, 2821601, 'Fabricação de fornos industriais, aparelhos e equipamentos nãoelétricos para instalações térmicas, peças e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (456, 2821602, 'Fabricação de estufas e fornos elétricos para fins industriais, peças e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (457, 2822401, 'Fabricação de máquinas, equipamentos e aparelhos para transporte e elevação de pessoas, peças e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (458, 2822402, 'Fabricação de máquinas, equipamentos e aparelhos para transporte e elevação de cargas, peças e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (459, 2823200, 'Fabricação de máquinas e aparelhos de refrigeração e ventilação para uso industrial e comercial, peças e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (460, 2824101, 'Fabricação de aparelhos e equipamentos de ar condicionado para uso industrial');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (461, 2824102, 'Fabricação de aparelhos e equipamentos de ar condicionado para uso nãoindustrial');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (462, 2825900, 'Fabricação de máquinas e equipamentos para saneamento básico e ambiental, peças e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (463, 2829101, 'Fabricação de máquinas de escrever, calcular e outros equipamentos nãoeletrônicos para escritório, peças e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (464, 2829199, 'Fabricação de outras máquinas e equipamentos de uso geral não especificados anteriormente, peças e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (465, 2831300, 'Fabricação de tratores agrícolas, peças e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (466, 2832100, 'Fabricação de equipamentos para irrigação agrícola, peças e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (467, 2833000, 'Fabricação de máquinas e equipamentos para a agricultura e pecuária, peças e acessórios, exceto para irrigação');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (468, 2840200, 'Fabricação de máquinasferramenta, peças e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (469, 2851800, 'Fabricação de máquinas e equipamentos para a prospecção e extração de petróleo, peças e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (470, 2852600, 'Fabricação de outras máquinas e equipamentos para uso na extração mineral, peças e acessórios, exceto na extração de petróleo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (471, 2853400, 'Fabricação de tratores, peças e acessórios, exceto agrícolas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (472, 2854200, 'Fabricação de máquinas e equipamentos para terraplenagem, pavimentação e construção, peças e acessórios, exceto tratores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (473, 2861500, 'Fabricação de máquinas para a indústria metalúrgica, peças e acessórios, exceto máquinasferramenta');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (474, 2862300, 'Fabricação de máquinas e equipamentos para as indústrias de alimentos, bebidas e fumo, peças e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (475, 2863100, 'Fabricação de máquinas e equipamentos para a indústria têxtil, peças e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (476, 2864000, 'Fabricação de máquinas e equipamentos para as indústrias do vestuário, do couro e de calçados, peças e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (477, 2865800, 'Fabricação de máquinas e equipamentos para as indústrias de celulose, papel e papelão e artefatos, peças e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (478, 2866600, 'Fabricação de máquinas e equipamentos para a indústria do plástico, peças e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (479, 2869100, 'Fabricação de máquinas e equipamentos para uso industrial específico não especificados anteriormente, peças e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (480, 2910701, 'Fabricação de automóveis, camionetas e utilitários');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (481, 2910702, 'Fabricação de chassis com motor para automóveis, camionetas e utilitários');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (482, 2910703, 'Fabricação de motores para automóveis, camionetas e utilitários');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (483, 2920401, 'Fabricação de caminhões e ônibus');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (484, 2920402, 'Fabricação de motores para caminhões e ônibus');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (485, 2930101, 'Fabricação de cabines, carrocerias e reboques para caminhões');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (486, 2930102, 'Fabricação de carrocerias para ônibus');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (487, 2930103, 'Fabricação de cabines, carrocerias e reboques para outros veículos automotores, exceto caminhões e ônibus');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (488, 2941700, 'Fabricação de peças e acessórios para o sistema motor de veículos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (489, 2942500, 'Fabricação de peças e acessórios para os sistemas de marcha e transmissão de veículos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (490, 2943300, 'Fabricação de peças e acessórios para o sistema de freios de veículos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (491, 2944100, 'Fabricação de peças e acessórios para o sistema de direção e suspensão de veículos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (492, 2945000, 'Fabricação de material elétrico e eletrônico para veículos automotores, exceto baterias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (493, 2949201, 'Fabricação de bancos e estofados para veículos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (494, 2949299, 'Fabricação de outras peças e acessórios para veículos automotores não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (495, 2950600, 'Recondicionamento e recuperação de motores para veículos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (496, 3011301, 'Construção de embarcações de grande porte');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (497, 3011302, 'Construção de embarcações para uso comercial e para usos especiais, exceto de grande porte');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (498, 3012100, 'Construção de embarcações para esporte e lazer');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (499, 3021100, 'Manutenção e reparação de embarcações e estruturas flutuantes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (500, 3022900, 'Manutenção e reparação de embarcações para esporte e lazer');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (501, 3031800, 'Fabricação de locomotivas, vagões e outros materiais rodantes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (502, 3032600, 'Fabricação de peças e acessórios para veículos ferroviários');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (503, 3041500, 'Fabricação de aeronaves');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (504, 3042300, 'Fabricação de turbinas, motores e outros componentes e peças para aeronaves');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (505, 3050400, 'Fabricação de veículos militares de combate');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (506, 3091100, 'Fabricação de motocicletas, peças e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (507, 3092000, 'Fabricação de bicicletas e triciclos nãomotorizados, peças e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (508, 3099700, 'Fabricação de equipamentos de transporte não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (509, 3101200, 'Fabricação de móveis com predominância de madeira');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (510, 3102100, 'Fabricação de móveis com predominância de metal');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (511, 3103900, 'Fabricação de móveis de outros materiais, exceto madeira e metal');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (512, 3104700, 'Fabricação de colchões');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (513, 3211601, 'Lapidação de gemas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (514, 3211602, 'Fabricação de artefatos de joalheria e ourivesaria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (515, 3211603, 'Cunhagem de moedas e medalhas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (516, 3212400, 'Fabricação de bijuterias e artefatos semelhantes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (517, 3220500, 'Fabricação de instrumentos musicais, peças e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (518, 3230200, 'Fabricação de artefatos para pesca e esporte');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (519, 3240001, 'Fabricação de jogos eletrônicos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (520, 3240002, 'Fabricação de mesas de bilhar, de sinuca e acessórios não associada à locação');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (521, 3240003, 'Fabricação de mesas de bilhar, de sinuca e acessórios associada à locação');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (595, 3832700, 'Recuperação de materiais plásticos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (522, 3240099, 'Fabricação de outros brinquedos e jogos recreativos não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (523, 3250701, 'Fabricação de instrumentos nãoeletrônicos e utensílios para uso médico, cirúrgico, odontológico e de laboratório');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (524, 3250702, 'Fabricação de mobiliário para uso médico, cirúrgico, odontológico e de laboratório');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (525, 3250703, 'Fabricação de aparelhos e utensílios para correção de defeitos físicos e aparelhos ortopédicos em geral sob encomenda');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (526, 3250704, 'Fabricação de aparelhos e utensílios para correção de defeitos físicos e aparelhos ortopédicos em geral, exceto sob encomenda');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (527, 3250705, 'Fabricação de materiais para medicina e odontologia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (528, 3250706, 'Serviços de prótese dentária');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (529, 3250707, 'Fabricação de artigos ópticos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (530, 3250708, 'Fabricação de artefatos de tecido não tecido para uso odontomédicohospitalar');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (531, 3291400, 'Fabricação de escovas, pincéis e vassouras');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (532, 3292201, 'Fabricação de roupas de proteção e segurança e resistentes a fogo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (533, 3292202, 'Fabricação de equipamentos e acessórios para segurança pessoal e profissional');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (534, 3299001, 'Fabricação de guardachuvas e similares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (535, 3299002, 'Fabricação de canetas, lápis e outros artigos para escritório');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (536, 3299003, 'Fabricação de letras, letreiros e placas de qualquer material, exceto luminosos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (537, 3299004, 'Fabricação de painéis e letreiros luminosos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (538, 3299005, 'Fabricação de aviamentos para costura');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (539, 3299099, 'Fabricação de produtos diversos não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (540, 3311200, 'Manutenção e reparação de tanques, reservatórios metálicos e caldeiras, exceto para veículos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (541, 3312101, 'Manutenção e reparação de equipamentos transmissores de comunicação');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (542, 3312102, 'Manutenção e reparação de aparelhos e instrumentos de medida, teste e controle');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (543, 3312103, 'Manutenção e reparação de aparelhos eletromédicos e eletroterapêuticos e equipamentos de irradiação');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (544, 3312104, 'Manutenção e reparação de equipamentos e instrumentos ópticos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (545, 3313901, 'Manutenção e reparação de geradores, transformadores e motores elétricos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (546, 3313902, 'Manutenção e reparação de baterias e acumuladores elétricos, exceto para veículos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (547, 3313999, 'Manutenção e reparação de máquinas, aparelhos e materiais elétricos não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (548, 3314701, 'Manutenção e reparação de máquinas motrizes nãoelétricas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (549, 3314702, 'Manutenção e reparação de equipamentos hidráulicos e pneumáticos, exceto válvulas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (550, 3314703, 'Manutenção e reparação de válvulas industriais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (551, 3314704, 'Manutenção e reparação de compressores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (552, 3314705, 'Manutenção e reparação de equipamentos de transmissão para fins industriais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (553, 3314706, 'Manutenção e reparação de máquinas, aparelhos e equipamentos para instalações térmicas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (554, 3314707, 'Manutenção e reparação de máquinas e aparelhos de refrigeração e ventilação para uso industrial e comercial');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (555, 3314708, 'Manutenção e reparação de máquinas, equipamentos e aparelhos para transporte e elevação de cargas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (556, 3314709, 'Manutenção e reparação de máquinas de escrever, calcular e de outros equipamentos nãoeletrônicos para escritório');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (557, 3314710, 'Manutenção e reparação de máquinas e equipamentos para uso geral não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (558, 3314711, 'Manutenção e reparação de máquinas e equipamentos para agricultura e pecuária');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (559, 3314712, 'Manutenção e reparação de tratores agrícolas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (560, 3314713, 'Manutenção e reparação de máquinasferramenta');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (561, 3314714, 'Manutenção e reparação de máquinas e equipamentos para a prospecção e extração de petróleo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (562, 3314715, 'Manutenção e reparação de máquinas e equipamentos para uso na extração mineral, exceto na extração de petróleo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (563, 3314716, 'Manutenção e reparação de tratores, exceto agrícolas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (564, 3314717, 'Manutenção e reparação de máquinas e equipamentos de terraplenagem, pavimentação e construção, exceto tratores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (565, 3314718, 'Manutenção e reparação de máquinas para a indústria metalúrgica, exceto máquinasferramenta');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (566, 3314719, 'Manutenção e reparação de máquinas e equipamentos para as indústrias de alimentos, bebidas e fumo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (567, 3314720, 'Manutenção e reparação de máquinas e equipamentos para a indústria têxtil, do vestuário, do couro e calçados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (568, 3314721, 'Manutenção e reparação de máquinas e aparelhos para a indústria de celulose, papel e papelão e artefatos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (569, 3314722, 'Manutenção e reparação de máquinas e aparelhos para a indústria do plástico');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (570, 3314799, 'Manutenção e reparação de outras máquinas e equipamentos para usos industriais não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (571, 3315500, 'Manutenção e reparação de veículos ferroviários');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (572, 3316301, 'Manutenção e reparação de aeronaves, exceto a manutenção na pista');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (573, 3316302, 'Manutenção de aeronaves na pista *');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (574, 3319800, 'Manutenção e reparação de equipamentos e produtos não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (575, 3321000, 'Instalação de máquinas e equipamentos industriais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (576, 3329501, 'Serviços de montagem de móveis de qualquer material');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (577, 3329599, 'Instalação de outros equipamentos não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (578, 3511500, 'Geração de energia elétrica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (579, 3512300, 'Transmissão de energia elétrica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (580, 3513100, 'Comércio atacadista de energia elétrica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (581, 3514000, 'Distribuição de energia elétrica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (582, 3520401, 'Produção de gás; processamento de gás natural');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (583, 3520402, 'Distribuição de combustíveis gasosos por redes urbanas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (584, 3530100, 'Produção e distribuição de vapor, água quente e ar condicionado');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (585, 3600601, 'Captação, tratamento e distribuição de água');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (586, 3600602, 'Distribuição de água por caminhões');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (587, 3701100, 'Gestão de redes de esgoto');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (588, 3702900, 'Atividades relacionadas a esgoto, exceto a gestão de redes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (589, 3811400, 'Coleta de resíduos nãoperigosos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (590, 3812200, 'Coleta de resíduos perigosos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (591, 3821100, 'Tratamento e disposição de resíduos nãoperigosos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (592, 3822000, 'Tratamento e disposição de resíduos perigosos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (593, 3831901, 'Recuperação de sucatas de alumínio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (596, 3839401, 'Usinas de compostagem');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (597, 3839499, 'Recuperação de materiais não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (598, 3900500, 'Descontaminação e outros serviços de gestão de resíduos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (599, 4110700, 'Incorporação de empreendimentos imobiliários');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (600, 4120400, 'Construção de edifícios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (601, 4211101, 'Construção de rodovias e ferrovias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (602, 4211102, 'Pintura para sinalização em pistas rodoviárias e aeroportos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (603, 4212000, 'Construção de obras de arte especiais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (604, 4213800, 'Obras de urbanização  ruas, praças e calçadas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (605, 4221901, 'Construção de barragens e represas para geração de energia elétrica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (606, 4221902, 'Construção de estações e redes de distribuição de energia elétrica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (607, 4221903, 'Manutenção de redes de distribuição de energia elétrica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (608, 4221904, 'Construção de estações e redes de telecomunicações');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (609, 4221905, 'Manutenção de estações e redes de telecomunicações');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (610, 4222701, 'Construção de redes de abastecimento de água, coleta de esgoto e construções correlatas, exceto obras de irrigação');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (611, 4222702, 'Obras de irrigação');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (612, 4223500, 'Construção de redes de transportes por dutos, exceto para água e esgoto');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (613, 4291000, 'Obras portuárias, marítimas e fluviais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (614, 4292801, 'Montagem de estruturas metálicas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (615, 4292802, 'Obras de montagem industrial');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (616, 4299501, 'Construção de instalações esportivas e recreativas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (617, 4299599, 'Outras obras de engenharia civil não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (618, 4311801, 'Demolição de edifícios e outras estruturas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (619, 4311802, 'Preparação de canteiro e limpeza de terreno');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (620, 4312600, 'Perfurações e sondagens');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (621, 4313400, 'Obras de terraplenagem');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (622, 4319300, 'Serviços de preparação do terreno não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (623, 4321500, 'Instalação e manutenção elétrica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (624, 4322301, 'Instalações hidráulicas, sanitárias e de gás');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (625, 4322302, 'Instalação e manutenção de sistemas centrais de ar condicionado, de ventilação e refrigeração');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (626, 4322303, 'Instalações de sistema de prevenção contra incêndio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (627, 4329101, 'Instalação de painéis publicitários');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (628, 4329102, 'Instalação de equipamentos para orientação à navegação marítima, fluvial e lacustre');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (629, 4329103, 'Instalação, manutenção e reparação de elevadores, escadas e esteiras rolantes, exceto de fabricação própria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (630, 4329104, 'Montagem e instalação de sistemas e equipamentos de iluminação e sinalização em vias públicas, portos e aeroportos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (631, 4329105, 'Tratamentos térmicos, acústicos ou de vibração');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (632, 4329199, 'Outras obras de instalações em construções não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (633, 4330401, 'Impermeabilização em obras de engenharia civil');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (634, 4330402, 'Instalação de portas, janelas, tetos, divisórias e armários embutidos de qualquer material');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (635, 4330403, 'Obras de acabamento em gesso e estuque');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (636, 4330404, 'Serviços de pintura de edifícios em geral');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (637, 4330405, 'Aplicação de revestimentos e de resinas em interiores e exteriores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (638, 4330499, 'Outras obras de acabamento da construção');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (639, 4391600, 'Obras de fundações');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (640, 4399101, 'Administração de obras');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (641, 4399102, 'Montagem e desmontagem de andaimes e outras estruturas temporárias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (642, 4399103, 'Obras de alvenaria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (643, 4399104, 'Serviços de operação e fornecimento de equipamentos para transporte e elevação de cargas e pessoas para uso em obras');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (644, 4399105, 'Perfuração e construção de poços de água');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (645, 4399199, 'Serviços especializados para construção não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (646, 4511101, 'Comércio a varejo de automóveis, camionetas e utilitários novos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (647, 4511102, 'Comércio a varejo de automóveis, camionetas e utilitários usados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (648, 4511103, 'Comércio por atacado de automóveis, camionetas e utilitários novos e usados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (649, 4511104, 'Comércio por atacado de caminhões novos e usados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (650, 4511105, 'Comércio por atacado de reboques e semireboques novos e usados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (651, 4511106, 'Comércio por atacado de ônibus e microônibus novos e usados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (652, 4512901, 'Representantes comerciais e agentes do comércio de veículos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (653, 4512902, 'Comércio sob consignação de veículos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (654, 4520001, 'Serviços de manutenção e reparação mecânica de veículos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (655, 4520002, 'Serviços de lanternagem ou funilaria e pintura de veículos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (656, 4520003, 'Serviços de manutenção e reparação elétrica de veículos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (657, 4520004, 'Serviços de alinhamento e balanceamento de veículos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (658, 4520005, 'Serviços de lavagem, lubrificação e polimento de veículos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (659, 4520006, 'Serviços de borracharia para veículos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (660, 4520007, 'Serviços de instalação, manutenção e reparação de acessórios para veículos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (661, 4530701, 'Comércio por atacado de peças e acessórios novos para veículos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (662, 4530702, 'Comércio por atacado de pneumáticos e câmarasdear');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (663, 4530703, 'Comércio a varejo de peças e acessórios novos para veículos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (664, 4530704, 'Comércio a varejo de peças e acessórios usados para veículos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (665, 4530705, 'Comércio a varejo de pneumáticos e câmarasdear');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (666, 4530706, 'Representantes comerciais e agentes do comércio de peças e acessórios novos e usados para veículos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (667, 4541201, 'Comércio por atacado de motocicletas e motonetas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (668, 4541202, 'Comércio por atacado de peças e acessórios para motocicletas e motonetas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (669, 4541203, 'Comércio a varejo de motocicletas e motonetas novas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (670, 4541204, 'Comércio a varejo de motocicletas e motonetas usadas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (671, 4541205, 'Comércio a varejo de peças e acessórios para motocicletas e motonetas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (672, 4542101, 'Representantes comerciais e agentes do comércio de motocicletas e motonetas, peças e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (673, 4542102, 'Comércio sob consignação de motocicletas e motonetas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (674, 4543900, 'Manutenção e reparação de motocicletas e motonetas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (675, 4611700, 'Representantes comerciais e agentes do comércio de matériasprimas agrícolas e animais vivos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (827, 4755501, 'Comércio varejista de tecidos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (676, 4612500, 'Representantes comerciais e agentes do comércio de combustíveis, minerais, produtos siderúrgicos e químicos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (677, 4613300, 'Representantes comerciais e agentes do comércio de madeira, material de construção e ferragens');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (678, 4614100, 'Representantes comerciais e agentes do comércio de máquinas, equipamentos, embarcações e aeronaves');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (679, 4615000, 'Representantes comerciais e agentes do comércio de eletrodomésticos, móveis e artigos de uso doméstico');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (680, 4616800, 'Representantes comerciais e agentes do comércio de têxteis, vestuário, calçados e artigos de viagem');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (681, 4617600, 'Representantes comerciais e agentes do comércio de produtos alimentícios, bebidas e fumo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (682, 4618401, 'Representantes comerciais e agentes do comércio de medicamentos, cosméticos e produtos de perfumaria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (683, 4618402, 'Representantes comerciais e agentes do comércio de instrumentos e materiais odontomédicohospitalares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (684, 4618403, 'Representantes comerciais e agentes do comércio de jornais, revistas e outras publicações');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (685, 4618499, 'Outros representantes comerciais e agentes do comércio especializado em produtos não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (686, 4619200, 'Representantes comerciais e agentes do comércio de mercadorias em geral não especializado');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (687, 4621400, 'Comércio atacadista de café em grão');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (688, 4622200, 'Comércio atacadista de soja');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (689, 4623101, 'Comércio atacadista de animais vivos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (690, 4623102, 'Comércio atacadista de couros, lãs, peles e outros subprodutos nãocomestíveis de origem animal');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (691, 4623103, 'Comércio atacadista de algodão');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (692, 4623104, 'Comércio atacadista de fumo em folha não beneficiado');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (693, 4623105, 'Comércio atacadista de cacau *');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (694, 4623106, 'Comércio atacadista de sementes, flores, plantas e gramas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (695, 4623107, 'Comércio atacadista de sisal');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (696, 4623108, 'Comércio atacadista de matériasprimas agrícolas com atividade de fracionamento e acondicionamento associada');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (697, 4623109, 'Comércio atacadista de alimentos para animais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (698, 4623199, 'Comércio atacadista de matériasprimas agrícolas não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (699, 4631100, 'Comércio atacadista de leite e laticínios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (700, 4632001, 'Comércio atacadista de cereais e leguminosas beneficiados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (701, 4632002, 'Comércio atacadista de farinhas, amidos e féculas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (702, 4632003, 'Comércio atacadista de cereais e leguminosas beneficiados, farinhas, amidos e féculas, com atividade de fracionamento e acondicionamento associada');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (703, 4633801, 'Comércio atacadista de frutas, verduras, raízes, tubérculos, hortaliças e legumes frescos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (704, 4633802, 'Comércio atacadista de aves vivas e ovos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (705, 4633803, 'Comércio atacadista de coelhos e outros pequenos animais vivos para alimentação');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (706, 4634601, 'Comércio atacadista de carnes bovinas e suínas e derivados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (707, 4634602, 'Comércio atacadista de aves abatidas e derivados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (708, 4634603, 'Comércio atacadista de pescados e frutos do mar');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (709, 4634699, 'Comércio atacadista de carnes e derivados de outros animais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (710, 4635401, 'Comércio atacadista de água mineral');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (711, 4635402, 'Comércio atacadista de cerveja, chope e refrigerante');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (712, 4635403, 'Comércio atacadista de bebidas com atividade de fracionamento e acondicionamento associada');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (713, 4635499, 'Comércio atacadista de bebidas não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (714, 4636201, 'Comércio atacadista de fumo beneficiado');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (715, 4636202, 'Comércio atacadista de cigarros, cigarrilhas e charutos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (716, 4637101, 'Comércio atacadista de café torrado, moído e solúvel');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (717, 4637102, 'Comércio atacadista de açúcar');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (718, 4637103, 'Comércio atacadista de óleos e gorduras');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (719, 4637104, 'Comércio atacadista de pães, bolos, biscoitos e similares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (720, 4637105, 'Comércio atacadista de massas alimentícias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (721, 4637106, 'Comércio atacadista de sorvetes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (722, 4637107, 'Comércio atacadista de chocolates, confeitos, balas, bombons e semelhantes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (723, 4637199, 'Comércio atacadista especializado em outros produtos alimentícios não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (724, 4639701, 'Comércio atacadista de produtos alimentícios em geral');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (725, 4639702, 'Comércio atacadista de produtos alimentícios em geral, com atividade de fracionamento e acondicionamento associada');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (726, 4641901, 'Comércio atacadista de tecidos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (727, 4641902, 'Comércio atacadista de artigos de cama, mesa e banho');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (728, 4641903, 'Comércio atacadista de artigos de armarinho');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (729, 4642701, 'Comércio atacadista de artigos do vestuário e acessórios, exceto profissionais e de segurança');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (730, 4642702, 'Comércio atacadista de roupas e acessórios para uso profissional e de segurança do trabalho');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (731, 4643501, 'Comércio atacadista de calçados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (732, 4643502, 'Comércio atacadista de bolsas, malas e artigos de viagem');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (733, 4644301, 'Comércio atacadista de medicamentos e drogas de uso humano');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (734, 4644302, 'Comércio atacadista de medicamentos e drogas de uso veterinário');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (735, 4645101, 'Comércio atacadista de instrumentos e materiais para uso médico, cirúrgico, hospitalar e de laboratórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (736, 4645102, 'Comércio atacadista de próteses e artigos de ortopedia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (737, 4645103, 'Comércio atacadista de produtos odontológicos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (738, 4646001, 'Comércio atacadista de cosméticos e produtos de perfumaria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (739, 4646002, 'Comércio atacadista de produtos de higiene pessoal');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (740, 4647801, 'Comércio atacadista de artigos de escritório e de papelaria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (741, 4647802, 'Comércio atacadista de livros, jornais e outras publicações');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (742, 4649401, 'Comércio atacadista de equipamentos elétricos de uso pessoal e doméstico');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (743, 4649402, 'Comércio atacadista de aparelhos eletrônicos de uso pessoal e doméstico');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (744, 4649403, 'Comércio atacadista de bicicletas, triciclos e outros veículos recreativos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (745, 4649404, 'Comércio atacadista de móveis e artigos de colchoaria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (746, 4649405, 'Comércio atacadista de artigos de tapeçaria; persianas e cortinas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (747, 4649406, 'Comércio atacadista de lustres, luminárias e abajures');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (748, 4649407, 'Comércio atacadista de filmes, CDs, DVDs, fitas e discos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (749, 4649408, 'Comércio atacadista de produtos de higiene, limpeza e conservação domiciliar');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (750, 4649409, 'Comércio atacadista de produtos de higiene, limpeza e conservação domiciliar, com atividade de fracionamento e acondicionamento associada');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (751, 4649410, 'Comércio atacadista de jóias, relógios e bijuterias, inclusive pedras preciosas e semipreciosas lapidadas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (752, 4649499, 'Comércio atacadista de outros equipamentos e artigos de uso pessoal e doméstico não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (753, 4651601, 'Comércio atacadista de equipamentos de informática');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (754, 4651602, 'Comércio atacadista de suprimentos para informática');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (755, 4652400, 'Comércio atacadista de componentes eletrônicos e equipamentos de telefonia e comunicação');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (756, 4661300, 'Comércio atacadista de máquinas, aparelhos e equipamentos para uso agropecuário; partes e peças');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (757, 4662100, 'Comércio atacadista de máquinas, equipamentos para terraplenagem, mineração e construção; partes e peças');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (758, 4663000, 'Comércio atacadista de máquinas e equipamentos para uso industrial; partes e peças');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (759, 4664800, 'Comércio atacadista de máquinas, aparelhos e equipamentos para uso odontomédicohospitalar; partes e peças');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (760, 4665600, 'Comércio atacadista de máquinas e equipamentos para uso comercial; partes e peças');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (761, 4669901, 'Comércio atacadista de bombas e compressores; partes e peças');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (762, 4669999, 'Comércio atacadista de outras máquinas e equipamentos não especificados anteriormente; partes e peças');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (763, 4671100, 'Comércio atacadista de madeira e produtos derivados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (764, 4672900, 'Comércio atacadista de ferragens e ferramentas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (765, 4673700, 'Comércio atacadista de material elétrico');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (766, 4674500, 'Comércio atacadista de cimento');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (767, 4679601, 'Comércio atacadista de tintas, vernizes e similares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (768, 4679602, 'Comércio atacadista de mármores e granitos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (769, 4679603, 'Comércio atacadista de vidros, espelhos e vitrais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (770, 4679604, 'Comércio atacadista especializado de materiais de construção não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (771, 4679699, 'Comércio atacadista de materiais de construção em geral');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (772, 4681801, 'Comércio atacadista de álcool carburante, biodiesel, gasolina e demais derivados de petróleo, exceto lubrificantes, não realizado por transportador retalhista (TRR)');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (773, 4681802, 'Comércio atacadista de combustíveis realizado por transportador retalhista (TRR)');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (774, 4681803, 'Comércio atacadista de combustíveis de origem vegetal, exceto álcool carburante');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (775, 4681804, 'Comércio atacadista de combustíveis de origem mineral em bruto');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (776, 4681805, 'Comércio atacadista de lubrificantes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (777, 4682600, 'Comércio atacadista de gás liqüefeito de petróleo (GLP)');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (778, 4683400, 'Comércio atacadista de defensivos agrícolas, adubos, fertilizantes e corretivos do solo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (779, 4684201, 'Comércio atacadista de resinas e elastômeros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (780, 4684202, 'Comércio atacadista de solventes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (781, 4684299, 'Comércio atacadista de outros produtos químicos e petroquímicos não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (782, 4685100, 'Comércio atacadista de produtos siderúrgicos e metalúrgicos, exceto para construção');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (783, 4686901, 'Comércio atacadista de papel e papelão em bruto');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (784, 4686902, 'Comércio atacadista de embalagens');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (785, 4687701, 'Comércio atacadista de resíduos de papel e papelão');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (786, 4687702, 'Comércio atacadista de resíduos e sucatas nãometálicos, exceto de papel e papelão');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (787, 4687703, 'Comércio atacadista de resíduos e sucatas metálicos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (788, 4689301, 'Comércio atacadista de produtos da extração mineral, exceto combustíveis');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (789, 4689302, 'Comércio atacadista de fios e fibras têxteis beneficiados *');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (790, 4689399, 'Comércio atacadista especializado em outros produtos intermediários não especificados anteriormente *');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (791, 4691500, 'Comércio atacadista de mercadorias em geral, com predominância de produtos alimentícios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (792, 4692300, 'Comércio atacadista de mercadorias em geral, com predominância de insumos agropecuários');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (793, 4693100, 'Comércio atacadista de mercadorias em geral, sem predominância de alimentos ou de insumos agropecuários');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (794, 4711301, 'Comércio varejista de mercadorias em geral, com predominância de produtos alimentícios  hipermercados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (795, 4711302, 'Comércio varejista de mercadorias em geral, com predominância de produtos alimentícios  supermercados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (796, 4712100, 'Comércio varejista de mercadorias em geral, com predominância de produtos alimentícios  minimercados, mercearias e armazéns');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (797, 4713001, 'Lojas de departamentos ou magazines');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (798, 4713002, 'Lojas de variedades, exceto lojas de departamentos ou magazines');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (799, 4713003, 'Lojas duty free de aeroportos internacionais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (800, 4721101, 'Padaria e confeitaria com predominância de produção própria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (801, 4721102, 'Padaria e confeitaria com predominância de revenda');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (802, 4721103, 'Comércio varejista de laticínios e frios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (803, 4721104, 'Comércio varejista de doces, balas, bombons e semelhantes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (804, 4722901, 'Comércio varejista de carnes  açougues');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (805, 4722902, 'Peixaria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (806, 4723700, 'Comércio varejista de bebidas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (807, 4724500, 'Comércio varejista de hortifrutigranjeiros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (808, 4729601, 'Tabacaria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (809, 4729699, 'Comércio varejista de produtos alimentícios em geral ou especializado em produtos alimentícios não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (810, 4731800, 'Comércio varejista de combustíveis para veículos automotores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (811, 4732600, 'Comércio varejista de lubrificantes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (812, 4741500, 'Comércio varejista de tintas e materiais para pintura');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (813, 4742300, 'Comércio varejista de material elétrico');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (814, 4743100, 'Comércio varejista de vidros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (815, 4744001, 'Comércio varejista de ferragens e ferramentas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (816, 4744002, 'Comércio varejista de madeira e artefatos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (817, 4744003, 'Comércio varejista de materiais hidráulicos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (818, 4744004, 'Comércio varejista de cal, areia, pedra britada, tijolos e telhas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (819, 4744005, 'Comércio varejista de materiais de construção não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (820, 4744099, 'Comércio varejista de materiais de construção em geral');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (821, 4751200, 'Comércio varejista especializado de equipamentos e suprimentos de informática');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (822, 4752100, 'Comércio varejista especializado de equipamentos de telefonia e comunicação');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (823, 4753900, 'Comércio varejista especializado de eletrodomésticos e equipamentos de áudio e vídeo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (824, 4754701, 'Comércio varejista de móveis');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (825, 4754702, 'Comércio varejista de artigos de colchoaria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (826, 4754703, 'Comércio varejista de artigos de iluminação');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (828, 4755502, 'Comercio varejista de artigos de armarinho');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (829, 4755503, 'Comercio varejista de artigos de cama, mesa e banho');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (830, 4756300, 'Comércio varejista especializado de instrumentos musicais e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (831, 4757100, 'Comércio varejista especializado de peças e acessórios para aparelhos eletroeletrônicos para uso doméstico, exceto informática e comunicação');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (832, 4759801, 'Comércio varejista de artigos de tapeçaria, cortinas e persianas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (833, 4759899, 'Comércio varejista de outros artigos de uso doméstico não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (834, 4761001, 'Comércio varejista de livros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (835, 4761002, 'Comércio varejista de jornais e revistas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (836, 4761003, 'Comércio varejista de artigos de papelaria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (837, 4762800, 'Comércio varejista de discos, CDs, DVDs e fitas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (838, 4763601, 'Comércio varejista de brinquedos e artigos recreativos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (839, 4763602, 'Comércio varejista de artigos esportivos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (840, 4763603, 'Comércio varejista de bicicletas e triciclos; peças e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (841, 4763604, 'Comércio varejista de artigos de caça, pesca e camping');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (842, 4763605, 'Comércio varejista de embarcações e outros veículos recreativos; peças e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (843, 4771701, 'Comércio varejista de produtos farmacêuticos, sem manipulação de fórmulas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (844, 4771702, 'Comércio varejista de produtos farmacêuticos, com manipulação de fórmulas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (845, 4771703, 'Comércio varejista de produtos farmacêuticos homeopáticos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (846, 4771704, 'Comércio varejista de medicamentos veterinários');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (847, 4772500, 'Comércio varejista de cosméticos, produtos de perfumaria e de higiene pessoal');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (848, 4773300, 'Comércio varejista de artigos médicos e ortopédicos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (849, 4774100, 'Comércio varejista de artigos de óptica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (850, 4781400, 'Comércio varejista de artigos do vestuário e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (851, 4782201, 'Comércio varejista de calçados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (852, 4782202, 'Comércio varejista de artigos de viagem');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (853, 4783101, 'Comércio varejista de artigos de joalheria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (854, 4783102, 'Comércio varejista de artigos de relojoaria');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (855, 4784900, 'Comércio varejista de gás liqüefeito de petróleo (GLP)');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (856, 4785701, 'Comércio varejista de antigüidades');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (857, 4785799, 'Comércio varejista de outros artigos usados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (858, 4789001, 'Comércio varejista de suvenires, bijuterias e artesanatos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (859, 4789002, 'Comércio varejista de plantas e flores naturais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (860, 4789003, 'Comércio varejista de objetos de arte');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (861, 4789004, 'Comércio varejista de animais vivos e de artigos e alimentos para animais de estimação');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (862, 4789005, 'Comércio varejista de produtos saneantes domissanitários');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (863, 4789006, 'Comércio varejista de fogos de artifício e artigos pirotécnicos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (864, 4789007, 'Comércio varejista de equipamentos para escritório');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (865, 4789008, 'Comércio varejista de artigos fotográficos e para filmagem');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (866, 4789009, 'Comércio varejista de armas e munições');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (867, 4789099, 'Comércio varejista de outros produtos não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (868, 4911600, 'Transporte ferroviário de carga');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (869, 4912401, 'Transporte ferroviário de passageiros intermunicipal e interestadual');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (870, 4912402, 'Transporte ferroviário de passageiros municipal e em região metropolitana');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (871, 4912403, 'Transporte metroviário');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (872, 4921301, 'Transporte rodoviário coletivo de passageiros, com itinerário fixo, municipal');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (873, 4921302, 'Transporte rodoviário coletivo de passageiros, com itinerário fixo, intermunicipal em região metropolitana');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (874, 4922101, 'Transporte rodoviário coletivo de passageiros, com itinerário fixo, intermunicipal, exceto em região metropolitana');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (875, 4922102, 'Transporte rodoviário coletivo de passageiros, com itinerário fixo, interestadual');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (876, 4922103, 'Transporte rodoviário coletivo de passageiros, com itinerário fixo, internacional');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (877, 4923001, 'Serviço de táxi');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (878, 4923002, 'Serviço de transporte de passageiros  locação de automóveis com motorista');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (879, 4924800, 'Transporte escolar');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (880, 4929901, 'Transporte rodoviário coletivo de passageiros, sob regime de fretamento, municipal');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (881, 4929902, 'Transporte rodoviário coletivo de passageiros, sob regime de fretamento, intermunicipal, interestadual e internacional');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (882, 4929903, 'Organização de excursões em veículos rodoviários próprios, municipal');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (883, 4929904, 'Organização de excursões em veículos rodoviários próprios, intermunicipal, interestadual e internacional');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (884, 4929999, 'Outros transportes rodoviários de passageiros não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (885, 4930201, 'Transporte rodoviário de carga, exceto produtos perigosos e mudanças, municipal');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (886, 4930202, 'Transporte rodoviário de carga, exceto produtos perigosos e mudanças, intermunicipal, interestadual e internacional');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (887, 4930203, 'Transporte rodoviário de produtos perigosos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (888, 4930204, 'Transporte rodoviário de mudanças');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (889, 4940000, 'Transporte dutoviário');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (890, 4950700, 'Trens turísticos, teleféricos e similares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (891, 5011401, 'Transporte marítimo de cabotagem  Carga');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (892, 5011402, 'Transporte marítimo de cabotagem  passageiros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (893, 5012201, 'Transporte marítimo de longo curso  Carga');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (894, 5012202, 'Transporte marítimo de longo curso  Passageiros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (895, 5021101, 'Transporte por navegação interior de carga, municipal, exceto travessia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (896, 5021102, 'Transporte por navegação interior de carga, intermunicipal, interestadual e internacional, exceto travessia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (897, 5022001, 'Transporte por navegação interior de passageiros em linhas regulares, municipal, exceto travessia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (898, 5022002, 'Transporte por navegação interior de passageiros em linhas regulares, intermunicipal, interestadual e internacional, exceto travessia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (899, 5030101, 'Navegação de apoio marítimo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (900, 5030102, 'Navegação de apoio portuário');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (901, 5091201, 'Transporte por navegação de travessia, municipal');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (902, 5091202, 'Transporte por navegação de travessia, intermunicipal');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (903, 5099801, 'Transporte aquaviário para passeios turísticos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (904, 5099899, 'Outros transportes aquaviários não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (905, 5111100, 'Transporte aéreo de passageiros regular');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (906, 5112901, 'Serviço de táxi aéreo e locação de aeronaves com tripulação');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (907, 5112999, 'Outros serviços de transporte aéreo de passageiros nãoregular');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (908, 5120000, 'Transporte aéreo de carga');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (909, 5130700, 'Transporte espacial');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (910, 5211701, 'Armazéns gerais  emissão de warrant');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (911, 5211702, 'Guardamóveis');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (912, 5211799, 'Depósitos de mercadorias para terceiros, exceto armazéns gerais e guardamóveis');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (913, 5212500, 'Carga e descarga');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (914, 5221400, 'Concessionárias de rodovias, pontes, túneis e serviços relacionados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (915, 5222200, 'Terminais rodoviários e ferroviários');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (916, 5223100, 'Estacionamento de veículos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (917, 5229001, 'Serviços de apoio ao transporte por táxi, inclusive centrais de chamada');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (918, 5229002, 'Serviços de reboque de veículos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (919, 5229099, 'Outras atividades auxiliares dos transportes terrestres não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (920, 5231101, 'Administração da infraestrutura portuária');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (921, 5231102, 'Operações de terminais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (922, 5232000, 'Atividades de agenciamento marítimo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (923, 5239700, 'Atividades auxiliares dos transportes aquaviários não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (924, 5240101, 'Operação dos aeroportos e campos de aterrissagem');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (925, 5240199, 'Atividades auxiliares dos transportes aéreos, exceto operação dos aeroportos e campos de aterrissagem');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (926, 5250801, 'Comissaria de despachos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (927, 5250802, 'Atividades de despachantes aduaneiros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (928, 5250803, 'Agenciamento de cargas, exceto para o transporte marítimo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (929, 5250804, 'Organização logística do transporte de carga');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (930, 5250805, 'Operador de transporte multimodal  OTM');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (931, 5310501, 'Atividades do Correio Nacional');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (932, 5310502, 'Atividades de  franqueadas e permissionárias do Correio Nacional');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (933, 5320201, 'Serviços de malote não realizados pelo Correio Nacional');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (934, 5320202, 'Serviços de entrega rápida');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (935, 5510801, 'Hotéis');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (936, 5510802, 'Aparthotéis');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (937, 5510803, 'Motéis');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (938, 5590601, 'Albergues, exceto assistenciais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (939, 5590602, 'Campings');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (940, 5590603, 'Pensões');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (941, 5590699, 'Outros alojamentos não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (942, 5611201, 'Restaurantes e similares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (943, 5611202, 'Bares e outros estabelecimentos especializados em servir bebidas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (944, 5611203, 'Lanchonetes, casas de chá, de sucos e similares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (945, 5612100, 'Serviços ambulantes de alimentação');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (946, 5620101, 'Fornecimento de alimentos preparados preponderantemente para empresas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (947, 5620102, 'Serviços de alimentação para eventos e recepções  bufê');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (948, 5620103, 'Cantinas  serviços de alimentação privativos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (949, 5620104, 'Fornecimento de alimentos preparados preponderantemente para consumo domiciliar');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (950, 5811500, 'Edição de livros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (951, 5812300, 'Edição de jornais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (952, 5813100, 'Edição de revistas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (953, 5819100, 'Edição de cadastros, listas e de outros produtos gráficos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (954, 5821200, 'Edição integrada à impressão de livros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (955, 5822100, 'Edição integrada à impressão de jornais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (956, 5823900, 'Edição integrada à impressão de revistas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (957, 5829800, 'Edição integrada à impressão de cadastros, listas e de outros produtos gráficos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (958, 5911101, 'Estúdios cinematográficos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (959, 5911102, 'Produção de filmes para publicidade');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (960, 5911199, 'Atividades de produção cinematográfica, de vídeos e de programas de televisão não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (961, 5912001, 'Serviços de dublagem');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (962, 5912002, 'Serviços de mixagem sonora');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (963, 5912099, 'Atividades de pósprodução cinematográfica, de vídeos e de programas de televisão não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (964, 5913800, 'Distribuição cinematográfica, de vídeo e de programas de televisão');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (965, 5914600, 'Atividades de exibição cinematográfica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (966, 5920100, 'Atividades de gravação de som e de edição de música');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (967, 6010100, 'Atividades de rádio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (968, 6021700, 'Atividades de televisão aberta');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (969, 6022501, 'Programadoras');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (970, 6022502, 'Atividades relacionadas à televisão por assinatura, exceto programadoras');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (971, 6110801, 'Serviços de telefonia fixa comutada  STFC');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (972, 6110802, 'Serviços de redes de transportes de telecomunicações  SRTT');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (973, 6110803, 'Serviços de comunicação multimídia  SMC');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (974, 6110899, 'Serviços de telecomunicações por fio não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (975, 6120501, 'Telefonia móvel celular');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (976, 6120502, 'Serviço móvel especializado  SME');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (977, 6120599, 'Serviços de telecomunicações sem fio não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (978, 6130200, 'Telecomunicações por satélite');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (979, 6141800, 'Operadoras de televisão por assinatura por cabo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (980, 6142600, 'Operadoras de televisão por assinatura por microondas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (981, 6143400, 'Operadoras de televisão por assinatura por satélite');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (982, 6190601, 'Provedores de acesso às redes de comunicações');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (983, 6190602, 'Provedores de voz sobre protocolo internet  VOIP');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (984, 6190699, 'Outras atividades de telecomunicações não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (985, 6201500, 'Desenvolvimento de programas de computador sob encomenda');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (986, 6202300, 'Desenvolvimento e licenciamento de programas de computador customizáveis');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (987, 6203100, 'Desenvolvimento e licenciamento de programas de computador nãocustomizáveis');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (988, 6204000, 'Consultoria em tecnologia da informação');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (989, 6209100, 'Suporte técnico, manutenção e outros serviços em tecnologia da informação');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (990, 6311900, 'Tratamento de dados, provedores de serviços de aplicação e serviços de hospedagem na internet');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (991, 6319400, 'Portais, provedores de conteúdo e outros serviços de informação na internet');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (992, 6391700, 'Agências de notícias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (993, 6399200, 'Outras atividades de prestação de serviços de informação não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (994, 6410700, 'Banco Central');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (995, 6421200, 'Bancos comerciais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (996, 6422100, 'Bancos múltiplos, com carteira comercial');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (997, 6423900, 'Caixas econômicas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (998, 6424701, 'Bancos cooperativos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (999, 6424702, 'Cooperativas centrais de crédito');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1001, 6424704, 'Cooperativas de crédito rural');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1002, 6431000, 'Bancos múltiplos, sem carteira comercial');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1003, 6432800, 'Bancos de investimento');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1004, 6433600, 'Bancos de desenvolvimento');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1005, 6434400, 'Agências de fomento');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1006, 6435201, 'Sociedades de crédito imobiliário');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1007, 6435202, 'Associações de poupança e empréstimo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1008, 6435203, 'Companhias hipotecárias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1009, 6436100, 'Sociedades de crédito, financiamento e investimento  financeiras');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1010, 6437900, 'Sociedades de crédito ao microempreendedor');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1011, 6440900, 'Arrendamento mercantil');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1012, 6450600, 'Sociedades de capitalização');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1013, 6461100, 'Holdings de instituições financeiras');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1014, 6462000, 'Holdings de instituições nãofinanceiras');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1015, 6463800, 'Outras sociedades de participação, exceto holdings');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1016, 6470101, 'Fundos de investimento, exceto previdenciários e imobiliários');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1017, 6470102, 'Fundos de investimento previdenciários');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1018, 6470103, 'Fundos de investimento imobiliários');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1019, 6491300, 'Sociedades de fomento mercantil  factoring');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1020, 6492100, 'Securitização de créditos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1021, 6493000, 'Administração de consórcios para aquisição de bens e direitos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1022, 6499901, 'Clubes de investimento');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1023, 6499902, 'Sociedades de investimento');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1024, 6499903, 'Fundo garantidor de crédito');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1025, 6499904, 'Caixas de financiamento de corporações');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1026, 6499905, 'Concessão de crédito pelas OSCIP');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1027, 6499999, 'Outras atividades de serviços financeiros não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1028, 6511101, 'Seguros de vida');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1029, 6511102, 'Planos de auxíliofuneral');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1030, 6512000, 'Seguros nãovida');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1031, 6520100, 'Segurossaúde');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1032, 6530800, 'Resseguros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1033, 6541300, 'Previdência complementar fechada');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1034, 6542100, 'Previdência complementar aberta');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1035, 6550200, 'Planos de saúde');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1036, 6611801, 'Bolsa de valores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1037, 6611802, 'Bolsa de mercadorias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1038, 6611803, 'Bolsa de mercadorias e futuros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1039, 6611804, 'Administração de mercados de balcão organizados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1040, 6612601, 'Corretoras de títulos e valores mobiliários');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1041, 6612602, 'Distribuidoras de títulos e valores mobiliários');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1042, 6612603, 'Corretoras de câmbio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1043, 6612604, 'Corretoras de contratos de mercadorias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1044, 6612605, 'Agentes de investimentos em aplicações financeiras');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1045, 6613400, 'Administração de cartões de crédito');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1046, 6619301, 'Serviços de liquidação e custódia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1047, 6619302, 'Correspondentes de instituições financeiras');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1048, 6619303, 'Representações de bancos estrangeiros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1049, 6619304, 'Caixas eletrônicos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1050, 6619305, 'Operadoras de cartões de débito');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1051, 6619399, 'Outras atividades auxiliares dos serviços financeiros não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1052, 6621501, 'Peritos e avaliadores de seguros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1053, 6621502, 'Auditoria e consultoria atuarial');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1054, 6622300, 'Corretores e agentes de seguros, de planos de previdência complementar e de saúde');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1055, 6629100, 'Atividades auxiliares dos seguros, da previdência complementar e dos planos de saúde não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1056, 6630400, 'Atividades de administração de fundos por contrato ou comissão');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1057, 6810201, 'Compra e venda de imóveis próprios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1058, 6810202, 'Aluguel de imóveis próprios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1059, 6821801, 'Corretagem na compra e venda e avaliação de imóveis');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1060, 6821802, 'Corretagem no aluguel de imóveis');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1061, 6822600, 'Gestão e administração da propriedade imobiliária*');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1062, 6911701, 'Serviços advocatícios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1063, 6911702, 'Atividades auxiliares da justiça');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1064, 6911703, 'Agente de propriedade industrial');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1065, 6912500, 'Cartórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1066, 6920601, 'Atividades de contabilidade');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1067, 6920602, 'Atividades de consultoria e auditoria contábil e tributária');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1068, 7020400, 'Atividades de consultoria em gestão empresarial, exceto consultoria técnica específica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1069, 7111100, 'Serviços de arquitetura');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1070, 7112000, 'Serviços de engenharia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1071, 7119701, 'Serviços de cartografia, topografia e geodésia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1072, 7119702, 'Atividades de estudos geológicos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1073, 7119703, 'Serviços de desenho técnico relacionados à arquitetura e engenharia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1074, 7119704, 'Serviços de perícia técnica relacionados à segurança do trabalho');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1075, 7119799, 'Atividades técnicas relacionadas à engenharia e arquitetura não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1076, 7120100, 'Testes e análises técnicas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1077, 7210000, 'Pesquisa e desenvolvimento experimental em ciências físicas e naturais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1078, 7220700, 'Pesquisa e desenvolvimento experimental em ciências sociais e humanas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1079, 7311400, 'Agências de publicidade');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1080, 7312200, 'Agenciamento de espaços para publicidade, exceto em veículos de comunicação');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1081, 7319001, 'Criação e montagem de estandes para feiras e exposições');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1082, 7319002, 'Promoção de vendas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1083, 7319003, 'Marketing direto');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1084, 7319004, 'Consultoria em publicidade');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1085, 7319099, 'Outras atividades de publicidade não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1086, 7320300, 'Pesquisas de mercado e de opinião pública');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1087, 7410201, 'Design');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1088, 7410202, 'Decoração de interiores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1089, 7420001, 'Atividades de produção de fotografias, exceto aérea e submarina');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1090, 7420002, 'Atividades de produção de fotografias aéreas e submarinas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1091, 7420003, 'Laboratórios fotográficos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1092, 7420004, 'Filmagem de festas e eventos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1093, 7420005, 'Serviços de microfilmagem');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1094, 7490101, 'Serviços de tradução, interpretação e similares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1095, 7490102, 'Escafandria e mergulho');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1096, 7490103, 'Serviços de agronomia e de consultoria às atividades agrícolas e pecuárias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1097, 7490104, 'Atividades de intermediação e agenciamento de serviços e negócios em geral, exceto imobiliários');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1098, 7490105, 'Agenciamento de profissionais para atividades esportivas, culturais e artísticas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1099, 7490199, 'Outras atividades profissionais, científicas e técnicas não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1100, 7500100, 'Atividades veterinárias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1101, 7711000, 'Locação de automóveis sem condutor');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1102, 7719501, 'Locação de embarcações sem tripulação, exceto para fins recreativos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1103, 7719502, 'Locação de aeronaves sem tripulação');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1104, 7719599, 'Locação de outros meios de transporte não especificados anteriormente, sem condutor');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1105, 7721700, 'Aluguel de equipamentos recreativos e esportivos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1106, 7722500, 'Aluguel de fitas de vídeo, DVDs e similares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1107, 7723300, 'Aluguel de objetos do vestuário, jóias e acessórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1108, 7729201, 'Aluguel de aparelhos de jogos eletrônicos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1109, 7729202, 'Aluguel de móveis, utensílios e aparelhos de uso doméstico e pessoal; instrumentos musicais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1110, 7729203, 'Aluguel de material médico*');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1111, 7729299, 'Aluguel de outros objetos pessoais e domésticos não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1112, 7731400, 'Aluguel de máquinas e equipamentos agrícolas sem operador');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1113, 7732201, 'Aluguel de máquinas e equipamentos para construção sem operador, exceto andaimes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1114, 7732202, 'Aluguel de andaimes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1115, 7733100, 'Aluguel de máquinas e equipamentos para escritórios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1116, 7739001, 'Aluguel de máquinas e equipamentos para extração de minérios e petróleo, sem operador');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1117, 7739002, 'Aluguel de equipamentos científicos, médicos e hospitalares, sem operador');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1118, 7739003, 'Aluguel de palcos, coberturas e outras estruturas de uso temporário, exceto andaimes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1119, 7739099, 'Aluguel de outras máquinas e equipamentos comerciais e industriais não especificados anteriormente, sem operador');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1120, 7740300, 'Gestão de ativos intangíveis nãofinanceiros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1121, 7810800, 'Seleção e agenciamento de mãodeobra');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1122, 7820500, 'Locação de mãodeobra temporária');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1123, 7830200, 'Fornecimento e gestão de recursos humanos para terceiros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1124, 7911200, 'Agências de viagens');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1125, 7912100, 'Operadores turísticos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1126, 7990200, 'Serviços de reservas e outros serviços de turismo não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1127, 8011101, 'Atividades de vigilância e segurança privada');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1128, 8011102, 'Serviços de adestramento de cães de guarda');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1129, 8012900, 'Atividades de transporte de valores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1130, 8020000, 'Atividades de monitoramento de sistemas de segurança');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1131, 8030700, 'Atividades de investigação particular');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1132, 8111700, 'Serviços combinados para apoio a edifícios, exceto condomínios prediais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1133, 8112500, 'Condomínios prediais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1134, 8121400, 'Limpeza em prédios e em domicílios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1135, 8122200, 'Imunização e controle de pragas urbanas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1136, 8129000, 'Atividades de limpeza não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1137, 8130300, 'Atividades paisagísticas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1138, 8211300, 'Serviços combinados de escritório e apoio administrativo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1139, 8219901, 'Fotocópias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1140, 8219999, 'Preparação de documentos e serviços especializados de apoio administrativo não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1141, 8220200, 'Atividades de teleatendimento');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1142, 8230001, 'Serviços de organização de feiras, congressos, exposições e festas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1143, 8230002, 'Casas de festas e eventos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1144, 8291100, 'Atividades de cobranças e informações cadastrais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1145, 8292000, 'Envasamento e empacotamento sob contrato');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1146, 8299701, 'Medição de consumo de energia elétrica, gás e água');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1147, 8299702, 'Emissão de valesalimentação, valestransporte e similares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1148, 8299703, 'Serviços de gravação de carimbos, exceto confecção');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1149, 8299704, 'Leiloeiros independentes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1150, 8299705, 'Serviços de levantamento de fundos sob contrato');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1151, 8299706, 'Casas lotéricas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1152, 8299707, 'Salas de acesso à internet');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1153, 8299799, 'Outras atividades de serviços prestados principalmente às empresas não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1154, 8411600, 'Administração pública em geral');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1155, 8412400, 'Regulação das atividades de saúde, educação, serviços culturais e outros serviços sociais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1156, 8413200, 'Regulação das atividades econômicas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1157, 8414100, 'Atividades de suporte à administração pública');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1158, 8421300, 'Relações exteriores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1159, 8422100, 'Defesa');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1160, 8423000, 'Justiça');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1161, 8424800, 'Segurança e ordem pública');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1162, 8425600, 'Defesa Civil');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1163, 8430200, 'Seguridade social obrigatória');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1164, 8511200, 'Educação infantil  creche');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1165, 8512100, 'Educação infantil  préescola');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1166, 8513900, 'Ensino fundamental');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1167, 8520100, 'Ensino médio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1168, 8531700, 'Educação superior  graduação');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1169, 8532500, 'Educação superior  graduação e pósgraduação');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1170, 8533300, 'Educação superior  pósgraduação e extensão');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1171, 8541400, 'Educação profissional de nível técnico');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1172, 8542200, 'Educação profissional de nível tecnológico');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1173, 8550301, 'Administração de caixas escolares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1174, 8550302, 'Serviços auxiliares à educação');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1175, 8591100, 'Ensino de esportes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1176, 8592901, 'Ensino de dança');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1177, 8592902, 'Ensino de artes cênicas, exceto dança');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1178, 8592903, 'Ensino de música');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1179, 8592999, 'Ensino de arte e cultura não especificado anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1180, 8593700, 'Ensino de idiomas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1181, 8599601, 'Formação de condutores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1182, 8599602, 'Cursos de pilotagem');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1183, 8599603, 'Treinamento em informática');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1184, 8599604, 'Treinamento em desenvolvimento profissional e gerencial');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1185, 8599605, 'Cursos preparatórios para concursos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1186, 8599699, 'Outras atividades de ensino não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1187, 8610101, 'Atividades de atendimento hospitalar, exceto prontosocorro e unidades para atendimento a urgências');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1188, 8610102, 'Atividades de atendimento em prontosocorro e unidades hospitalares para atendimento a urgências');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1189, 8621601, 'UTI móvel');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1190, 8621602, 'Serviços móveis de atendimento a urgências, exceto por UTI móvel');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1191, 8622400, 'Serviços de remoção de pacientes, exceto os serviços móveis de atendimento a urgências');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1192, 8630501, 'Atividade médica ambulatorial com recursos para realização de procedimentos cirúrgicos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1193, 8630502, 'Atividade médica ambulatorial com recursos para realização de exames complementares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1194, 8630503, 'Atividade médica ambulatorial restrita a consultas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1195, 8630504, 'Atividade odontológica com recursos para realização de procedimentos cirúrgicos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1196, 8630505, 'Atividade odontológica sem recursos para realização de procedimentos cirúrgicos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1197, 8630506, 'Serviços de vacinação e imunização humana');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1198, 8630507, 'Atividades de reprodução humana assistida');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1199, 8630599, 'Atividades de atenção ambulatorial não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1200, 8640201, 'Laboratórios de anatomia patológica e citológica');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1201, 8640202, 'Laboratórios clínicos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1202, 8640203, 'Serviços de diálise e nefrologia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1203, 8640204, 'Serviços de tomografia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1204, 8640205, 'Serviços de diagnóstico por imagem com uso de radiação ionizante, exceto tomografia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1205, 8640206, 'Serviços de ressonância magnética');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1206, 8640207, 'Serviços de diagnóstico por imagem sem uso de radiação ionizante, exceto ressonância magnética');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1207, 8640208, 'Serviços de diagnóstico por registro gráfico  ECG, EEG e outros exames análogos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1208, 8640209, 'Serviços de diagnóstico por métodos ópticos  endoscopia e outros exames análogos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1209, 8640210, 'Serviços de quimioterapia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1210, 8640211, 'Serviços de radioterapia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1211, 8640212, 'Serviços de hemoterapia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1212, 8640213, 'Serviços de litotripsia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1213, 8640214, 'Serviços de bancos de células e tecidos humanos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1214, 8640299, 'Atividades de serviços de complementação diagnóstica e terapêutica não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1215, 8650001, 'Atividades de enfermagem');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1216, 8650002, 'Atividades de profissionais da nutrição');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1217, 8650003, 'Atividades de psicologia e psicanálise');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1218, 8650004, 'Atividades de fisioterapia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1219, 8650005, 'Atividades de terapia ocupacional');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1220, 8650006, 'Atividades de fonoaudiologia');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1221, 8650007, 'Atividades de terapia de nutrição enteral e parenteral');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1222, 8650099, 'Atividades de profissionais da área de saúde não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1223, 8660700, 'Atividades de apoio à gestão de saúde');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1224, 8690901, 'Atividades de práticas integrativas e complementares em saúde humana');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1225, 8690902, 'Atividades de banco de leite humano');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1226, 8690999, 'Outras atividades de atenção à saúde humana não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1227, 8711501, 'Clínicas e residências geriátricas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1228, 8711502, 'Instituições de longa permanência para idosos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1229, 8711503, 'Atividades de assistência a deficientes físicos, imunodeprimidos e convalescentes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1230, 8711504, 'Centros de apoio a pacientes com câncer e com AIDS');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1231, 8711505, 'Condomínios residenciais para idosos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1232, 8712300, 'Atividades de fornecimento de infraestrutura de apoio e assistência a paciente no domicílio');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1233, 8720401, 'Atividades de centros de assistência psicossocial');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1234, 8720499, 'Atividades de assistência psicossocial e à saúde a portadores de distúrbios psíquicos, deficiência mental e dependência química não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1235, 8730101, 'Orfanatos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1236, 8730102, 'Albergues assistenciais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1237, 8730199, 'Atividades de assistência social prestadas em residências coletivas e particulares não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1238, 8800600, 'Serviços de assistência social sem alojamento');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1239, 9001901, 'Produção teatral');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1240, 9001902, 'Produção musical');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1241, 9001903, 'Produção de espetáculos de dança');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1242, 9001904, 'Produção de espetáculos circenses, de marionetes e similares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1243, 9001905, 'Produção de espetáculos de rodeios, vaquejadas e similares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1244, 9001906, 'Atividades de sonorização e de iluminação');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1245, 9001999, 'Artes cênicas, espetáculos e atividades complementares não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1246, 9002701, 'Atividades de artistas plásticos, jornalistas independentes e escritores');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1247, 9002702, 'Restauração de obrasdearte');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1248, 9003500, 'Gestão de espaços para artes cênicas, espetáculos e outras atividades artísticas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1249, 9101500, 'Atividades de bibliotecas e arquivos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1250, 9102301, 'Atividades de museus e de exploração de lugares e prédios históricos e atrações similares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1251, 9102302, 'Restauração e conservação de lugares e prédios históricos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1252, 9103100, 'Atividades de jardins botânicos, zoológicos, parques nacionais, reservas ecológicas e áreas de proteção ambiental');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1253, 9200301, 'Casas de bingo');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1254, 9200302, 'Exploração de apostas em corridas de cavalos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1255, 9200399, 'Exploração de jogos de azar e apostas não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1256, 9311500, 'Gestão de instalações de esportes');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1257, 9312300, 'Clubes sociais, esportivos e similares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1258, 9313100, 'Atividades de condicionamento físico');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1259, 9319101, 'Produção e promoção de eventos esportivos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1260, 9319199, 'Outras atividades esportivas não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1261, 9321200, 'Parques de diversão e parques temáticos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1262, 9329801, 'Discotecas, danceterias, salões de dança e similares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1263, 9329802, 'Exploração de boliches');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1264, 9329803, 'Exploração de jogos de sinuca, bilhar e similares');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1265, 9329804, 'Exploração de jogos eletrônicos recreativos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1266, 9329899, 'Outras atividades de recreação e lazer não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1267, 9411100, 'Atividades de organizações associativas patronais e empresariais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1268, 9412000, 'Atividades de organizações associativas profissionais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1269, 9420100, 'Atividades de organizações sindicais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1270, 9430800, 'Atividades de associações de defesa de direitos sociais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1271, 9491000, 'Atividades de organizações religiosas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1272, 9492800, 'Atividades de organizações políticas');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1273, 9493600, 'Atividades de organizações associativas ligadas à cultura e à arte');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1274, 9499500, 'Atividades associativas não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1275, 9511800, 'Reparação e manutenção de computadores e de equipamentos periféricos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1276, 9512600, 'Reparação e manutenção de equipamentos de comunicação');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1277, 9521500, 'Reparação e manutenção de equipamentos eletroeletrônicos de uso pessoal e doméstico');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1278, 9529101, 'Reparação de calçados, de bolsas e artigos de viagem*');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1279, 9529102, 'Chaveiros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1280, 9529103, 'Reparação de relógios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1281, 9529104, 'Reparação de bicicletas, triciclos e outros veículos nãomotorizados');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1282, 9529105, 'Reparação de artigos do mobiliário');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1283, 9529106, 'Reparação de jóias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1284, 9529199, 'Reparação e manutenção de outros objetos e equipamentos pessoais e domésticos não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1285, 9601701, 'Lavanderias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1286, 9601702, 'Tinturarias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1287, 9601703, 'Toalheiros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1288, 9602501, 'Cabeleireiros');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1289, 9602502, 'Outras atividades de tratamento de beleza');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1290, 9603301, 'Gestão e manutenção de cemitérios');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1291, 9603302, 'Serviços de cremação');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1292, 9603303, 'Serviços de sepultamento');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1293, 9603304, 'Serviços de funerárias');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1294, 9603305, 'Serviços de somatoconservação');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1295, 9603399, 'Atividades funerárias e serviços relacionados não especificados anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1296, 9609201, 'Clínicas de estética e similares*');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1297, 9609202, 'Agências matrimoniais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1298, 9609203, 'Alojamento, higiene e embelezamento de animais');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1299, 9609204, 'Exploração de máquinas de serviços pessoais acionadas por moeda');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1300, 9609299, 'Outras atividades de serviços pessoais não especificadas anteriormente');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1301, 9700500, 'Serviços domésticos');
INSERT INTO public.cnae (id, codigo_cnae, descricao) VALUES (1302, 9900800, 'Organismos internacionais e outras instituições extraterritoriais');


--
-- TOC entry 3017 (class 0 OID 16640)
-- Dependencies: 206
-- Data for Name: estado; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.estado (id, nome, codigo) VALUES ('AC', 'Acre', 12);
INSERT INTO public.estado (id, nome, codigo) VALUES ('AL', 'Alagoas', 27);
INSERT INTO public.estado (id, nome, codigo) VALUES ('AP', 'Amapá', 16);
INSERT INTO public.estado (id, nome, codigo) VALUES ('AM', 'Amazonas', 13);
INSERT INTO public.estado (id, nome, codigo) VALUES ('BA', 'Bahia', 29);
INSERT INTO public.estado (id, nome, codigo) VALUES ('CE', 'Ceará', 23);
INSERT INTO public.estado (id, nome, codigo) VALUES ('DF', 'Distrito Federal', 53);
INSERT INTO public.estado (id, nome, codigo) VALUES ('ES', 'Espírito Santo', 32);
INSERT INTO public.estado (id, nome, codigo) VALUES ('GO', 'Goiás', 52);
INSERT INTO public.estado (id, nome, codigo) VALUES ('MA', 'Maranhão', 21);
INSERT INTO public.estado (id, nome, codigo) VALUES ('MS', 'Mato Grosso do Sul', 50);
INSERT INTO public.estado (id, nome, codigo) VALUES ('MT', 'Mato Grosso', 51);
INSERT INTO public.estado (id, nome, codigo) VALUES ('MG', 'Minas Gerais', 31);
INSERT INTO public.estado (id, nome, codigo) VALUES ('PR', 'Paraná', 41);
INSERT INTO public.estado (id, nome, codigo) VALUES ('PB', 'Paraíba', 25);
INSERT INTO public.estado (id, nome, codigo) VALUES ('PA', 'Pará', 15);
INSERT INTO public.estado (id, nome, codigo) VALUES ('PE', 'Pernambuco', 26);
INSERT INTO public.estado (id, nome, codigo) VALUES ('PI', 'Piauí', 22);
INSERT INTO public.estado (id, nome, codigo) VALUES ('RJ', 'Rio de Janeiro', 33);
INSERT INTO public.estado (id, nome, codigo) VALUES ('RN', 'Rio Grande do Norte', 24);
INSERT INTO public.estado (id, nome, codigo) VALUES ('RS', 'Rio Grande do Sul', 43);
INSERT INTO public.estado (id, nome, codigo) VALUES ('RO', 'Rondônia', 11);
INSERT INTO public.estado (id, nome, codigo) VALUES ('RR', 'Roraima', 14);
INSERT INTO public.estado (id, nome, codigo) VALUES ('SC', 'Santa Catarina', 42);
INSERT INTO public.estado (id, nome, codigo) VALUES ('SE', 'Sergipe', 28);
INSERT INTO public.estado (id, nome, codigo) VALUES ('SP', 'São Paulo', 35);
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

