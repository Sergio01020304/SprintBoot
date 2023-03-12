--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-03-12 14:02:05

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
-- TOC entry 215 (class 1259 OID 16514)
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    "categoryId" integer NOT NULL,
    description character varying(60) NOT NULL,
    status boolean NOT NULL
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16513)
-- Name: categories_categoryId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."categories_categoryId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."categories_categoryId_seq" OWNER TO postgres;

--
-- TOC entry 3366 (class 0 OID 0)
-- Dependencies: 214
-- Name: categories_categoryId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."categories_categoryId_seq" OWNED BY public.categories."categoryId";


--
-- TOC entry 219 (class 1259 OID 16540)
-- Name: clients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clients (
    "clientId" integer NOT NULL,
    "identificationNumber" character varying(30) NOT NULL,
    name character varying(100) NOT NULL,
    "lastName" character varying(100) NOT NULL,
    phone numeric NOT NULL,
    address character varying(80) NOT NULL,
    email character varying(70) NOT NULL
);


ALTER TABLE public.clients OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16539)
-- Name: clients_clientId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."clients_clientId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."clients_clientId_seq" OWNER TO postgres;

--
-- TOC entry 3367 (class 0 OID 0)
-- Dependencies: 218
-- Name: clients_clientId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."clients_clientId_seq" OWNED BY public.clients."clientId";


--
-- TOC entry 217 (class 1259 OID 16528)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    "productId" integer NOT NULL,
    name character varying(45),
    "categoryId" integer NOT NULL,
    "barrCode" character varying(150),
    "sellPrice" numeric(16,2),
    "stockQuantity" integer NOT NULL,
    status boolean,
    image text NOT NULL
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16527)
-- Name: products_productId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."products_productId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."products_productId_seq" OWNER TO postgres;

--
-- TOC entry 3368 (class 0 OID 0)
-- Dependencies: 216
-- Name: products_productId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."products_productId_seq" OWNED BY public.products."productId";


--
-- TOC entry 221 (class 1259 OID 16558)
-- Name: purchases; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.purchases (
    "purchaseId" integer NOT NULL,
    "clientId" integer NOT NULL,
    date timestamp without time zone,
    "payMedium" character(1),
    comments character varying(300),
    status character(1)
);


ALTER TABLE public.purchases OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16557)
-- Name: purchase_purchaseId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."purchase_purchaseId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."purchase_purchaseId_seq" OWNER TO postgres;

--
-- TOC entry 3369 (class 0 OID 0)
-- Dependencies: 220
-- Name: purchase_purchaseId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."purchase_purchaseId_seq" OWNED BY public.purchases."purchaseId";


--
-- TOC entry 222 (class 1259 OID 16584)
-- Name: purchases_products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.purchases_products (
    "purchaseId" integer NOT NULL,
    "productId" integer NOT NULL,
    quiantity integer,
    total numeric(16,2),
    status character(2)
);


ALTER TABLE public.purchases_products OWNER TO postgres;

--
-- TOC entry 3192 (class 2604 OID 16517)
-- Name: categories categoryId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN "categoryId" SET DEFAULT nextval('public."categories_categoryId_seq"'::regclass);


--
-- TOC entry 3194 (class 2604 OID 16543)
-- Name: clients clientId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients ALTER COLUMN "clientId" SET DEFAULT nextval('public."clients_clientId_seq"'::regclass);


--
-- TOC entry 3193 (class 2604 OID 16531)
-- Name: products productId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN "productId" SET DEFAULT nextval('public."products_productId_seq"'::regclass);


--
-- TOC entry 3195 (class 2604 OID 16561)
-- Name: purchases purchaseId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchases ALTER COLUMN "purchaseId" SET DEFAULT nextval('public."purchase_purchaseId_seq"'::regclass);


