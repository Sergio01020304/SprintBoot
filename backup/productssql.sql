PGDMP                         {            products    15.2    15.2 '    #           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            $           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            %           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            &           1262    16512    products    DATABASE     ~   CREATE DATABASE products WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE products;
                postgres    false            �            1259    16514 
   categories    TABLE     �   CREATE TABLE public.categories (
    "categoryId" integer NOT NULL,
    description character varying(60) NOT NULL,
    status boolean NOT NULL
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    16513    categories_categoryId_seq    SEQUENCE     �   CREATE SEQUENCE public."categories_categoryId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."categories_categoryId_seq";
       public          postgres    false    215            '           0    0    categories_categoryId_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."categories_categoryId_seq" OWNED BY public.categories."categoryId";
          public          postgres    false    214            �            1259    16540    clients    TABLE     H  CREATE TABLE public.clients (
    "clientId" integer NOT NULL,
    "identificationNumber" character varying(30) NOT NULL,
    name character varying(100) NOT NULL,
    "lastName" character varying(100) NOT NULL,
    phone numeric NOT NULL,
    address character varying(80) NOT NULL,
    email character varying(70) NOT NULL
);
    DROP TABLE public.clients;
       public         heap    postgres    false            �            1259    16539    clients_clientId_seq    SEQUENCE     �   CREATE SEQUENCE public."clients_clientId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."clients_clientId_seq";
       public          postgres    false    219            (           0    0    clients_clientId_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."clients_clientId_seq" OWNED BY public.clients."clientId";
          public          postgres    false    218            �            1259    16528    products    TABLE       CREATE TABLE public.products (
    "productId" integer NOT NULL,
    name character varying(45),
    "categoryId" integer NOT NULL,
    "barrCode" character varying(150),
    "sellPrice" numeric(16,2),
    "stockQuantity" integer NOT NULL,
    status boolean,
    image text NOT NULL
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    16527    products_productId_seq    SEQUENCE     �   CREATE SEQUENCE public."products_productId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."products_productId_seq";
       public          postgres    false    217            )           0    0    products_productId_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."products_productId_seq" OWNED BY public.products."productId";
          public          postgres    false    216            �            1259    16558 	   purchases    TABLE     �   CREATE TABLE public.purchases (
    "purchaseId" integer NOT NULL,
    "clientId" integer NOT NULL,
    date timestamp without time zone,
    "payMedium" character(1),
    comments character varying(300),
    status character(1)
);
    DROP TABLE public.purchases;
       public         heap    postgres    false            �            1259    16557    purchase_purchaseId_seq    SEQUENCE     �   CREATE SEQUENCE public."purchase_purchaseId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."purchase_purchaseId_seq";
       public          postgres    false    221            *           0    0    purchase_purchaseId_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public."purchase_purchaseId_seq" OWNED BY public.purchases."purchaseId";
          public          postgres    false    220            �            1259    16584    purchases_products    TABLE     �   CREATE TABLE public.purchases_products (
    "purchaseId" integer NOT NULL,
    "productId" integer NOT NULL,
    quiantity integer,
    total numeric(16,2),
    status character(2)
);
 &   DROP TABLE public.purchases_products;
       public         heap    postgres    false            x           2604    16517    categories categoryId    DEFAULT     �   ALTER TABLE ONLY public.categories ALTER COLUMN "categoryId" SET DEFAULT nextval('public."categories_categoryId_seq"'::regclass);
 F   ALTER TABLE public.categories ALTER COLUMN "categoryId" DROP DEFAULT;
       public          postgres    false    215    214    215            z           2604    16543    clients clientId    DEFAULT     x   ALTER TABLE ONLY public.clients ALTER COLUMN "clientId" SET DEFAULT nextval('public."clients_clientId_seq"'::regclass);
 A   ALTER TABLE public.clients ALTER COLUMN "clientId" DROP DEFAULT;
       public          postgres    false    219    218    219            y           2604    16531    products productId    DEFAULT     |   ALTER TABLE ONLY public.products ALTER COLUMN "productId" SET DEFAULT nextval('public."products_productId_seq"'::regclass);
 C   ALTER TABLE public.products ALTER COLUMN "productId" DROP DEFAULT;
       public          postgres    false    216    217    217            {           2604    16561    purchases purchaseId    DEFAULT        ALTER TABLE ONLY public.purchases ALTER COLUMN "purchaseId" SET DEFAULT nextval('public."purchase_purchaseId_seq"'::regclass);
 E   ALTER TABLE public.purchases ALTER COLUMN "purchaseId" DROP DEFAULT;
       public          postgres    false    220    221    221                      0    16514 
   categories 
   TABLE DATA           G   COPY public.categories ("categoryId", description, status) FROM stdin;
    public          postgres    false    215   v/                 0    16540    clients 
   TABLE DATA           n   COPY public.clients ("clientId", "identificationNumber", name, "lastName", phone, address, email) FROM stdin;
    public          postgres    false    219   	0                 0    16528    products 
   TABLE DATA           |   COPY public.products ("productId", name, "categoryId", "barrCode", "sellPrice", "stockQuantity", status, image) FROM stdin;
    public          postgres    false    217   �0                 0    16558 	   purchases 
   TABLE DATA           b   COPY public.purchases ("purchaseId", "clientId", date, "payMedium", comments, status) FROM stdin;
    public          postgres    false    221   5                  0    16584    purchases_products 
   TABLE DATA           a   COPY public.purchases_products ("purchaseId", "productId", quiantity, total, status) FROM stdin;
    public          postgres    false    222   @5       +           0    0    categories_categoryId_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."categories_categoryId_seq"', 1, false);
          public          postgres    false    214            ,           0    0    clients_clientId_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."clients_clientId_seq"', 1, false);
          public          postgres    false    218            -           0    0    products_productId_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."products_productId_seq"', 1, false);
          public          postgres    false    216            .           0    0    purchase_purchaseId_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."purchase_purchaseId_seq"', 1, false);
          public          postgres    false    220            }           2606    16519    categories categories_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY ("categoryId");
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    215            �           2606    16547    clients clients_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY ("clientId");
 >   ALTER TABLE ONLY public.clients DROP CONSTRAINT clients_pkey;
       public            postgres    false    219                       2606    16533    products products_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY ("productId");
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    217            �           2606    16563    purchases purchase_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.purchases
    ADD CONSTRAINT purchase_pkey PRIMARY KEY ("purchaseId");
 A   ALTER TABLE ONLY public.purchases DROP CONSTRAINT purchase_pkey;
       public            postgres    false    221            �           2606    16588 *   purchases_products purchases_products_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.purchases_products
    ADD CONSTRAINT purchases_products_pkey PRIMARY KEY ("purchaseId", "productId");
 T   ALTER TABLE ONLY public.purchases_products DROP CONSTRAINT purchases_products_pkey;
       public            postgres    false    222    222            �           2606    16534    products fk_PRODUCTS_CATEGORIES    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT "fk_PRODUCTS_CATEGORIES" FOREIGN KEY ("categoryId") REFERENCES public.categories("categoryId");
 K   ALTER TABLE ONLY public.products DROP CONSTRAINT "fk_PRODUCTS_CATEGORIES";
       public          postgres    false    217    215    3197            �           2606    16589 1   purchases_products fk_PURCHASES_PRODUCTS_PRODUCTS    FK CONSTRAINT     �   ALTER TABLE ONLY public.purchases_products
    ADD CONSTRAINT "fk_PURCHASES_PRODUCTS_PRODUCTS" FOREIGN KEY ("productId") REFERENCES public.products("productId");
 ]   ALTER TABLE ONLY public.purchases_products DROP CONSTRAINT "fk_PURCHASES_PRODUCTS_PRODUCTS";
       public          postgres    false    217    222    3199            �           2606    16594 2   purchases_products fk_PURCHASES_PRODUCTS_PURCHASES    FK CONSTRAINT     �   ALTER TABLE ONLY public.purchases_products
    ADD CONSTRAINT "fk_PURCHASES_PRODUCTS_PURCHASES" FOREIGN KEY ("purchaseId") REFERENCES public.purchases("purchaseId");
 ^   ALTER TABLE ONLY public.purchases_products DROP CONSTRAINT "fk_PURCHASES_PRODUCTS_PURCHASES";
       public          postgres    false    3203    222    221            �           2606    16564    purchases fk_PURCHASE_CLIENTS    FK CONSTRAINT     �   ALTER TABLE ONLY public.purchases
    ADD CONSTRAINT "fk_PURCHASE_CLIENTS" FOREIGN KEY ("clientId") REFERENCES public.clients("clientId");
 I   ALTER TABLE ONLY public.purchases DROP CONSTRAINT "fk_PURCHASE_CLIENTS";
       public          postgres    false    3201    221    219               �   x���	�0Dϫ*\A ��㐓. ��4��̮dH9)�U��h}�y<f����Y�o3CBV��@=k�Y��H-K�Y�sHf��[>#��=��!l;����Ԗ�C��)�X��	Q��s���k.�         �   x�-�A
�0����)�-�LR�]�A��)%h1mJ{"��Ŝ7���Bp��̄k~��7���
���0;tɊ=X{��=h�Xy2�^+��Oc��?GH�����T R�O-ZMw@i���8���l���Y7ȉ�vu]V�Y	f�s;h�����4�         <  x�]�Mn�F���S�	���T4��;�e!�l�r�M�"=�� ��,����nR�L����կ^=
v>��}���<��	��В�b��O�3�w�N$���c�+aie,q����4Rz�])��5^P�PBJ���7q��%%�(E\�*�>c�]��������nAJ�4�����l�ok)������0����uJ<��wgj� �-^�|=��3Ƞ�d$���� }U��dz�ک��e�}���xo�W�3�j)-K)!�/C�w�$&����B�� �/M	�#;����Ѓ4N:ㆴ;+dE����J���(��TL�su���͠V�П��kf�t�+���Ǉ����JB���ֳl��o�a��ܠ����4������ƶ(�𵶴�e�O���g�c����(v�ZY���8�2_w��,4���}P��������l	(�:Wݤj�&0�!�{�ib�@�u�Ɨ&�5�_��P��m�ihǷҥ��~���ԑLئ��O����[��a��iv3�]�98��7����(�.����r��ضM�{j�7|�4�r:��1L�adm�O�@>[H+�F[�:��clcz�@���o�1<Ew���y�u��/��������<�V�����}�C'�s杆�װ�F?��,�yܥ~iٷ����cpKp��B�)��+�+q8�rl{��a�w�䑗um�Xi�r����3,���y��Ql��ׄQ�|��s�r��^�a�����	:Ž�h�L"8�hت� ��|���k3$�s�-rM���ݾ��e�BXN�)�b��nM���M�)�UwX���̃0տʳ吶�ظ�9(�p\"$�f�OS����,�6v�|PA(4Av=)j�sv�=��qLt?nJu\U���lK�!�`�Oq����tMw�elNPGmh�>c9z����Ԃ�%[C��<��Y���-Qx�F��2�����G�ԱZ��8`�>`�-&vA���G+��^lR���1;�z�k���R��(��Ks
U������3%�B�����&�P������OPV��A-ɜ���P}:99��캟         *   x�3�4�4��4�5��54P04�26�20�t�������� e��          ?   x�M˱  �ڙ�	";D va�9 )��_Dt�N"�	}\L�Q�K�\h�e}%��� ��     