--
-- TOC entry 3353 (class 0 OID 16514)
-- Dependencies: 215
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories ("categoryId", description, status) FROM stdin;
1	Frutas y verduras	t
2	Pastelería	t
3	Carnes y pescados	t
4	Lácteos y huevos	t
5	Bebidas	t
6	Licores	t
7	Cuidado personal	t
8	Despensa	t
\.


--
-- TOC entry 3357 (class 0 OID 16540)
-- Dependencies: 219
-- Data for Name: clients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clients ("clientId", "identificationNumber", name, "lastName", phone, address, email) FROM stdin;
1	4546221	Johannes	Kepler	3104583224	Cl 3 # 33 - 33	kepler@me.com
2	2552243	Galileo	Galilei	3462257293	Cl 1 # 11 - 11	gali@leo.com
3	983824	Nicolás	Copernico	3019392466	Cl 2 # 22 - 22	nico@cope.com
\.


--
-- TOC entry 3355 (class 0 OID 16528)
-- Dependencies: 217
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products ("productId", name, "categoryId", "barrCode", "sellPrice", "stockQuantity", status, image) FROM stdin;
1	Guayaba Feijoa	1	7029 A42 23	300.00	500	t	
2	Mango	1	0316 R56 01	2100.00	250	t	
3	Manzana	1	7923 T23 19	700.00	130	t	
4	Aguacate	1	9322 Q33 02	2500.00	98	t	
5	Lechuga	1	9742 S22 21	4000.00	86	t	
6	Tomate	1	0483 R00 97	290.00	430	t	
7	Pera	1	9999 X10 01	750.00	210	t	
8	Apio	1	3390 F29 45	150.00	115	t	
9	Papaya	1	5291 J34 32	4500.00	73	t	
10	Limón	1	7886 N18 32	350.00	425	t	
11	Brownie	2	6683 H15 20	2500.00	80	t	
12	Pan tajado	2	5745 F05 47	4500.00	120	t	
13	Torta	2	3831 D97 99	10000.00	35	t	
14	Tortilla	2	4335 Z33 84	6400.00	87	t	
15	Tostadas	2	6584 M19 25	4000.00	45	t	
16	Chocorramo	2	4487 S00 97	2000.00	105	t	
17	Salmón	3	4546 A00 01	28000.00	55	t	
18	Punta de anca	3	3678 E57 22	12000.00	32	t	
19	Posta	3	8893 O01 03	7800.00	40	t	
20	Costilla de cerdo	3	4534 Q12 88	8600.00	70	t	
21	Tilapia	3	5684 R53 02	17000.00	60	t	
22	Merluza	3	3523 R04 00	23000.00	45	t	
23	Leche de vaca	4	2323 T56 33	2500.00	500	t	
24	Queso	4	7786 K19 56	4000.00	300	t	
25	Huevos de gallina feliz	4	3478 M74 01	400.00	1000	t	
26	Clara de huevo	4	7932 R31 46	3200.00	200	t	
27	Suero costeño	4	5463 W23 33	9000.00	110	t	
28	Agua	5	8965 I32 11	2000.00	600	t	
29	Jugo de naranja	5	7445 T87 44	7400.00	200	t	
30	Gaseosa Colombiana	5	3434 R34 63	3100.00	175	t	
31	Jugo de Lulo	5	9753 W33 19	8250.00	630	t	
32	Tea	5	9836 F35 69	1900.00	450	t	
33	Cerveza	6	3432 G67 21	2100.00	800	t	
34	Tequila	6	9529 E45 98	65000.00	764	t	
35	Ron	6	1947 R07 53	55000.00	240	t	
36	Aguardiente Antioqueño	6	3160 A54 94	40000.00	480	t	
37	Vino	6	7891 W46 95	82000.00	560	t	
38	Crema dental	7	6310 C99 73	7500.00	200	t	
39	Jabón de manos	7	9371 J14 75	4900.00	90	t	
40	Enjuague bucal	7	1942 T68 01	12000.00	105	t	
41	Shampoo	7	6789 W01 23	9300.00	200	t	
42	Desodorante	7	7333 S21 36	6900.00	85	t	
43	Arroz	8	4676 I83 00	3500.00	600	t	
44	Lentejas	8	7333 S21 36	3000.00	560	t	
45	Harina	8	7333 S21 36	1800.00	300	t	
46	Sal	8	7333 S21 36	1400.00	500	t	
47	Aceite	8	7333 S21 36	6500.00	135	t	
48	Cereal	8	4673 K53 98	7000.00	75	t	
49	Frijol	8	2745 F40 45	8200.00	270	t	
50	Café	8	6351 R33 92	7200.00	400	t	
\.


--
-- TOC entry 3359 (class 0 OID 16558)
-- Dependencies: 221
-- Data for Name: purchases; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.purchases ("purchaseId", "clientId", date, "payMedium", comments, status) FROM stdin;
1	1	1992-08-10 17:30:00	E		P
\.


--
-- TOC entry 3360 (class 0 OID 16584)
-- Dependencies: 222
-- Data for Name: purchases_products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.purchases_products ("purchaseId", "productId", quiantity, total, status) FROM stdin;
1	1	10	3000.00	2 
1	36	1	40000.00	1 
1	27	1	9000.00	1 
1	49	2	16400.00	1 
1	24	1	4000.00	1 
\.


--
-- TOC entry 3370 (class 0 OID 0)
-- Dependencies: 214
-- Name: categories_categoryId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."categories_categoryId_seq"', 1, false);


--
-- TOC entry 3371 (class 0 OID 0)
-- Dependencies: 218
-- Name: clients_clientId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."clients_clientId_seq"', 1, false);


--
-- TOC entry 3372 (class 0 OID 0)
-- Dependencies: 216
-- Name: products_productId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."products_productId_seq"', 1, false);


--
-- TOC entry 3373 (class 0 OID 0)
-- Dependencies: 220
-- Name: purchase_purchaseId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."purchase_purchaseId_seq"', 1, false);


--
-- TOC entry 3197 (class 2606 OID 16519)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY ("categoryId");


--
-- TOC entry 3201 (class 2606 OID 16547)
-- Name: clients clients_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY ("clientId");


--
-- TOC entry 3199 (class 2606 OID 16533)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY ("productId");


--
-- TOC entry 3203 (class 2606 OID 16563)
-- Name: purchases purchase_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchases
    ADD CONSTRAINT purchase_pkey PRIMARY KEY ("purchaseId");


--
-- TOC entry 3205 (class 2606 OID 16588)
-- Name: purchases_products purchases_products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchases_products
    ADD CONSTRAINT purchases_products_pkey PRIMARY KEY ("purchaseId", "productId");


--
-- TOC entry 3206 (class 2606 OID 16534)
-- Name: products fk_PRODUCTS_CATEGORIES; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT "fk_PRODUCTS_CATEGORIES" FOREIGN KEY ("categoryId") REFERENCES public.categories("categoryId");


--
-- TOC entry 3208 (class 2606 OID 16589)
-- Name: purchases_products fk_PURCHASES_PRODUCTS_PRODUCTS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchases_products
    ADD CONSTRAINT "fk_PURCHASES_PRODUCTS_PRODUCTS" FOREIGN KEY ("productId") REFERENCES public.products("productId");


--
-- TOC entry 3209 (class 2606 OID 16594)
-- Name: purchases_products fk_PURCHASES_PRODUCTS_PURCHASES; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchases_products
    ADD CONSTRAINT "fk_PURCHASES_PRODUCTS_PURCHASES" FOREIGN KEY ("purchaseId") REFERENCES public.purchases("purchaseId");


--
-- TOC entry 3207 (class 2606 OID 16564)
-- Name: purchases fk_PURCHASE_CLIENTS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchases
    ADD CONSTRAINT "fk_PURCHASE_CLIENTS" FOREIGN KEY ("clientId") REFERENCES public.clients("clientId");


-- Completed on 2023-03-12 14:02:06

--
-- PostgreSQL database dump complete
--

