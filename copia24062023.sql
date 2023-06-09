PGDMP     4                    {            proyectoTitulacion    15.1    15.1 �    @           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            A           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            B           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            C           1262    34723    proyectoTitulacion    DATABASE     �   CREATE DATABASE "proyectoTitulacion" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
 $   DROP DATABASE "proyectoTitulacion";
                postgres    false                        3079    34963    postgis 	   EXTENSION     ;   CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;
    DROP EXTENSION postgis;
                   false            D           0    0    EXTENSION postgis    COMMENT     ^   COMMENT ON EXTENSION postgis IS 'PostGIS geometry and geography spatial types and functions';
                        false    2            �            1259    34725    clase    TABLE     �   CREATE TABLE public.clase (
    cla_id integer NOT NULL,
    fil_id integer NOT NULL,
    cla_cla_id integer,
    cla_nombre character(100) NOT NULL
);
    DROP TABLE public.clase;
       public         heap    postgres    false            E           0    0    TABLE clase    COMMENT     w   COMMENT ON TABLE public.clase IS 'Entidad que contiene información sobre el taxon clase del espécimen de insecto, ';
          public          postgres    false    216            �            1259    34724    clase_cla_id_seq    SEQUENCE     �   CREATE SEQUENCE public.clase_cla_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.clase_cla_id_seq;
       public          postgres    false    216            F           0    0    clase_cla_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.clase_cla_id_seq OWNED BY public.clase.cla_id;
          public          postgres    false    215            �            1259    34735    colector    TABLE     �   CREATE TABLE public.colector (
    col_id integer NOT NULL,
    col_nombre character(50) NOT NULL,
    col_apellido character(50) NOT NULL,
    col_fecha date NOT NULL,
    col_metodo character(100) NOT NULL,
    col_destino character(100) NOT NULL
);
    DROP TABLE public.colector;
       public         heap    postgres    false            �            1259    34734    colector_col_id_seq    SEQUENCE     �   CREATE SEQUENCE public.colector_col_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.colector_col_id_seq;
       public          postgres    false    218            G           0    0    colector_col_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.colector_col_id_seq OWNED BY public.colector.col_id;
          public          postgres    false    217            �            1259    34743    especie    TABLE     �   CREATE TABLE public.especie (
    esp_id integer NOT NULL,
    gen_id integer NOT NULL,
    esp_nombre character(100) NOT NULL,
    esp_sexo character(50) NOT NULL
);
    DROP TABLE public.especie;
       public         heap    postgres    false            H           0    0    TABLE especie    COMMENT     �   COMMENT ON TABLE public.especie IS 'Entidad que contiene información sobre la especie del insecto, como Drosophila melanogaster, Aedes aegypti, etc.';
          public          postgres    false    220            �            1259    34751    especie_colector    TABLE     c   CREATE TABLE public.especie_colector (
    esp_id integer NOT NULL,
    col_id integer NOT NULL
);
 $   DROP TABLE public.especie_colector;
       public         heap    postgres    false            �            1259    34742    especie_esp_id_seq    SEQUENCE     �   CREATE SEQUENCE public.especie_esp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.especie_esp_id_seq;
       public          postgres    false    220            I           0    0    especie_esp_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.especie_esp_id_seq OWNED BY public.especie.esp_id;
          public          postgres    false    219            �            1259    34756    especie_identificador    TABLE     h   CREATE TABLE public.especie_identificador (
    esp_id integer NOT NULL,
    ide_id integer NOT NULL
);
 )   DROP TABLE public.especie_identificador;
       public         heap    postgres    false            �            1259    34761    especie_referencia    TABLE     e   CREATE TABLE public.especie_referencia (
    esp_id integer NOT NULL,
    ref_id integer NOT NULL
);
 &   DROP TABLE public.especie_referencia;
       public         heap    postgres    false            �            1259    34767    familia    TABLE     �   CREATE TABLE public.familia (
    fam_id integer NOT NULL,
    ord_id integer NOT NULL,
    fam_fam_id integer,
    gen_nombre character(100) NOT NULL
);
    DROP TABLE public.familia;
       public         heap    postgres    false            J           0    0    TABLE familia    COMMENT     {   COMMENT ON TABLE public.familia IS 'Entidad que contiene información sobre el taxon familia del espécimen de insecto, ';
          public          postgres    false    225            �            1259    34766    familia_fam_id_seq    SEQUENCE     �   CREATE SEQUENCE public.familia_fam_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.familia_fam_id_seq;
       public          postgres    false    225            K           0    0    familia_fam_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.familia_fam_id_seq OWNED BY public.familia.fam_id;
          public          postgres    false    224            �            1259    34777    filo    TABLE     �   CREATE TABLE public.filo (
    fil_id integer NOT NULL,
    rei_id integer NOT NULL,
    fil_fil_id integer,
    fil_nombre character(100) NOT NULL
);
    DROP TABLE public.filo;
       public         heap    postgres    false            L           0    0 
   TABLE filo    COMMENT     v   COMMENT ON TABLE public.filo IS 'Entidad que contiene información sobre el taxon reino del espécimen de insecto, ';
          public          postgres    false    227            �            1259    34776    filo_fil_id_seq    SEQUENCE     �   CREATE SEQUENCE public.filo_fil_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.filo_fil_id_seq;
       public          postgres    false    227            M           0    0    filo_fil_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.filo_fil_id_seq OWNED BY public.filo.fil_id;
          public          postgres    false    226            �            1259    34787    genero    TABLE     �   CREATE TABLE public.genero (
    gen_id integer NOT NULL,
    fam_id integer NOT NULL,
    gen_gen_id integer,
    gen_nombre character(100) NOT NULL
);
    DROP TABLE public.genero;
       public         heap    postgres    false            N           0    0    TABLE genero    COMMENT     y   COMMENT ON TABLE public.genero IS 'Entidad que contiene información sobre el taxon genero del espécimen de insecto, ';
          public          postgres    false    229            �            1259    34786    genero_gen_id_seq    SEQUENCE     �   CREATE SEQUENCE public.genero_gen_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.genero_gen_id_seq;
       public          postgres    false    229            O           0    0    genero_gen_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.genero_gen_id_seq OWNED BY public.genero.gen_id;
          public          postgres    false    228            �            1259    34797    identificador    TABLE     �   CREATE TABLE public.identificador (
    ide_id integer NOT NULL,
    ide_nombre character(50) NOT NULL,
    ide_apellido character(50) NOT NULL,
    ide_anio numeric(4,0) NOT NULL
);
 !   DROP TABLE public.identificador;
       public         heap    postgres    false            P           0    0    TABLE identificador    COMMENT     �   COMMENT ON TABLE public.identificador IS 'En esta entidad se encuentra informacion acerca de la persona que ha identificado un especimen por primera vez y el año de identidicacion del especimen
';
          public          postgres    false    231            �            1259    34796    identificador_ide_id_seq    SEQUENCE     �   CREATE SEQUENCE public.identificador_ide_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.identificador_ide_id_seq;
       public          postgres    false    231            Q           0    0    identificador_ide_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.identificador_ide_id_seq OWNED BY public.identificador.ide_id;
          public          postgres    false    230            �            1259    34805    localizacion    TABLE     �  CREATE TABLE public.localizacion (
    loc_id integer NOT NULL,
    esp_id integer NOT NULL,
    loc_localidad character(100) NOT NULL,
    loc_parque_nacional character(100),
    loc_minima_altitud numeric(4,0) NOT NULL,
    loc_maxima_altitud numeric(4,0) NOT NULL,
    loc_informacion_ecologica character(500) NOT NULL,
    loc_latitud numeric(8,6) NOT NULL,
    loc_longitud numeric(8,6) NOT NULL,
    geom public.geometry(Point,4326)
);
     DROP TABLE public.localizacion;
       public         heap    postgres    false    2    2    2    2    2    2    2    2            R           0    0    TABLE localizacion    COMMENT     �   COMMENT ON TABLE public.localizacion IS 'Entidad que contiene la informacion referente a la ubicacion donde se encuentra una especie
';
          public          postgres    false    233            �            1259    34804    localizacion_loc_id_seq    SEQUENCE     �   CREATE SEQUENCE public.localizacion_loc_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.localizacion_loc_id_seq;
       public          postgres    false    233            S           0    0    localizacion_loc_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.localizacion_loc_id_seq OWNED BY public.localizacion.loc_id;
          public          postgres    false    232            �            1259    34815    localizacion_provincia    TABLE     i   CREATE TABLE public.localizacion_provincia (
    loc_id integer NOT NULL,
    pro_id integer NOT NULL
);
 *   DROP TABLE public.localizacion_provincia;
       public         heap    postgres    false            �            1259    34821    orden    TABLE     �   CREATE TABLE public.orden (
    ord_id integer NOT NULL,
    cla_id integer NOT NULL,
    ord_ord_id integer,
    ord_nombre character(100) NOT NULL
);
    DROP TABLE public.orden;
       public         heap    postgres    false            �            1259    34820    orden_ord_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orden_ord_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.orden_ord_id_seq;
       public          postgres    false    236            T           0    0    orden_ord_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.orden_ord_id_seq OWNED BY public.orden.ord_id;
          public          postgres    false    235            �            1259    34831    pais    TABLE     b   CREATE TABLE public.pais (
    pas_id integer NOT NULL,
    pas_nombre character(100) NOT NULL
);
    DROP TABLE public.pais;
       public         heap    postgres    false            U           0    0 
   TABLE pais    COMMENT     d   COMMENT ON TABLE public.pais IS 'Entidad que presenta el pais en el cual se encuentra la especie
';
          public          postgres    false    238            �            1259    34830    pais_pas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pais_pas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.pais_pas_id_seq;
       public          postgres    false    238            V           0    0    pais_pas_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.pais_pas_id_seq OWNED BY public.pais.pas_id;
          public          postgres    false    237            �            1259    34839 	   provincia    TABLE     �   CREATE TABLE public.provincia (
    pro_id integer NOT NULL,
    pas_id integer NOT NULL,
    pro_nombre character(100) NOT NULL
);
    DROP TABLE public.provincia;
       public         heap    postgres    false            W           0    0    TABLE provincia    COMMENT     m   COMMENT ON TABLE public.provincia IS 'Entidad que presenta la provicia en la cual se encuentra la especie
';
          public          postgres    false    240            �            1259    34838    provincia_pro_id_seq    SEQUENCE     �   CREATE SEQUENCE public.provincia_pro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.provincia_pro_id_seq;
       public          postgres    false    240            X           0    0    provincia_pro_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.provincia_pro_id_seq OWNED BY public.provincia.pro_id;
          public          postgres    false    239            �            1259    34848 
   referencia    TABLE     �   CREATE TABLE public.referencia (
    ref_id integer NOT NULL,
    ref_doi character(500) NOT NULL,
    ref_titulo character(500)
);
    DROP TABLE public.referencia;
       public         heap    postgres    false            Y           0    0    TABLE referencia    COMMENT     �   COMMENT ON TABLE public.referencia IS 'En esta entidad se presenta informcion que relaciona a la especie con trabajos cientificos';
          public          postgres    false    242            �            1259    34847    referencia_ref_id_seq    SEQUENCE     �   CREATE SEQUENCE public.referencia_ref_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.referencia_ref_id_seq;
       public          postgres    false    242            Z           0    0    referencia_ref_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.referencia_ref_id_seq OWNED BY public.referencia.ref_id;
          public          postgres    false    241            �            1259    34858    reino    TABLE     {   CREATE TABLE public.reino (
    rei_id integer NOT NULL,
    rei_rei_id integer,
    rei_nombre character(100) NOT NULL
);
    DROP TABLE public.reino;
       public         heap    postgres    false            [           0    0    TABLE reino    COMMENT     w   COMMENT ON TABLE public.reino IS 'Entidad que contiene información sobre el taxon reino del espécimen de insecto, ';
          public          postgres    false    244            �            1259    34857    reino_rei_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reino_rei_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.reino_rei_id_seq;
       public          postgres    false    244            \           0    0    reino_rei_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.reino_rei_id_seq OWNED BY public.reino.rei_id;
          public          postgres    false    243            -           2604    34728    clase cla_id    DEFAULT     l   ALTER TABLE ONLY public.clase ALTER COLUMN cla_id SET DEFAULT nextval('public.clase_cla_id_seq'::regclass);
 ;   ALTER TABLE public.clase ALTER COLUMN cla_id DROP DEFAULT;
       public          postgres    false    216    215    216            .           2604    34738    colector col_id    DEFAULT     r   ALTER TABLE ONLY public.colector ALTER COLUMN col_id SET DEFAULT nextval('public.colector_col_id_seq'::regclass);
 >   ALTER TABLE public.colector ALTER COLUMN col_id DROP DEFAULT;
       public          postgres    false    217    218    218            /           2604    34746    especie esp_id    DEFAULT     p   ALTER TABLE ONLY public.especie ALTER COLUMN esp_id SET DEFAULT nextval('public.especie_esp_id_seq'::regclass);
 =   ALTER TABLE public.especie ALTER COLUMN esp_id DROP DEFAULT;
       public          postgres    false    219    220    220            0           2604    34770    familia fam_id    DEFAULT     p   ALTER TABLE ONLY public.familia ALTER COLUMN fam_id SET DEFAULT nextval('public.familia_fam_id_seq'::regclass);
 =   ALTER TABLE public.familia ALTER COLUMN fam_id DROP DEFAULT;
       public          postgres    false    224    225    225            1           2604    34780    filo fil_id    DEFAULT     j   ALTER TABLE ONLY public.filo ALTER COLUMN fil_id SET DEFAULT nextval('public.filo_fil_id_seq'::regclass);
 :   ALTER TABLE public.filo ALTER COLUMN fil_id DROP DEFAULT;
       public          postgres    false    227    226    227            2           2604    34790    genero gen_id    DEFAULT     n   ALTER TABLE ONLY public.genero ALTER COLUMN gen_id SET DEFAULT nextval('public.genero_gen_id_seq'::regclass);
 <   ALTER TABLE public.genero ALTER COLUMN gen_id DROP DEFAULT;
       public          postgres    false    229    228    229            3           2604    34800    identificador ide_id    DEFAULT     |   ALTER TABLE ONLY public.identificador ALTER COLUMN ide_id SET DEFAULT nextval('public.identificador_ide_id_seq'::regclass);
 C   ALTER TABLE public.identificador ALTER COLUMN ide_id DROP DEFAULT;
       public          postgres    false    231    230    231            4           2604    34808    localizacion loc_id    DEFAULT     z   ALTER TABLE ONLY public.localizacion ALTER COLUMN loc_id SET DEFAULT nextval('public.localizacion_loc_id_seq'::regclass);
 B   ALTER TABLE public.localizacion ALTER COLUMN loc_id DROP DEFAULT;
       public          postgres    false    232    233    233            5           2604    34824    orden ord_id    DEFAULT     l   ALTER TABLE ONLY public.orden ALTER COLUMN ord_id SET DEFAULT nextval('public.orden_ord_id_seq'::regclass);
 ;   ALTER TABLE public.orden ALTER COLUMN ord_id DROP DEFAULT;
       public          postgres    false    235    236    236            6           2604    34834    pais pas_id    DEFAULT     j   ALTER TABLE ONLY public.pais ALTER COLUMN pas_id SET DEFAULT nextval('public.pais_pas_id_seq'::regclass);
 :   ALTER TABLE public.pais ALTER COLUMN pas_id DROP DEFAULT;
       public          postgres    false    238    237    238            7           2604    34842    provincia pro_id    DEFAULT     t   ALTER TABLE ONLY public.provincia ALTER COLUMN pro_id SET DEFAULT nextval('public.provincia_pro_id_seq'::regclass);
 ?   ALTER TABLE public.provincia ALTER COLUMN pro_id DROP DEFAULT;
       public          postgres    false    240    239    240            8           2604    34851    referencia ref_id    DEFAULT     v   ALTER TABLE ONLY public.referencia ALTER COLUMN ref_id SET DEFAULT nextval('public.referencia_ref_id_seq'::regclass);
 @   ALTER TABLE public.referencia ALTER COLUMN ref_id DROP DEFAULT;
       public          postgres    false    242    241    242            9           2604    34861    reino rei_id    DEFAULT     l   ALTER TABLE ONLY public.reino ALTER COLUMN rei_id SET DEFAULT nextval('public.reino_rei_id_seq'::regclass);
 ;   ALTER TABLE public.reino ALTER COLUMN rei_id DROP DEFAULT;
       public          postgres    false    244    243    244            !          0    34725    clase 
   TABLE DATA           G   COPY public.clase (cla_id, fil_id, cla_cla_id, cla_nombre) FROM stdin;
    public          postgres    false    216   ��       #          0    34735    colector 
   TABLE DATA           h   COPY public.colector (col_id, col_nombre, col_apellido, col_fecha, col_metodo, col_destino) FROM stdin;
    public          postgres    false    218   .�       %          0    34743    especie 
   TABLE DATA           G   COPY public.especie (esp_id, gen_id, esp_nombre, esp_sexo) FROM stdin;
    public          postgres    false    220   6�       &          0    34751    especie_colector 
   TABLE DATA           :   COPY public.especie_colector (esp_id, col_id) FROM stdin;
    public          postgres    false    221   u�       '          0    34756    especie_identificador 
   TABLE DATA           ?   COPY public.especie_identificador (esp_id, ide_id) FROM stdin;
    public          postgres    false    222   �       (          0    34761    especie_referencia 
   TABLE DATA           <   COPY public.especie_referencia (esp_id, ref_id) FROM stdin;
    public          postgres    false    223   ��       *          0    34767    familia 
   TABLE DATA           I   COPY public.familia (fam_id, ord_id, fam_fam_id, gen_nombre) FROM stdin;
    public          postgres    false    225   [�       ,          0    34777    filo 
   TABLE DATA           F   COPY public.filo (fil_id, rei_id, fil_fil_id, fil_nombre) FROM stdin;
    public          postgres    false    227   ��       .          0    34787    genero 
   TABLE DATA           H   COPY public.genero (gen_id, fam_id, gen_gen_id, gen_nombre) FROM stdin;
    public          postgres    false    229   h�       0          0    34797    identificador 
   TABLE DATA           S   COPY public.identificador (ide_id, ide_nombre, ide_apellido, ide_anio) FROM stdin;
    public          postgres    false    231   ��       2          0    34805    localizacion 
   TABLE DATA           �   COPY public.localizacion (loc_id, esp_id, loc_localidad, loc_parque_nacional, loc_minima_altitud, loc_maxima_altitud, loc_informacion_ecologica, loc_latitud, loc_longitud, geom) FROM stdin;
    public          postgres    false    233   ��       3          0    34815    localizacion_provincia 
   TABLE DATA           @   COPY public.localizacion_provincia (loc_id, pro_id) FROM stdin;
    public          postgres    false    234   ��       5          0    34821    orden 
   TABLE DATA           G   COPY public.orden (ord_id, cla_id, ord_ord_id, ord_nombre) FROM stdin;
    public          postgres    false    236   R�       7          0    34831    pais 
   TABLE DATA           2   COPY public.pais (pas_id, pas_nombre) FROM stdin;
    public          postgres    false    238   ��       9          0    34839 	   provincia 
   TABLE DATA           ?   COPY public.provincia (pro_id, pas_id, pro_nombre) FROM stdin;
    public          postgres    false    240   ��       ;          0    34848 
   referencia 
   TABLE DATA           A   COPY public.referencia (ref_id, ref_doi, ref_titulo) FROM stdin;
    public          postgres    false    242   "�      =          0    34858    reino 
   TABLE DATA           ?   COPY public.reino (rei_id, rei_rei_id, rei_nombre) FROM stdin;
    public          postgres    false    244   ��      ,          0    35276    spatial_ref_sys 
   TABLE DATA           X   COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
    public          postgres    false    246   8�      ]           0    0    clase_cla_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.clase_cla_id_seq', 1, false);
          public          postgres    false    215            ^           0    0    colector_col_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.colector_col_id_seq', 1, false);
          public          postgres    false    217            _           0    0    especie_esp_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.especie_esp_id_seq', 1, false);
          public          postgres    false    219            `           0    0    familia_fam_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.familia_fam_id_seq', 1, false);
          public          postgres    false    224            a           0    0    filo_fil_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.filo_fil_id_seq', 1, false);
          public          postgres    false    226            b           0    0    genero_gen_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.genero_gen_id_seq', 1, false);
          public          postgres    false    228            c           0    0    identificador_ide_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.identificador_ide_id_seq', 1, false);
          public          postgres    false    230            d           0    0    localizacion_loc_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.localizacion_loc_id_seq', 1, false);
          public          postgres    false    232            e           0    0    orden_ord_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.orden_ord_id_seq', 1, false);
          public          postgres    false    235            f           0    0    pais_pas_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.pais_pas_id_seq', 253, true);
          public          postgres    false    237            g           0    0    provincia_pro_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.provincia_pro_id_seq', 5077, true);
          public          postgres    false    239            h           0    0    referencia_ref_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.referencia_ref_id_seq', 1, false);
          public          postgres    false    241            i           0    0    reino_rei_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.reino_rei_id_seq', 1, false);
          public          postgres    false    243            ?           2606    34730    clase pk_clase 
   CONSTRAINT     P   ALTER TABLE ONLY public.clase
    ADD CONSTRAINT pk_clase PRIMARY KEY (cla_id);
 8   ALTER TABLE ONLY public.clase DROP CONSTRAINT pk_clase;
       public            postgres    false    216            B           2606    34740    colector pk_colector 
   CONSTRAINT     V   ALTER TABLE ONLY public.colector
    ADD CONSTRAINT pk_colector PRIMARY KEY (col_id);
 >   ALTER TABLE ONLY public.colector DROP CONSTRAINT pk_colector;
       public            postgres    false    218            F           2606    34748    especie pk_especie 
   CONSTRAINT     T   ALTER TABLE ONLY public.especie
    ADD CONSTRAINT pk_especie PRIMARY KEY (esp_id);
 <   ALTER TABLE ONLY public.especie DROP CONSTRAINT pk_especie;
       public            postgres    false    220            Q           2606    34772    familia pk_familia 
   CONSTRAINT     T   ALTER TABLE ONLY public.familia
    ADD CONSTRAINT pk_familia PRIMARY KEY (fam_id);
 <   ALTER TABLE ONLY public.familia DROP CONSTRAINT pk_familia;
       public            postgres    false    225            U           2606    34782    filo pk_filo 
   CONSTRAINT     N   ALTER TABLE ONLY public.filo
    ADD CONSTRAINT pk_filo PRIMARY KEY (fil_id);
 6   ALTER TABLE ONLY public.filo DROP CONSTRAINT pk_filo;
       public            postgres    false    227            Z           2606    34792    genero pk_genero 
   CONSTRAINT     R   ALTER TABLE ONLY public.genero
    ADD CONSTRAINT pk_genero PRIMARY KEY (gen_id);
 :   ALTER TABLE ONLY public.genero DROP CONSTRAINT pk_genero;
       public            postgres    false    229            ^           2606    34802    identificador pk_identificador 
   CONSTRAINT     `   ALTER TABLE ONLY public.identificador
    ADD CONSTRAINT pk_identificador PRIMARY KEY (ide_id);
 H   ALTER TABLE ONLY public.identificador DROP CONSTRAINT pk_identificador;
       public            postgres    false    231            a           2606    34812    localizacion pk_localizacion 
   CONSTRAINT     ^   ALTER TABLE ONLY public.localizacion
    ADD CONSTRAINT pk_localizacion PRIMARY KEY (loc_id);
 F   ALTER TABLE ONLY public.localizacion DROP CONSTRAINT pk_localizacion;
       public            postgres    false    233            i           2606    34826    orden pk_orden 
   CONSTRAINT     P   ALTER TABLE ONLY public.orden
    ADD CONSTRAINT pk_orden PRIMARY KEY (ord_id);
 8   ALTER TABLE ONLY public.orden DROP CONSTRAINT pk_orden;
       public            postgres    false    236            l           2606    34836    pais pk_pais 
   CONSTRAINT     N   ALTER TABLE ONLY public.pais
    ADD CONSTRAINT pk_pais PRIMARY KEY (pas_id);
 6   ALTER TABLE ONLY public.pais DROP CONSTRAINT pk_pais;
       public            postgres    false    238            o           2606    34844    provincia pk_provincia 
   CONSTRAINT     X   ALTER TABLE ONLY public.provincia
    ADD CONSTRAINT pk_provincia PRIMARY KEY (pro_id);
 @   ALTER TABLE ONLY public.provincia DROP CONSTRAINT pk_provincia;
       public            postgres    false    240            r           2606    34855    referencia pk_referencia 
   CONSTRAINT     Z   ALTER TABLE ONLY public.referencia
    ADD CONSTRAINT pk_referencia PRIMARY KEY (ref_id);
 B   ALTER TABLE ONLY public.referencia DROP CONSTRAINT pk_referencia;
       public            postgres    false    242            u           2606    34863    reino pk_reino 
   CONSTRAINT     P   ALTER TABLE ONLY public.reino
    ADD CONSTRAINT pk_reino PRIMARY KEY (rei_id);
 8   ALTER TABLE ONLY public.reino DROP CONSTRAINT pk_reino;
       public            postgres    false    244            ;           1259    34733    clase_clase_fk    INDEX     F   CREATE INDEX clase_clase_fk ON public.clase USING btree (cla_cla_id);
 "   DROP INDEX public.clase_clase_fk;
       public            postgres    false    216            e           1259    34828    clase_orden1_fk    INDEX     C   CREATE INDEX clase_orden1_fk ON public.orden USING btree (cla_id);
 #   DROP INDEX public.clase_orden1_fk;
       public            postgres    false    236            <           1259    34731    clase_pk    INDEX     C   CREATE UNIQUE INDEX clase_pk ON public.clase USING btree (cla_id);
    DROP INDEX public.clase_pk;
       public            postgres    false    216            G           1259    34755    colector_ec_fk    INDEX     M   CREATE INDEX colector_ec_fk ON public.especie_colector USING btree (col_id);
 "   DROP INDEX public.colector_ec_fk;
       public            postgres    false    221            @           1259    34741    colector_pk    INDEX     I   CREATE UNIQUE INDEX colector_pk ON public.colector USING btree (col_id);
    DROP INDEX public.colector_pk;
       public            postgres    false    218            H           1259    34754    especie_ec_fk    INDEX     L   CREATE INDEX especie_ec_fk ON public.especie_colector USING btree (esp_id);
 !   DROP INDEX public.especie_ec_fk;
       public            postgres    false    221            I           1259    34759    especie_ei_fk    INDEX     Q   CREATE INDEX especie_ei_fk ON public.especie_identificador USING btree (esp_id);
 !   DROP INDEX public.especie_ei_fk;
       public            postgres    false    222            K           1259    34764    especie_er_fk    INDEX     N   CREATE INDEX especie_er_fk ON public.especie_referencia USING btree (esp_id);
 !   DROP INDEX public.especie_er_fk;
       public            postgres    false    223            C           1259    34749 
   especie_pk    INDEX     G   CREATE UNIQUE INDEX especie_pk ON public.especie USING btree (esp_id);
    DROP INDEX public.especie_pk;
       public            postgres    false    220            M           1259    34775    familia_familia_fk    INDEX     L   CREATE INDEX familia_familia_fk ON public.familia USING btree (fam_fam_id);
 &   DROP INDEX public.familia_familia_fk;
       public            postgres    false    225            W           1259    34794    familia_genero_fk    INDEX     F   CREATE INDEX familia_genero_fk ON public.genero USING btree (fam_id);
 %   DROP INDEX public.familia_genero_fk;
       public            postgres    false    229            N           1259    34773 
   familia_pk    INDEX     G   CREATE UNIQUE INDEX familia_pk ON public.familia USING btree (fam_id);
    DROP INDEX public.familia_pk;
       public            postgres    false    225            =           1259    34732    filo_clase_fk    INDEX     A   CREATE INDEX filo_clase_fk ON public.clase USING btree (fil_id);
 !   DROP INDEX public.filo_clase_fk;
       public            postgres    false    216            R           1259    34785    filo_filo_fk    INDEX     C   CREATE INDEX filo_filo_fk ON public.filo USING btree (fil_fil_id);
     DROP INDEX public.filo_filo_fk;
       public            postgres    false    227            S           1259    34783    filo_pk    INDEX     A   CREATE UNIQUE INDEX filo_pk ON public.filo USING btree (fil_id);
    DROP INDEX public.filo_pk;
       public            postgres    false    227            D           1259    34750    genero_especie_fk    INDEX     G   CREATE INDEX genero_especie_fk ON public.especie USING btree (gen_id);
 %   DROP INDEX public.genero_especie_fk;
       public            postgres    false    220            X           1259    34793 	   genero_pk    INDEX     E   CREATE UNIQUE INDEX genero_pk ON public.genero USING btree (gen_id);
    DROP INDEX public.genero_pk;
       public            postgres    false    229            J           1259    34760    identificador_ei_fk    INDEX     W   CREATE INDEX identificador_ei_fk ON public.especie_identificador USING btree (ide_id);
 '   DROP INDEX public.identificador_ei_fk;
       public            postgres    false    222            \           1259    34803    identificador_pk    INDEX     S   CREATE UNIQUE INDEX identificador_pk ON public.identificador USING btree (ide_id);
 $   DROP INDEX public.identificador_pk;
       public            postgres    false    231            c           1259    34818    localizacion_lp_fk    INDEX     W   CREATE INDEX localizacion_lp_fk ON public.localizacion_provincia USING btree (loc_id);
 &   DROP INDEX public.localizacion_lp_fk;
       public            postgres    false    234            _           1259    34813    localizacion_pk    INDEX     Q   CREATE UNIQUE INDEX localizacion_pk ON public.localizacion USING btree (loc_id);
 #   DROP INDEX public.localizacion_pk;
       public            postgres    false    233            O           1259    34774    orden_familia_fk    INDEX     F   CREATE INDEX orden_familia_fk ON public.familia USING btree (ord_id);
 $   DROP INDEX public.orden_familia_fk;
       public            postgres    false    225            f           1259    34829    orden_orden_fk    INDEX     F   CREATE INDEX orden_orden_fk ON public.orden USING btree (ord_ord_id);
 "   DROP INDEX public.orden_orden_fk;
       public            postgres    false    236            g           1259    34827    orden_pk    INDEX     C   CREATE UNIQUE INDEX orden_pk ON public.orden USING btree (ord_id);
    DROP INDEX public.orden_pk;
       public            postgres    false    236            j           1259    34837    pais_pk    INDEX     A   CREATE UNIQUE INDEX pais_pk ON public.pais USING btree (pas_id);
    DROP INDEX public.pais_pk;
       public            postgres    false    238            m           1259    34846    pais_provincia_fk    INDEX     I   CREATE INDEX pais_provincia_fk ON public.provincia USING btree (pas_id);
 %   DROP INDEX public.pais_provincia_fk;
       public            postgres    false    240            d           1259    34819    provincia_lp_fk    INDEX     T   CREATE INDEX provincia_lp_fk ON public.localizacion_provincia USING btree (pro_id);
 #   DROP INDEX public.provincia_lp_fk;
       public            postgres    false    234            p           1259    34845    provincia_pk    INDEX     K   CREATE UNIQUE INDEX provincia_pk ON public.provincia USING btree (pro_id);
     DROP INDEX public.provincia_pk;
       public            postgres    false    240            L           1259    34765    referencia_er_fk    INDEX     Q   CREATE INDEX referencia_er_fk ON public.especie_referencia USING btree (ref_id);
 $   DROP INDEX public.referencia_er_fk;
       public            postgres    false    223            s           1259    34856    referencia_pk    INDEX     M   CREATE UNIQUE INDEX referencia_pk ON public.referencia USING btree (ref_id);
 !   DROP INDEX public.referencia_pk;
       public            postgres    false    242            V           1259    34784    reino_filo_fk    INDEX     @   CREATE INDEX reino_filo_fk ON public.filo USING btree (rei_id);
 !   DROP INDEX public.reino_filo_fk;
       public            postgres    false    227            v           1259    34864    reino_pk    INDEX     C   CREATE UNIQUE INDEX reino_pk ON public.reino USING btree (rei_id);
    DROP INDEX public.reino_pk;
       public            postgres    false    244            w           1259    34865    reino_reino_fk    INDEX     F   CREATE INDEX reino_reino_fk ON public.reino USING btree (rei_rei_id);
 "   DROP INDEX public.reino_reino_fk;
       public            postgres    false    244            [           1259    34795    relationship_23_fk    INDEX     K   CREATE INDEX relationship_23_fk ON public.genero USING btree (gen_gen_id);
 &   DROP INDEX public.relationship_23_fk;
       public            postgres    false    229            b           1259    34814 
   ubicada_fk    INDEX     E   CREATE INDEX ubicada_fk ON public.localizacion USING btree (esp_id);
    DROP INDEX public.ubicada_fk;
       public            postgres    false    233            z           2606    34866    clase fk_clase_clase_cla_clase    FK CONSTRAINT     �   ALTER TABLE ONLY public.clase
    ADD CONSTRAINT fk_clase_clase_cla_clase FOREIGN KEY (cla_cla_id) REFERENCES public.clase(cla_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 H   ALTER TABLE ONLY public.clase DROP CONSTRAINT fk_clase_clase_cla_clase;
       public          postgres    false    216    216    4159            {           2606    34871    clase fk_clase_filo_clas_filo    FK CONSTRAINT     �   ALTER TABLE ONLY public.clase
    ADD CONSTRAINT fk_clase_filo_clas_filo FOREIGN KEY (fil_id) REFERENCES public.filo(fil_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 G   ALTER TABLE ONLY public.clase DROP CONSTRAINT fk_clase_filo_clas_filo;
       public          postgres    false    227    4181    216            }           2606    34881 /   especie_colector fk_especie__colector__colector    FK CONSTRAINT     �   ALTER TABLE ONLY public.especie_colector
    ADD CONSTRAINT fk_especie__colector__colector FOREIGN KEY (col_id) REFERENCES public.colector(col_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 Y   ALTER TABLE ONLY public.especie_colector DROP CONSTRAINT fk_especie__colector__colector;
       public          postgres    false    221    4162    218            ~           2606    34886 4   especie_identificador fk_especie__identific_identifi    FK CONSTRAINT     �   ALTER TABLE ONLY public.especie_identificador
    ADD CONSTRAINT fk_especie__identific_identifi FOREIGN KEY (ide_id) REFERENCES public.identificador(ide_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 ^   ALTER TABLE ONLY public.especie_identificador DROP CONSTRAINT fk_especie__identific_identifi;
       public          postgres    false    4190    231    222                       2606    34891 1   especie_referencia fk_especie__referenci_referenc    FK CONSTRAINT     �   ALTER TABLE ONLY public.especie_referencia
    ADD CONSTRAINT fk_especie__referenci_referenc FOREIGN KEY (ref_id) REFERENCES public.referencia(ref_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 [   ALTER TABLE ONLY public.especie_referencia DROP CONSTRAINT fk_especie__referenci_referenc;
       public          postgres    false    223    242    4210            |           2606    34876 #   especie fk_especie_genero_es_genero    FK CONSTRAINT     �   ALTER TABLE ONLY public.especie
    ADD CONSTRAINT fk_especie_genero_es_genero FOREIGN KEY (gen_id) REFERENCES public.genero(gen_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 M   ALTER TABLE ONLY public.especie DROP CONSTRAINT fk_especie_genero_es_genero;
       public          postgres    false    220    4186    229            �           2606    34896 $   familia fk_familia_familia_f_familia    FK CONSTRAINT     �   ALTER TABLE ONLY public.familia
    ADD CONSTRAINT fk_familia_familia_f_familia FOREIGN KEY (fam_fam_id) REFERENCES public.familia(fam_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 N   ALTER TABLE ONLY public.familia DROP CONSTRAINT fk_familia_familia_f_familia;
       public          postgres    false    225    225    4177            �           2606    34901 "   familia fk_familia_orden_fam_orden    FK CONSTRAINT     �   ALTER TABLE ONLY public.familia
    ADD CONSTRAINT fk_familia_orden_fam_orden FOREIGN KEY (ord_id) REFERENCES public.orden(ord_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 L   ALTER TABLE ONLY public.familia DROP CONSTRAINT fk_familia_orden_fam_orden;
       public          postgres    false    236    4201    225            �           2606    34906    filo fk_filo_filo_filo_filo    FK CONSTRAINT     �   ALTER TABLE ONLY public.filo
    ADD CONSTRAINT fk_filo_filo_filo_filo FOREIGN KEY (fil_fil_id) REFERENCES public.filo(fil_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 E   ALTER TABLE ONLY public.filo DROP CONSTRAINT fk_filo_filo_filo_filo;
       public          postgres    false    227    4181    227            �           2606    34911    filo fk_filo_reino_fil_reino    FK CONSTRAINT     �   ALTER TABLE ONLY public.filo
    ADD CONSTRAINT fk_filo_reino_fil_reino FOREIGN KEY (rei_id) REFERENCES public.reino(rei_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 F   ALTER TABLE ONLY public.filo DROP CONSTRAINT fk_filo_reino_fil_reino;
       public          postgres    false    244    4213    227            �           2606    34916 "   genero fk_genero_familia_g_familia    FK CONSTRAINT     �   ALTER TABLE ONLY public.genero
    ADD CONSTRAINT fk_genero_familia_g_familia FOREIGN KEY (fam_id) REFERENCES public.familia(fam_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 L   ALTER TABLE ONLY public.genero DROP CONSTRAINT fk_genero_familia_g_familia;
       public          postgres    false    4177    225    229            �           2606    34921 !   genero fk_genero_relations_genero    FK CONSTRAINT     �   ALTER TABLE ONLY public.genero
    ADD CONSTRAINT fk_genero_relations_genero FOREIGN KEY (gen_gen_id) REFERENCES public.genero(gen_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 K   ALTER TABLE ONLY public.genero DROP CONSTRAINT fk_genero_relations_genero;
       public          postgres    false    229    4186    229            �           2606    34931 5   localizacion_provincia fk_localiza_localizac_localiza    FK CONSTRAINT     �   ALTER TABLE ONLY public.localizacion_provincia
    ADD CONSTRAINT fk_localiza_localizac_localiza FOREIGN KEY (loc_id) REFERENCES public.localizacion(loc_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 _   ALTER TABLE ONLY public.localizacion_provincia DROP CONSTRAINT fk_localiza_localizac_localiza;
       public          postgres    false    233    4193    234            �           2606    34936 5   localizacion_provincia fk_localiza_provincia_provinci    FK CONSTRAINT     �   ALTER TABLE ONLY public.localizacion_provincia
    ADD CONSTRAINT fk_localiza_provincia_provinci FOREIGN KEY (pro_id) REFERENCES public.provincia(pro_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 _   ALTER TABLE ONLY public.localizacion_provincia DROP CONSTRAINT fk_localiza_provincia_provinci;
       public          postgres    false    4207    240    234            �           2606    34926 (   localizacion fk_localiza_ubicada_especie    FK CONSTRAINT     �   ALTER TABLE ONLY public.localizacion
    ADD CONSTRAINT fk_localiza_ubicada_especie FOREIGN KEY (esp_id) REFERENCES public.especie(esp_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 R   ALTER TABLE ONLY public.localizacion DROP CONSTRAINT fk_localiza_ubicada_especie;
       public          postgres    false    220    233    4166            �           2606    34941    orden fk_orden_clase_ord_clase    FK CONSTRAINT     �   ALTER TABLE ONLY public.orden
    ADD CONSTRAINT fk_orden_clase_ord_clase FOREIGN KEY (cla_id) REFERENCES public.clase(cla_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 H   ALTER TABLE ONLY public.orden DROP CONSTRAINT fk_orden_clase_ord_clase;
       public          postgres    false    216    4159    236            �           2606    34946    orden fk_orden_orden_ord_orden    FK CONSTRAINT     �   ALTER TABLE ONLY public.orden
    ADD CONSTRAINT fk_orden_orden_ord_orden FOREIGN KEY (ord_ord_id) REFERENCES public.orden(ord_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 H   ALTER TABLE ONLY public.orden DROP CONSTRAINT fk_orden_orden_ord_orden;
       public          postgres    false    4201    236    236            �           2606    34951 $   provincia fk_provinci_pais_prov_pais    FK CONSTRAINT     �   ALTER TABLE ONLY public.provincia
    ADD CONSTRAINT fk_provinci_pais_prov_pais FOREIGN KEY (pas_id) REFERENCES public.pais(pas_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 N   ALTER TABLE ONLY public.provincia DROP CONSTRAINT fk_provinci_pais_prov_pais;
       public          postgres    false    4204    240    238            �           2606    34956    reino fk_reino_reino_rei_reino    FK CONSTRAINT     �   ALTER TABLE ONLY public.reino
    ADD CONSTRAINT fk_reino_reino_rei_reino FOREIGN KEY (rei_rei_id) REFERENCES public.reino(rei_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 H   ALTER TABLE ONLY public.reino DROP CONSTRAINT fk_reino_reino_rei_reino;
       public          postgres    false    244    4213    244            !   �   x���=�0�9>'�(-#������
��Ƒ��=H��|z�so3=ͅ��>��؉u�a�D���,^sA�T�Q�[H���b�cv�hJ� ��1�B*zplV��;<����unV�����a�o{�%�:��� ~���V      #   �  x���j�@���S̩7)ZIv��IS($%�!�^��d�Hr@y�K�/�]�!N��4�<h��`�~�;��h,ӫ�.�h��|��r!U�d�纡�
�Dj��L�2͠�D=��:�-�p�y�8��*�X?D+ŋ8ʺ}���9���x��7��{��r%!�R�e.+��J/��g�%�(��3����G*V/�8���1��:�6j1��z���ʗ���w�:xޓ�|�n��p<do�+ֈ.�m��w}��*h��<Mη�1#xc����]�۶!ރ,K���Q����D��#CD�*{٩fY����}�H�|̚i�	C�ց;��eV4�&�y��'z�����;ovW�\�����}ѣu��lFO�K�|ƭ���x;5�����8Cڣ��2h퍘i�4�����\ʪᄌ��Z{��u_�#�w�ը����܃7�������\č���ꔇ2��'�pď�l`�'B��=��m���g"z(���|��2KWA�e7�����Q�H}(��W���zg��f�W|(���{�CY���x�Cy�wo�L��V�QW����b�������,��j�v�vo����*3�J�V�:"z���e�8|b�����j��ylP���Ie7���^���tL�;\��Xz(���ǰ%�G�\;?zm37z�f���='=��c���Çu=>0��کv�.#z(��+R1�|(�qB�o����U���3tg�C�t33��r,��.��      %   /  x�͙�n�0���S�]�9���]va�"fI�d�~������Q�Q�G����@��B���8x2.޵�9	["Cs�@\�nccCD����\�.)z;r䫅nl?������4}e3�����r����+Qm�a{�`��T����eG�0��_+ۍR�Фjj��)p.��^� �%M�
\��tp�S�)a( �5Tp�k
�11R�*8��@��������=r:8�Ð8۸�kF1����=�r"Q�9ğ��Y �r����8�D���A��f�Nb�\���\�kZGޟ!Nb�P��x���������F��Kw������ �n�����~�"0�"-��CĪ���C�j�}I(0�b�W_u�b����P�����N1�q����3�
N1e[�;���8�aUpb���6�dC�}Uk�op3M	'�HŔ�=TpO+��yu��Tpb�\�фԾέ�"�%��t�k����M%w-i�b�\�fե�,���]�� �j��%���U	'�X���$Tp��qT�91�?������M���XE=      &   �   x��I�A��f�td\�?�m�!���E9nl^\><jA�$ʐ�@�
�h�m�@��Х��/Z���B��.\z�7���~�c�!b�|ʏ�H�A���fr��\�!�]�b��5j6���M�t؍n��H��%u      '   �   x��I�A��f�td\�?�m�!���E9nl^\><jA�$ʐ�@�
�h�m�@��Х��/Z���B��.\z�7���~�c�!b�|ʏ�H�A���fr��\�!�]�b��5j6���M�t؍n��H��%u      (   �   x��I�A��f�td\�?�m�!���E9nl^\><jA�$ʐ�@�
�h�m�@��Х��/Z���B��.\z�7���~�c�!b�|ʏ�H�A���fr��\�!�]�b��5j6���M�t؍n��H��%u      *   L  x���[��0E����
����lfR��䱀�ȶ�-C��qW_���n�f��ë0{)_~]^�uj
��7��_ ?ʟ,�<�A���"��됇��RXw����U	k^���|�( ��b�P��$V��������a�׫�V�:sWK��"e;�}n��Eʲ�`Z�&4L�q�����[�2q���ց/��2��v�؏FY�`�uށa���Wݰ-��*�T�5O؊�e"�7e���/��&ؤ���z�`��&y�|.p�Q�'�W>��,�� o��F��|�\����x79T|X�`�m5�O�$�c�b�w�d�-�9w'�pu�YKq���
�}*�'L��k�3T$�x5�!vN"T$��脏�"d��\�H��%��A{݂$�s��{�z�B�nT���AGL���-���r�`��&yw\���ԥ�ݻ���UMe�`�_�Rr��h��b��<l=6�0Lr�fBGb*� ��o\�j�Rr��:�S0�� ��"V�AN�jt�S�=an��GU�`���g̈�L�� '3���X�р*1�i�ը���@��� ?<6�=`b��\�Ŏj�� j�TඦJ��8�tSQ�A>��Y��~�U$�b������A�>�b���B4֍u�`1]����W��&9o���6u]��G��C��'XL��#�b�g��K	k� ��q�m�&K0��V5y�yt�c��u���F�Fr�>�6b��F�Lr��oA��A�^���� 5b����
&���t��~�`�,��ȇ5�� 7�6K`b�XUX�`�:u�� �� 7��:]�� �I�#z���+�xȳ{      ,   �  x���MN�0�םS���K@U��%*��`K�'r����鴜��|����5Q��f�`M̞�k����V��{EX3a��������zL�����͙5���#����4������l�	���;��"����io26�a���,u-��"��t��+%���L#%�X���w������G�p��<�1s��"�HJ�2]N�S���&�X����M�>)�ǳkʡ�{MJ�R�����r����K�� �`��¸W��d�u�w�F-Y�1���AZ�q�S��q��/0���� o�Wqt6�HZR�d<�@i1HU��[OI�A��Xt�#�����]݄R�]���� U�VVG��*ͪŽ.�l=7��K��d���(ymm������Œ}Wsé=���"�_�mL      .     x���Aj1EףS����i�,颔�f�116xFFv ��������<�n�wׯ�mT�Fu�_a�a�L�"��Ls��\v�1�
{Za�X
�vƪǃ����|���=�����F]"��������Z���
�D�,��r�J����věk'�e�K�Z���&9�!yʚ�4b�Sp��H#9U�~J0⑳e묣;.7�R����E�^���=q	N����Φ��l��K��-2M6ƨ���%C�M[Ys�^\r�����&.�ԩ��U{�- � ��|�      0   �  x����N�@���S�ɛ��J��Fc!�����4�bZjR�ǋ>/�����Ϥ�'_f���[ٛ�MD�_�ڹ�8��R�{�ȸ�B`S�j3Q��]�7,$���.��ٝ][����0��Og�2�X����l�+�c�λ�a��\�5��"���r�I�跊G���l��olV<U�&�?��)F`-��w&C�v�ۀW�y[po���+�ݗ����ҘI�k٩E$��y�ُӫ2I��G�ŭ�dH2	��x)1�����L Z�HA2&)�8&�d��v�0��E�K9 ՕM�9M
�	�߀�R	6�!)�' �7�	�S!)H( N���2���E��%�8d(Rro�+���; 2���m��NHC>�������to��G	�<M�	��ѐNFy�L��Υ�4ΰ�	�$�> �%��{��V�hgJEs	��d�JC�	��t�@B�q�QќB��&�콓�5����r�&>5MJ7�����;H)�^>D�^�+      2     x���n#7���S�r-y�K�*�A;1�� 	fCˊ[���%@�z�G�Y��D�A0��D�o�J��>��F�����}5��?7���G_��~������%������o^�-BWTP�9Y*�R� �G��� ��_P�P�����V���2�;�]ݠ5�-� ���?l롺�T_�7�	� �~��iS}��ۡ���[8�?$�h"O�%]I�D� ,�\���"���3����H��je�-� q�?~���n6�?~�,R�z8D&n�aX��ه�Ҕ ���2H���k��E�(צm�֌��m�Ǧk��pr3��c�p�ӿ7��z�~����b���.q"S�%��+-#K.W�+v)u���[���<K9��f@9�RY��.����v�����~�'��<���_ҧ� +Hd���
ρa�̊�^�p�a�	[׮S'�0
tc�I�<D�b�hJ%+&Q/��WU���;M�4�#�)Dd�d1BM��}ھ�O��`�!��,5]	u���
C�@/u`�hk�j�Z-:Qw��u͙ku(,x �sEe��LG�>{������f�mO��7;_}q�k���7a� ���*B�&�Lj��B^`�q�ZdBk1gjtΆ`!�iC�X0F��_�$^��:��:a�F�IJ�`��Ƒ>�`$a�/�ESG,���g`1�&eR���M���
EנtXpV����Aº�O�S��ȳ4�(�0��"�Y�b�`~�	��Ck$j����P7���ltdB6�$������.T(�,XL�u��&(di���cJ�L-���B GVkjŹ5Kk*��
�n#��57C���}�l*�PQ��*��ΐ���}���py~4R������~���[�W�q�G�����������S�1�xV�)P�(�ĕ��(�=Q����p�,�E�2��U�st�CD�7���Dō����v�G�����tl�J6��X�I�^�؛��bjw��6	[P���D�
9�҆�aB��Z�H��q!��Rέ'��c;����L3�/N�������;���T]|����8gN��5�	��O��`8��Y��'������g��&2U�Q��Dt�&��.9��JUK�;^7�	a�����Z)Fc=�IXο����
�P,ٹ�	���-�&����J�a�@K�8�3�Z-C:�^�$�+bB*Q��Rg&�a��ow�����E��Ӗ��N�32|�
E}�cB������;�t��#�?n�� �L�d,�S��1���ٟ�c'ڣP��bCp<����._}VC�A2��:&NT1l�m�EE]<	���L&�yȖ[rU�ӱ��4̞�HQ��Qi�"�*ov��*]�@�xMm�Ҋ�U�Z��	�9��i�<�@���
Ap��ŋ��hb%;.��`�e]��a�HXo}�0�~8M�(����|���n����7��x4��E�/�@dh�X �\YH�����XY�NZͰ)���f�&8�3�����CA�����q	D�����E~��%Z0�/GZ��P�J�G,Z�ɗ�ь?og�4ў�~e(>�\5ޯ�L��N��t�I8*�5�j�fK�mCAj��o��/�+bb��0���݁��3���IVo��in�ʰ"OE&(0�|P J�d�洳 y�ѲqXQ[+��(�����gjbb��M
�*H����������8�q�s�0��Ro�,V��9�~8n��a_�l��a������%� ���!!HXs"Q�D�$J��$a]����锭�5���Z,� \G      3   �   x�5��� �V1Н0�%��kؼv�`9i^~�"�ܮPc�#�`�P�}n�.�xNq8�˙�4,��7l_��q��>9�}��o�\�t�/�g���|"�D�|"��'�i��żf^�3>�7����򾟈���:�      5   0  x���Mn�0��5s���¦�϶?j+�
+�Ɛ�dǖ�.r�<H���\�Q2�wԬ��W�goJ���C�Z/�sL�3�E�^9����r`�l5�z���b%ˁ3���j����x�n#=V�|b�$���Լb�z5Θ��'���Lұ4=�R���%k�``()�ǒ��j���x��$+����I?�]�M7XI@ֹX��IAZ�"VLϯX�.c'i)H��OZ
��0)ȷI�u�CMZ
�q�N���dS2�{>IKA�v�z���l�;��j�R�]�dL
�O<]� ���D����      7   1
  x����vۺ�1���g��,�/C�ql�N������	$!b�P@�>Ҵ��h_���8M3�vv����7� ���˕�t?�.d�
q��n���[�bR03\�${&�T���Ⰵ2�s#[C҂Bvc-�jJ0K�p�0�<�tÅ�� �|��Cd��;z�d�)<�v�ӃA�C�T�:�}b�m�	����ȍ��������8�9���0�*;���;�S�ەB{^�V���T���x1�S�閍\�~Et�H��ûi��#�H���;K�Z��zGo�����ȭ�;9�2���B�sh�wJqd��ηy`z����虲[�4�wzA�<0C�(��)���԰Y�䁕[ݐ�o���A#Dϻ�F��0W�z�,����T���N�i~ޯ�k���q)���{ߐ�����;��;�8���,�����P.Hk8�$�5f���
?*� �uA�ٴx2�3� K�1f%_���wS�k�v�FϧuRq����|�dptC��ɽ��|F��cu?�Q<�
2䁙c�{p�0�떿Q^�!Lc�9w2�i���� G�nI��9�x�Z3�r����5��Ӽ��	A�<0�\G��<0� �kn}'G�A���r�`�U��c�sld?�6��<��d�<��]� 6k���`��+J��ܩ��t�����)"����7PpA�<0��O�w�ogd���Odx������N.N����#�N!N��F6rA���(��W'1s�:�)F��J�`�h)?��S��~0��u��a�͚<)c�F6�쵹�L�X���e*��/�>>(38�����⍕ݜ]�,8�CG�g�W�
��ɹ2ͦS=�}e��ܠ�[)�����t�"(kq*g��w��8+��&D'���%;ߪ�me7QA�N*NW�"��d�TϬlI��ũU��U1:���;��XPU��Ʌj�[S���;��,�ԑw�J�>��F8�g�6��a�����OmP#X���t��~��^:��<pz�u.Τ�N�F�gJڧA����_�N6S��g�[8K�0:�w���r�����+�S�3�-�TW�r�(�s���Q,ƕ9*3B��m��JŹe�p�P桯/ �^�1⼷R�����l�O�U�l%�n�К��8��[e���쟡X�5vA�+ǉ��[y���Y�P*.T��g]��m�L�˲q����+t|�Z�B�3o>T���1�x�*q���͖��jq)��#�D���+��R�dG�� J �fXq<��R��� �I���$��Au��h;���#�����O�Ό�K*T�wr��$o"���}z�S�*D��h!���3�Y�b@�|d�Ë�d�6�Ʉ�R-�Äe��eb��=�{h�GPZ ��Q��<�������W�i��^q����_���5 g��M� ΢=��{/ �dؘa���!ԟzN�#ɠ�]� �d0��<�'��t�n]ᡥ�e��C��%^�j�ze�$N] !�5s��9��l�"%9�r$�F��R<e%�l5y/��R@βV#�A�x�֒\��P.��ڪ��7���i��i��䍜f� �W����=<Tz�eCy�P5B���pa6�1����bޯ ."@K�}\G(�A��d���rߠ���>�����l7��;e��ו:�+���^�.
�}�e��W�{��� 5�E�gP�!����/�}���Z��Za��N��
dZ#�:D+o�����(W�>d�P&�V���5���-sq��93� ���WG=�d@��%w�����_�7�T��I��TE�Z�Nӗ�X\��fP\%�����������e�F����jo��|]�a�Ǔpޫ=u*�Х�?(@����\�n?��87�6x@������w���ݶ˩"P��~?�~٨��q��]e5<�o�^���łx��s(�vwԢS�2�iw-�
�\O�!�O��ᡕ��	 $�/֑K��ʲKAB2��OP�\A�d��#�Ke:�\�AwK�6�9c��И�ŸU�$�G�}� $��p�Y �d�(�\_�P���;΁�{��>���N7����a�>�l��V�������@�iOP�dp��dK��B2<�f�����۱_ߨ��_@H�G ��$F2<���� #��ݕ��aî�P!n�~���OS�_4�	��mٳe@��]Iv���F����G�P�^�˷�@nQ�J�-2U/�.�n�L�$�LܺN�K'�r@���U>I���2Y@��j&�R�#��:I�dp���i@��[�@u+I#qw�O�%o@J�X�uzP�q�����a����	��|laH��J����q)ߡ��w�36���f�K����ŝu�U�n;S��<-�G�99����4���a���3���JMU�T���S[���D'Y$>j5t���ŀ0y�>{8؟�:��X@�O�����o���4z�!�q���3 ��?T?��7r%Y���\�]��鑇
�I�&�R|��L�ɓ��7����?m�Y����_��I�q��;)�Vq���/N�A������5:�x��Kc      9      x���Ko#K�繖>w�5�o璔"JQ�n�t�Dw7^sw�R��E�1��E��*�l:c�f�5L����0bQ_�?ɜcf�#��1�ɼ�7@����9�ǎY�`��v!Mݻ��u�?�#J�*I�Q�E�R�U)�zWrN�[����0t��������SRĤa�F�I1���܈��0�ѕB۔���(�C��I�h��#r&�(#{'�V�(�4`�H֪Y�zޕG�]���;��:�T�X�8�E���p*��< �.e[ߨ�荻Z�Ԋ�h��ȲF��@�gŖu"jU�5	Fc�e]�7k�a��	+��R5�vdv��_?�/�mZni_'ֵZ�a?�b���ð�Y7r]�`Y�E&� {��x���R��k��a]EÈԪ�Љ�iר��C'#2�ԽK] �ӎ3�j��N:.u1����N8ޖE�JoD�;+���ekg�9YN7��Z��1��n��b�
�o�����:}���?�)�!V�#����X#R�$<8�jI�N��k�|u�Gٴ(�a�>a�HVfYo9�G'_QnY�b�f�]U�P��� �cqRt+��x�.��K�����7Ԓv1$�0�,�������]����A���t�m{��t]�t+�+�N7>p�~�^_�AY�h)#��Q��|bE%}F���Q�.�q�PTȨcY��BB,*�n�5Ĩ�Q�F
���p63�S��$aԻՊ@v����Q�u�"O*{���N@E��`"(�F�@�8L�5��܉5%)8T�0�[��B�Fԝ����F��f<sw��VhY/�lr�,+����[ڰ(Ź�a[�	�k�a�8���P�P���r���������R���G����g觔�4���4��X����B��Ef}�"1�[TX�p.
��0���R?�3WbE��Bw�49#ሒ���b
��Y�e�f��w��F��Yja_���%��Y�y�3:�!V�fL�F�R���X�oD��+��	��i��E�P�0,���_�V���,��3e�zE+��+1��׳�x�,�Q|�e%O��T�ႁ�ܩ�䖤{
@��ˢ��޹��Hg��s'#e���$p�s'c�|�Iߠ��\H5��Z�����Ǚ4_���P�̉�)	��bYs��zY*�1��G3v�}���8eN>�s��b� N<ƍ*�n�����ȝ�p��c��|��I�[�0�x��kV�V�y�h�u�MW�f�C�9�x�f-o�(��9�˲T�4Ls�q-�/J����2�B�.A�	ȗ�MT�k#��{�o: 	��"2�,��D�w?�>�8�,��;��i�1�T�7.p	��\�_~�q$��ӯT`�4�"&(D��d�RhxJM�ta��d�`NDNT=/���D�+p1�̟�hS����C�O�AW��9��]��,����?�*��>لkV�O�/{��4�"���~��0�"�h�p0�"�J����i��R�0'#/��v��AFn�F�xNA4�"c�{>·��g4]��X$�|�S`����y��[�q*��ToZ|B�PDRt �e˺YB?^�iȱnVjց��hpNq)��7�kV���Ӑ�n�5;ךR�1�|C���=�bS��m�6�6��6�jS��J��˭��̖���ĝX.h4k�`��lYi��I��v)֥.�wj�V�ވj�)��fK�M٥�k�̟�6����,%�3�aI߭3a�\��u��[=E���r�G��#�W�vc���`NAl9(V@�d$�R��\7q
rљ�IW���G�99�ͳ�65 +HD�l)*9� \��0�(�q�l�5�%X؋j�>gXha���j��
ĵ���b��޲jØxo4����,��X�5���2{'U�NU���&����n�.�7v� �E��)�٭@V*�`���T��Y����"��)ȵP�����?^�����Ӑqg(!����Ӑ��Dke���.2_A2�!?��?�ʜ�\Ӕ5��;���4d,f�԰j˝�\s#��8�P��(s2Qb�y��#�@�hy�a�N��˕A�Dq�
(�a^A�2z�zǠ�G�z���@�	�䌤q�@�U�{1��*�'k�9yő�u89%�o�ߚ�R}Q��l�D�=D����W���+���?gNA^�s��G|jy+1+�`NAޫ�XX�q١]�`>�F�Z��9�T�����dG�9�Gҗz��w��~���*t�����tZ]O`�����'a?9�nc�ϐ/߰Rb���5�F��P���E��PǮ�ڪ�E��N�&�y�a��Mw(�.��P����wR!���O����=�Vpvp���+�*�P�@�Q�J�U��z ���: �X-�m��ՂY����X_w��^P<�M�CÐ�b,J���v���R=�*<Sʿ(�?QMK�,j�'VĬ�F��%G��Y?��h��@A��0땀!�Rf}X�jDbe�:_tu�H�|�̺�j�\`ǑX�F4��!G�0���.a4~}E�N���Ĳ�q�����,���jp���n\/T�Zt`?��n�u=>�V7(K.L��!&M�J,���"Ol��,a�+wk�oa��1D�!7��;�Y��J�1%��֔�v�Vk�Z�d�y��h����TKm�=�[�x��v1t�g�U�l��HxWӐ�L	6�X�� B�2eQK�nF��M�^�[[���4����D�zJ[�����B��u�D�T���Y�H=<+=R�2�Gi����>jI�%vFQp�zvG�2��p�sF!Ht0����o�IάI˝ێ��K`���uL;ٝ��U����u�KY��b�z�9���(J���C��CJf��F�f�k=S+���bK�l���Q4���A�� �s�5���4e7ERb�{���}*�2ϚQH0Ym5���œ0�vJ�_�q���؈���C:�a���u�j�2J�����	0�uS
���7�Z�m���F�Z��弣Eޡ��a��n��O�oY̬s����Z`���e��XI����V����14��T���en���]9��r�ё(n?բ~#�ՎcJ ��?�ֲ��ݣ�ؑ� ǑX�.98xCA0��N-�E��[J�\WJ�39���,���`#Yw��!וl��8hXja�iw#z/%?<�v-E�<O�$�27g����A	�;�-����,���Rø��`?�W<�)ș���Ü�|�Gx��p��(��9���b�9�,E+�lp�S�eM�9.i_O5�/�����F��Z�p��\̱[�������>��������Q�� K~�����
��s
�b���nK�O��w3ح�Xꅸm�M�	����W��)Ȑ�)z?��NAN��ۊ� j�,������ �k�0� ״O�_G�� ÂROp�F0� ok�8�)���g������p��U���2
x�N����6������6p0r|�K跥�(�[�x���!���+1����aSU�Y�O� �a�w��wȰ��"�<%��7Ud7��KO	6����,���J���)Ȱ�dp�WihKS����Q�䂆�%�G:$�����)�>z�"� ������5W�aNAN��{ΠaNA���!\�#� �n)	�֌"� �RN[.�"��)�|μ�(í�c�8���E�����w���`��Ƣ�+H�d<ؠ���ꋍB���%����c����Ü����X�B��u��bL���2.Tc��RPv6[��1	|�����Z���C�h�J���:H�dX�t����O0� ?��j���d��P�%^AT�A��"X��������$NA�\8F�S�7�ƚ�`>���)�٭�5�2� �Bv轊(u
2.��G��)ȮjlY��&��R� o+�ð��,5�~��)L�	�䜔��3��FY�[�����)�ŭ���*s
�/��a���u{X��c�)p�,�EW+~l�S�הW�v],�h���F�{�݃    7<�YH���|� ��Y��L�W5�v� �R�;�Q��m�-�� �NA���S��d.�.����X�?�?Q�!�}�)��������]�)ȱ�[�#{���݈=|�처��X��bĲ���� �n*>��*�b�?�e��A(���7�a�e1s>�d�S���S�
mY�s}��`p/����S��B����9���?�-$�;ü������Jsk<�)ȹ��q�O���%<���NAN�]4��]�������c�����OZ�-��a89���ς��L�����vYL]�i7G��l�-��[��8�'��3to�8�e-�0���`YL#�� �|2��R����a�6>�IE�����I��j*��G��9H��ݡ��s
2����~��bV����;i�۝��fm��Ü��w�7�פ�)���a��ӱ����`����@K�a�kR)͝�9�?��Aj��b�S�+�����q��A	oGG;)�C��I���(�u�� �EVb�`NA&|��>t�}M�yס��a����@�|M���GW��ԍn%<��NfY���J3G�<,����g�-�EC��a���Ew�e1,���n>�IC�2�,E��#�r���a�vm�gP�'�F%ة�VF���[�l$�;i��>F4�b��`d��}�a1î�;�f��0$�J���.8�M�@Pb��z%͝�s�+qt!�l��$VƬK�!��X9�ޑ=g�5F�ȵƲ�5?p��Z�^�?�<D�E��D>+`�Y��8:�S}���X!���v�m ��e��J��i�(<��U��\�'��oF�G@XV7�7ԽK]��r#AcHq� 98���_"N3;�e������i��}c6�0nو��`Y��&B��ѹ�. X`aԼS5��X-�%I�l�yX�\_��L%�p�`�����Bw�h�G��y�
cZ�W�.x��4�z���"Μ��"C���0'"�\b;��I?�}�q�?H^�3J^����jX��}��K�D�A��_�Ve	~�;Σ�K���+��w܂�|�@{>��{k
��#G��������ыz�M!j��J�Wto,���3�X6�QS��Q�0�cXna�|�7�v�%���l4�CG��`#���ŝ08�<���Rv�!�`��3ِ;V|p
G�E����u#���~F�bK�ҳg���,�0kԕ��@ ,u�Hq��w���I�4�)'s2���m5.3��ّ�~9�T5j4����Km�M�y��0'!Î{m�@�$�r�J`"�"?�$��Ž+�FC0� ��P�QÞ}��Ļ��z�r��:�r5Ҫ�q&X��{��Z��5�h�`
2Tس�vϕZSffز9�൅$pr,(J-��	�MQ&��7:NlOTn�
�ᵬ�٥���X���70.��[��X�D!�*�X���'�.ц�*�-� 73$VnY���p5y�o�=�Y!wS>x���� ���ưi����
�FQܱ��:%�Ս���-�����Ʃ�
p�euc�J�tk����Ƶ^ww�/�Ihu�)��(����M߿�����)Q�i/��б��{
�G,����YV7��f!���)"�Սs1[(pG$b%n���p,��9m*�U�Idu�u��<ވ�n�r#��eu�\�3��}?_�ˍIlu�7������n�u��Ǉ�Ս��)6�0b�xÈz�7`��7�����n��Ս�ܔb�]�Ĳ��H�:]̲��v��C̖���l��W�KJT��;?Dw/!V���Q�M�XV7Nhu-��4bYݸ����>�v��u�;.���p�gc��=�%.�h*�J��'>ޘ*~|�����h��a��<�[�����^�v5�d�X�[��c�YV7ވ�U�����+q��5!F,�o��9XV��iG�
xOI3F4��ٲ����T�s�����mW����!�|�n}���ko�;]L�Q��n�i�l!��OnĊ�o�sD�������������X��{�M+�euc����!��q*��8�G����J�F��'��G,���+�eu������翞��_�?=�;^&�T��{����=f9�Xt���҃�`�4b�Be�:kq��{�Y9�����bրY��n�Rt��<��l�vv��(�65?�]݂4�BB���Ċ��J4�ԜQ1OW���}@�J�5%�T�c��3	�X4F|o���2z)�v��F$�Ɖ�2��X4.�܈BB�|=L�,���YݡW�g�8�k]��ʴ>H<��~��p��d���F��
��o��'�}V��%�^�+��X�t�P�Y,��؋�H� �Ƶ\�R�X�Ӏe�Ԉ
��+�j�k��Y,��gt��X5.y��H���}�
;�j�)�J$҇
>]��Ƣ.�^ȚqI�TI�S�i0x��`�
Y4^*x�rF6*5>gH��>�E{a=J�бF�Kb��Ig<"V��#�W�=5���m���A�����+�_\Q�e�\q�޺"��2�j�v��<�\%��-ײU���7S�]�fj%J��NI����H�Z�8;Xbačh�(K�0���ޅ�k���VԐ�$Zfi_����I�4�Go�%�{	T��w"���z�vi�T}�Ԫ�w�rŨuI��sA<~8� �f�_ߐ�,�r(	Z�H�Q�`Vy�ӑ��uJ�5���	�{�]�k;N�86������5iƚF0�#ג�5L��a;�
�3��?������[��Е�891���%NC�rG��?�99W��,s22k�:l�������0;Z�k�aT����u��D�B�u�풰��D�L�_~V,��BZi`'9LS'"�*ܲԉ���0;g��Td,ֆ��^���~z�EN4'#��h�2��H��-,��L�UD���0'"m���aND��Ϡ���.k	��t�s5J.��I#\��ψ�%{%J0�"o�c'A
2�|:�Z�����G]�{o���f���W��'�mNE�6��$v�!�S����0�aNEN��4��R�n@�j�T�R.(��ƙ��3�H���8L���T��
P ,�ᇑi��bE���O-V�r�#�)�*d�����V�[�a��閲�u�T���J0�"�4�5�̩Ȩke	߯�ݩH�ɝ�\� �tx�7����b��CND�.��x���B�����3QaNc�$�l��is2��RFW`�}�
l��99�w{8�8	���d
{(x������;�^���$���3F���Y�Iȕ(�Z�c~�=hH�>����u�(�y'ќ�\ه��Z��}6#�����̟���e�	-���Q b���%����4x�ʂ�_l�|L��`c��D���,p22�+t.ci����?u+`����5�iuMԲ����6�e�ő0���h�� �eIrp���I��Ѥk]^��a��rt"�J� ���/��Π�z<,�3�?��Y�N�)9!EY�oBX!�ΌX�+��v	4�Ċ���wj����Y�{Ɠ`1��Ւ|^�7(�c%�z�h���+r�9��X�]a�ˣ�nJfǲ�1��}l-��H����V9.����N��S�3�>��#��-湑�g�ÿcEV8�t���O+أ]V8�#������K0�ou#�G#�k�j�@,+ﻥ����T�-,��q�WF��{�gF�>�|%�U��\P�A,R���lc$��U���L�M-�����3�B�t�u.?.����,�v)V��:�_]���yF�e�}f�S�����Y>�]q`Y�M������~6�Bf���sǪG�����Y��KSm�7_�.�kՀ�0$?�rp������.ܕ���R)=�D]�)�	b�e�<�7�B؆��A$��Bl����,~��`��f�N�����F��&W�ra-e�����7�ƛJ֍���w+|���vY�8Y��RHհ,���w!n�tN�@bY�x)�*��H���a�J�������,5T;��tcS.�5\�sk���v���    'v!��ei�}���aju��l�Qˊv�7��,�+~�Q�=%��q���{c���7�P�cY�8�E���Z�8[te�T��tC⃛�,뻘���r}/�XV7�F/Em��eV7�T��8
��3�碬t��x]�XV7&ʈ�U�eu㚵,�Ĳ�q�jq�����_fށ3b�n�Tm+溞C���i��1[ ��0��n�l�i
�|�щ�}��y�4J�B��XV7�]�,v1��ƥ2��r��z%J�F婋�"����A,�cݕk5��V7N����X�|C�%t󲬁Ս�A�ǽ����9�nLD�\(�iĊ\�V��υ��o�n"Z�0˟�.D��A���}v�5��qM�^g�����n�S��bYV7���V8�~��l�%�[@�wy
��%z����碂+nz���*��n��XT����SĊ�����0�[ݘP0_�㍼����o�sQ����XV7.4����n��+�螁y`uc��_�(�X�S�B�W�3�e�����t����RlH�z�F~���3�b3��F;�����¾�բaLK-�Z/7�x�,�O��`Yna�����
$�`��Q�þ�Ռ��a`a�(Ko�: �`��l��}�9	yMf-�-�AB'!�6_;�xӜ���˥P��߂ms2VX��0�!g4��҉�O����6�iq�_jQ��2�]m�e�͚a^Dt�X	�D��=̙���Sư�[V����1J}d@�xU�Iȏ<�>�㷴�)7H�4V��)��nr�0|������K|�a��6�-Z�����Bp�aKZ4��3N}B�j�Z1,�sF!�>���6��NA^ߊ��I��2�(2�)ȩ����$�I|#����9	�J���!I|��ചaNBN�72,��ߩ��G�\1�I�ڦ������k�
{�t��}f�E�Z=�~�#V��y���nn�l�c����[����"fMD��l!oqo+f֥Q�L�^�����;�f˩4-��m����M'�rE1+�~�ע7�i؍x�ʙ52�U͢w�ˮ�b�Ĳ�q��b�A�*'V��k��������V.�s^&��m�ŭl�޵44����9����.�o�v1 XdaW��M$z�e���-�iuW�a��Md]�4,u0ݵ�ޙ6����`�enEӈ>g����q��X@a��7���G$,�[ب��ˌa�[�,'�|�p.I���uF�9��6�`NA��Z�6�NA^���Y�h�
�g��
>g��e�`�B�S�He�Xh�a>�к>[�rͅ��%x>�E�a�C僐Y�SU��z�Y��ō�t�yʊ-�ku�+�5�+�ꦥ�����p�\��<�'��0k�6˅l�јb����{��R�Up{VӖ�I#Vf}~-+�g��z]q�+��������<s ��ou㴃w]aV��s#K}�'n�8#��n\����b��*e�2�/χ%�Ս3�$=eq�i���]rW/>����{3�ZG��\H���8��0�:"�y�=�6�n�}���%Xة(�d\��G|Oa��MD-Ĝ6�9���"���<��-�\��3$9�%*w!X�QA�t�Cu���aP��=F�as
2�-�A��Ȱ�_Ը��`�NAh�
z8F0� �@'3�)ȵ�I>�6�E~6 q0V��!9+���{i$-��`?��v���^�?6��a{��	�-��V|����B����`;]+klr8��6^u?)7�
qX�.nz>�B�E�`Xt$|)E����-�Xlac.���\y�؃Z����R;�P_p�2;��ߣ��������
�,m��~�h����[A!�
9o<�0�Hr��9��Wݣd�"U`=� �""����������j:�dܱϾ�̉��L���C�A�D�����]��;y�j�BQF����Ҫ��Z|T%�˴��w~�ejZ��g8�a���6S�<����F��y�%~�>�3��9�)u�y�~���&מ�eU��S�7҈��	�:� ��1�D&9�S�&-��B/�*c�Fv�Mu5��[�d�o�B�=�$s�O�'j���J܊�au�,l�ًD�ayt&�|h��a|)̭���_l`a��+܉�ƝN�e�E%
��cJ>)���.��i-콒��^@��p��o`�σ�-l"J��/���`ö+١a����P+q4�`�F��07|��6ҥZ.D�#l`ag�tu���<��{�F����NA�v��~HÜ���!\-D��Z�EMK��u!@�c�K���ϰ��_��]�`�FUoĴ+qˌaٷr��)ȟ��2_.t��;��d�7С���O���������۟l$ڥ��U���`�l�,�E����<NE�#,vè��Rb���X���,��:d=�R{���,���E����{��,���P�ym���.d)��t�>wBM�E�_�A���^�5_ܓȻ�L-��b����Y�d-�)_��bK�H��--�N����罗��+a�Ŵ�͛lZ���oi������\��l,@���-�J��>���G]lߵ,%b�81�Ц؃m��7�ʏ��ę�4�������׿Xo?5�Of!KH�#n�'����b�M��\�yKv!曥��]�T%Xʰ��l��T�)� ܟ��2��ȩ�3�ð�M���R6�b�ِ_�.�o`�m�����f��t���o�ӕ�o���`�F4���ͬ�~�e���s��maVJ�5wO����Y%yO))�`VI^ɵD�f��t��/�2i�=�h�I��&zet��iVJ�Юvwd��#�y�^>7�iVH^�R,��ENG��T����mE2y4�$cϋg��ܣ� :��D!��D~�A<S�xn�4�#']-��x�ۚƕ�2.�M�@��@	�Jr��=<$q��{I5-*d��Y%��~��K�-�*	�7w+��\����*�HQ��f��LΚ������%�S��@sJ�M�>r��W�W����g���}�%9N�0�.��۲�#��^�$Z�t��iVJ^��b��G#��`�iVJF]!V�B�X%�.J1	�eaVI�E+��OX�b�U�3��.}�Y)��r��}+��q���Z�V����ɴ��&���of(��]K��h�e�ƭX�;�����KU�/4m`i�rD�-��Y�6ֵ�/���L�H�z�Qÿs����I]k;Zdio?~� ����T����LsZ����9-���LW4�d�Ӓ3U���#��{A	�c�Ӓ��?�Ŵ�iɏj�,�-���]	wIK�*׵�-�^���֚bLsZ򣠁�2Ӓ�z[ʺ�jӜ����hNK�R�cugNK~���7SKsZr�*ipM�w���W�AK����Dh���;��5m��E��ɍ,?�� +&֋���	fV�X�� ��zVJ����`���B�xVN�!mi���k���?��v�A�`ǋRb]ñb]+�`���-+dV)+p��e�p���gx7t��r������=����c�TKp��b��
��,֎�e���������F�ƂEY���,����v9s	>�XM4�M���74f��(�O�Վ��l��1��cX�tXk�p�u�D~�>o��ĺG]�vP�λ���Vԭ�q	��� ��T��-d�Ϙ��1�؃*�X1wi���+�(���b�w��\�!���|M�������B��f{��`>��A��g-#�6��+I;� �g�J�TQ,𶻣��b�+��2��[��FV�*����Gv�0�[F��F�n�|!�:�e�b�x�U=�{݉�12�JG'KtJ�,V�s2�l��al�P�9�M%b�n�uÝ�j	,�`��d��E��tc����C ڨCw��pa�]&���1,�J�"�lo��`ԙ9���X�� �����]5;�%�9��/�Y�m���D��������K� *��4:Jݼ麕kY �L�,��$1�>�´���E�J��O,�Lm(F-�0���D������z�    ���;f9�ӒW�l���i�n$KQ��'L��O6=��
���NK��Ƈ��K��I��?�919U��n��K���D����6�4�8|Ԛ819�~��hmqNM��1b��%Ӝ�\�5�,Gsjr�K��Lsj2�{xp�h��wډZ̸e?��R�]v�R��Y.��������ܕ���g�B��{EY(X��{؀a����vVA���f;��f�ڃ�hӆ����\(�����h��5�9)�"#�T��J��aײ�v����xK,�_�D�<�����].T�V��e��n���#�$���a��k���,�?��
F2,x�]/40gX� ;���q��,z<gd?+�qrp�0���-(K�� &X�`ٰ.���2쑂��l!`e#���Z����O�-��aE��d�6���nf���^O�����oic�Q` �7�eo,�
{�7�CK�4���䑳m��C�{�ǖ�J#*�a?�I=�->3�ӝ��Ħ?�iَ��+���`�4�%?��x�`g�q����O�܀_��4�%�b� �e�ќ��,h���G��Ӓ�BLoя��iɕ؀v��4�%�N���~�U�bw�e��7L��q���|!��S��l�����.h7=:%Д�p^�t�+5{�w���VÃ�-8�;X`a?�LC�å^j�a!���Tl��IxXİ����;��D���� l���"rI]�f"���D��y��F����Y<7�a��ߏ'�8�e�{/�b.�n����a��Y!9�\��fZ�w�5�<:�m�c2�	IG��W��
	x��â{=>��u��}K�W�}LZr�3W�����zLK-m�-UQcqL˜m�����rg�^�}����NU�_M°�lS�B��L�m�߂,CK���;u��a�0r4�75��0��~��b��ysZrL�6��iNK����Sт�2O3��Õ+tZ2�ʖ�+�]`�w�p���{U˦��;�b���0o�Խs��,-�٦(�C�[䵤3j.t��%l,�}3o��v�x���'4�%'bM���𳀨M�iNK^p�
��x��4�%'�&�l{\Z�o�L˽���/�[�Ӓkq���_����m+I�4Z`Z�m3���H;��Z�Z�LsZ�{Qb�2���u�g��x�Ӓ��U�W��0vZ��c���1-�+���_�DVB�q~�%��W��4�%�O�FE��r��>��i	���j(f���Ӓc9��ޝ�⒵­�Z�m�[C!z$��%��*`�	�v9�l�,a�F1L�Z���&�,E��;HD�Ӝ���R�� LsZ�S��zKKwq�`�,-���
�xӜ��8�O_�_��j�5��zcU�����1�iɹ轫�.:Z�hu##.GK��A��4��yR�@�Gx�a���I��R�%�y׈;qD˜���{��|�]�Z�M�L��ߎ$�S��Ӓz�-�=mޡ��3��8|Tt?w���i���ڳH���d�,�P7fNK�ǒOh�o|���^KV$��H!�g����HүaQ���s�V����$�ZR�
����dXN��--�뭡�o��VG{B�\����>���?�y-���&�����}��S�6��\��T�N�6��%����p<���;�a/�Bo[��{Ӝ��ekto,j�-|��O��m�i�h	��
Ӝ�\�9?�lĴ�	yĴ�~�!Oyw4�%�ʖP�K��A�wZr?a��h��v^2�wX��NK��:�E��o���iNK.:��u���M1�%+`����G���)`k �9-�����8Q���85��H�iNKF��w��D�~$�GT�L��V���i��D�����3-��]̅��ϴ������%��J����h�����kD)+h����^�vM�?\�5z$�0��!����J����f��	�LR��荌�
Pm�#��Z=,d؈���esĵA��9���g�=��1,f؅��_�a�u��I�(���2�GQ��F��aú������[Fއ^gVA��b���6n�����c����0��φ�qb\hqǺ�Gר�V�2nVb{Fy\lq����'n��r�>��2|N�m��r���9�����m�"[��?��o�0�G�n��w�+a };��[�{�y�l	�hK��8پ���$�-x�sr#����[	l�Ǹ�	�(�S��T����5->�� ��8�(e����W��pSW�W���_�@yZbi'���e2-��a)�%��J�=]�6f��Zni#��:k�6��3U�+��+�{��h�ӕh��JT����U�Xڏ4�����Ѝ���a��E�v-A�,-��65��4�%��V���#�Ӓ7¬U���9-yE*������i�i'��~<М���U+�ޤ�lz���o-uZ�E7�q4�%o�_�t4�%ǢT����L��U�姨���k	*�N�R����Q��L�m7[�_�R�%cUײ�iNK�.K�mB�0KsZr)�ٔk�J��}r,Q3`��2�%C�<��e���LsZ�o���GÙz��-����iNK����3�%�K�iI���.a�v��i�=�ȴ��4��Z���e�l���Q��#n3-�"RMmzo���P6�\d�|��4b��ٶ�C��k�Qw�g$�iɱ�g֪�cӜ��,�A�I�4�%����ޱ.�j��ˎi�_oŭ� ��ќ�� ��2�t&wZ�.�F����G��t�@�`0�iɏͭ�,GsZ����i�E
���,�
L���>.�>9�e�ysZim�PL��䲓�ս+d�̴��8�	�sBL�� ��	�����'m�h�..A>Ͼ����?1�ܴ�H"Ӝ��'%�/���p�=`*�3�iɹ�T�O��;{]û83�i�k}���q��%�X�/��}�%W]�?0��%�YP\�b��}Ғ ?�k�%Z�w4U����K;s��D����|��h��M������B��Ŗ6�����]��.��A�l�F�A�9�2K� �;5��f-��KYM�i�����EwZR��g
q<����hNK��-|�1�i�U��o�L��r�����Ӓ�-M�hNK.nt5����C�%�RA��h��M[����C�%�.�0�E}��Q<)���\�b+�h�_��n�-��ލn��h����x�Ӓ��	�Ҝ���f�=sE)`�LsZ24]�؃m���P�M�^�^�d���ѕ��Mk�T��G8�����]�'b��������Su�Ϧ��޲ޙ0�~Č���0'�a��m�BWiZXb-�]t�w����a�ۿQ7ۿ�kٻ_r\v����{��q��2�?&VC.���E�!/Um���f5)��aVC���Q;��}�Xy���2Ioi��C����m*I�l�'M�ܕ�c��S��%�
�3�rK{t5v	�i�ol{1[p#H������>�]ɂ�r̭����>���-����;�>g70���Ў�J�%��0Ӣ�F�R�W��[ک�kI�?��LK��R���~yf�������4���VK�+�I����4�%�zmg��j�ynZ�������LӾ���u��$̾��)�Uq=��emDxr�a1þ��[�s�,,��]� �j���a�* �`|4�n�f]ʩ&'<�vc�;��-��B ����~�7������\	��K�=���E2�Xި$Q��>Oh���_JoZY�F�i�K#�FC��b��l�PHS�=s��-��k-��Y\jqgF�z*�k<�v����W�$�L����(NRޭV7� ��)ʩ�J�=-x�8#z��`�e�S�W�܋uуu�nqNQ�l�P/�Xq6t����z�\����k��=7���d'=�,�z����qW��Z�R=�q��}��]��B7��7��R�' �0H��+��DW
��	�y%�X|��TK�X2.t�"j���W_��AZȼ��^P֚/U�}�'�q�wLʆ���2��Y��X�pY��n�J���Z؛�e����\H��a�c��~g�x��xL<^��y������'�Z:�Ӕ7�k��8���+Q�U��~Z*܀2�)ʵ,�~b    ��FEI{}6�FT+]�2�EEI�����.:�
��\��t����)=uNQ����y�S�����{W_��Э.���N���v��6�Z�K �y>P�n�`��D��t�rgh�?�0��GmvLKv�X�=�iʘ�����e~,o�6���qNSξ�U!��8\��t���]��&���'Q�#�F�a,�]�S��T�cZ�}�#2�iʕ�-Wy�G�a�(�60☖�Ԡ�U��֙�#�[�=��(Ŭ�ms�]�K����-vz��c���2vzrV
��t�3��ɻVb3qO��h��㇑���ɓ�b/'�H��2�O�?�~���L6d�O�,p,���:
vOv9�*�v�{I��h,�I�m����_8IA��ӔsqW��"IR���67W�Sn���=S������h8$NU��r/yO���5kQBm�4'+�e���3Ӝ��ɲB;��9Q� �h��ƻ�`)����4y�R���҃�$���^��.d�P��n��Y�D���� �L�-�RSf�Ma�<�,��ې����%��Zۊ�0+1[*��1-����ش�h:O���v�o��a}�i��}��o՗�n���m�h2/v�uӮ��.9�%;?�)pN�iNMl�
�c�S�S#EK�r�m�lޜ��s�2,�Ҝ�|����Vf�NPhi�5^��`�Je9׸�Ca�~�9�U���K��o�9Zli#����z��i�����;����vMV��ƴ��&���
�U�Ǵ��_� ��6�����ي���T��d4�X�{Q
l�zG�Z�Z��N�e�u]Kc�s�sO$Ӝ���ފs��	-�#�a�x�Ӓnk6�iNK&���s��	-���Ǐ�58��C~��L�Z����Q}�K�NL�|�f��7�>��}'&��-��K+a}�=Ωɩ�t�G�E�G8''��0\�Ӿ���.uK�������伛��m��4~�<;���OYZni�����R���4�n�4��%�D1��+0)�Z�J~1	���ҎE�B����E�6f��w"L�D�h�z�~���K;-��cZ�hr�z��	-�>�w?w���6|�4�y�S{��NK�S����Ww�d��t�z�j&a91Ӝ�����&LsZr�����9-	SʶGú #����w�dZ��������i�p�ẕ=�9-Q�сOh���m(r�Ш�i>.��ÿ�F^K�Ҿ�����D6�֝ߙ)˴pG��{ߦ��KH%|\�~u�cl�g�y-�-fiNK.�h���F;-�����4�%J觜�6�y)��)��I3��#vZr���0��4��ݨR���)Ӝ�\	�H�K`i��J�������h'>��{�`iNK�� �#yg�V)tt�9-n%߀_Kc�%Zl�wl���%�����?����$�#I�>�Jv�%eK�ï��[�D���13Mb�%%w�Ӓ��'=�����޶��W��f�Ӓ��Ӝ�\
�( ?r�Я7F?���9-y/�T�k�>zK�W:ק�ג�Qs|���'[~����B)���ʎ��9v'`Z�G����|\­��0��_ob�~+�i���$\L��佲��{-�Ǽe}oFa	�%p��O�'����>Xf�ӒcN=��%��\�>���D7{�7�%����hNK^¿,:�����z�d6��f�pb���	�!0K��%�l��= �Wڙ4��G�Zbd�����,C/�%~�%�8�i�I�b�t8Z��=���NK^Օ�����CzG���|�b��(�a�}���]>ô��(�r�J3��S�v���%G)�ق*h�aZ�˼�
y��i��)�<��%��S�w�'��d���0r_���dޡK����'y���"$�<��Ӓ�z��miNK܇��+]�9J/���B���q���IWK|���c���F�+��ӒSm�|d}�%#%��?%���m���~tL������"+�W*K��j?�v0��K_���X��<Ai��8h�%-0��91ykTӢb�G4'&���p2�4'&����op�/}}�p.��91��4�~G�|yho��X�dkIx0�*.�ka��6��|ٕ�{2D���!��S%:��]X n1-�#Y�[٨�D��U ���)�-��R�̖���b����-}��Fd��i���E�-���3[�zO�6G�,퍸8���߭7Uu�gt�����u�X
�G?�E�i	�1���L�h}w�R�[�L�FK�{@�g�S�Ӓ��f��9-9ժ���ؙ洄R*MYb��(�~��	Ӝ�\p���ކYrLx������,�?����B�M\�P�����}�ʰ�dZ��*��̗䖲T��w�9-�$�����ߎ$l`ڣ��YZ�� l����\��瞖|�%�՝8-9y��I�7Ш�i�%A|p�вV��^7��
sG�i����r*M�Ŗv��:�(O#-�C~C�ҦYnzgF���RK���9�&E����)��Y�y��Eoص�֕� �i���?�7OhK��}��6��+ݴz�GK��W��-h��EM��B��6sQ�v�4�i��͈��A� ���y�HaZ��6~&�D\�aZ�mԙ� T2�iɸ�׏i��;uZBqI7���x!ˍ�*�yLsZ����'QQ�x0�eNK&b��{τ���dh�V�eI��1-�n����l y�"?oFS��.��´�dXl��1-��v�M���oVJ��jô�{��bID�̓�4�%g��/o�9-yG�U�5��4�%�nQoz�@�h�Ӓ!�Rx���tK�Rv����z-�b��qɵ�< ]L��P�Iz��}��,ѡ��9-y�����k�DT��`���o�Ӓa�޾��9Ӝ��(`��L���k�W�Ď� ��fM��K��M�����ʨދu1�iɥ4p�iNK�5>XfZ�˄�v��ɢ�9-y�K=/�Bɴ�!2���Ӽ���*<�ϻb)�P�����\�j�?�����7U��K�J�LA�ۙ��Yv-0��ќ��/E�*����d��������9Ι(��q:����q^��Y�g?b�גJ�~���y����|0m��w��.o��ݙ�n�T�	F8-9W+��c�<�g���!2σ��Io!4�˃�GxS��@�D�$(`�cZ�;��-d����iɄrӢ�Q��4�%�]	��iɹ�U=7���iNK�d%8]$Z��nkSh@/]��GW� ���yI�F+[Z�8R�����
˽W"iNKF���W�<tZ�tr�%�4Ӝ�\m��Ӣ��>3��w�H:-��t����}̵��/;Z����"���ݴFWP ӢG�0���i��U��${��9-yWT�i��̴twBO�-�QPt�g�-��,�>�B��~��[�YX�gصP�\�_���a�0z.�.eU���<v%o��{/�#k%�W�N�M��x�6�ܖ����`�,,eرX��|d��̰�ai�p{*���\�iQ�:S�h��%����Uۿ����˺5�D{cbdw�
r����ì��{YԉU�s��"�
r&
��,����/M;�E�����&����0m�iF�
��.r��g��g�E��V�}0KM,�B�,m,J��Ǵ�Ү����j��cZ���G:Z�V�,i�4��9-��hg�l��<uZrƶ�.�=�<�؇reNK.�\��_MU	2�iNK�:Zp��Z�1�i���:��Eal;�-t-��3�.)6W���8Ǵ��Z1���8צ��yLK�����m�����Z�m�w��B���1-��_e��Ǵ��M�z���-�EAF"Y��y���M�Ǵp�%d�=o\�J�=y	��G2��a������G���޶���z�YZfiۿ\o��.r����K��O޺���aN,�*�BW�]o��O��n�Q<Ym���+��q�+���.�1�NQޭ���=�)�)����"�iNQ���h;E���fi���"h��?����E��¹��4�(������kHG���n�l�XM%��X�+XO���P.�96�bZ��    ���i������k`�O,m�=�����J�w Y�-{�[��L˝m�|�[����;��mд��i�Xba�Xڸ�-(���Z�=P��� �����qY���X�V KJ<��J�㢒�ø���q�� ����vμ��a��(8�R�W��QK��K��ϰ��E�;�F�>�0,`ذ��'�-dکV�O�T��f�Ԉ�f�нI�p����� K6�f�V�,a�]�N�K�a�.��_���o�0�4�FQM����AhEdX���#�"+"�Jt�_�,G���E�Ҭ��E�[󓷨�Ͱ�[��0+"ÙA?caVD�t]l�O�kփȪȄ?���aX�p���M��b����"�"�r��4+#'�i�"�|)	��[yѬ��Z���"ӂ�7l�]!iolU�Z�?��d�Y��/^���xǻM�F{$�(��.Ub.�F�|�o���pGWㆠ������F�M��N�i˝e�X+h0l��j��#wsN��%�Ȱ�a��(�zXȰ���kp#�";g��[P�3�Z�;{�
r�[�كe�AH{豾���'����l�{x�� �-�6�n�I���m`icŻ5<YK��v���K�r��Z`��:�$��b<�"K��;8u$��bK� xb�_�%�vm�UB#-Ksj��ӑԩ�i��d��㜚�R�����3E��?�����|����ԄI�뽃̩���ӌwT8�ˉ�{�N��dX����V�;��A���D����R�u�'���䢣��G�)�]� sr2�~6
��Y�ӓ1��|~��-�w�	�*`���I�?�b�8	o��n����f���;�^�v|4tI��L��MJ�^������\�2Qޡ��=��H��b���&�LC~�h�R�]o�A�=,cع�݋����z�hW�<���V��I�Ƶ�D{)̽m'r-K��d�>+�i����a�v��͛�`���,7�"K-��[�����,-��]��'SK;睊���1-��JK7�c�Ӓ7�K�u�9-���a��d"�0KsZr&Lͯ�A��hNKN�+�\!�8Ӝ���	�o�Ӓ��W<uLsZ2�M;qLsZ2��Ɛu��7Jm���V-����rG�	��*��{`i?r��
G�4�j�?�����ɲw�w���i���G@/~�D�11%�BK;K� G���HK�-m)�G2��]<�����F��R�ޤ�"�Zv@����m�c.R����w�O��3��p6`��B6�(u��
e��>Æf&
���򣜵�,�a�^�F��Sfa�s�ƹ<�Aa/��F�_�-,f9�Z��9Kvɰ;<,eع���A2��s��y�0� �b��e}f�R�%v-,��k�X�da��#ì���$�f��J���@�*ș*�`g�0� g��3z䚶0� ���k�/�
qd�rA;�nU4�aVA��ogfd8[��U��aQ�y���m$�c� �-�P�%�l�a��F��u-h(���8l[5�Mì�L�1��f�Q �fd([ک��p�gZ�%�0� ��|찣haNA|:���00� #-u��c� g��a��#����aD�h����ظ�d�U�#�=�rI�vj�����qͨ`����(�sщW�Ҽ�����'��ZژϧK�A�#�2K��;:b?�ZZ�m��b-s���/���4��J�+�$�D�`q�V�M��������H�$g�g�_���۷���#3"3>2*<*s�n�nnnn�fQ�!�@f�O��YM���Y��K7�s�,�_���U5���J�����f5�O���"��"�ϴ[�qZ�f���'Z��c1�&Dv��iå\
�$r�]m�%S�U-^+�(��;-�� UͰ7ٖ��J,�*O��YܭuaU��>��R×�(�Տ(��������y�;_�s#
h�]��7s�$xZ��W�2�k�2�=��yG�����Fe���ى��$gZ´a�釥�`��N,.eܥ45�ݰ�eL;��z.�m",-uzB5���K���*��>��c�ӓW�YUS���NO�Q���iNO.�����:Ai�ن���U=W?�V
�(�p��NZ�.�,Gsz���o���k�[�S�[9W&�egq����_�jn���$��NU�U#J��eNS>�c݈j�1��D�\WhMa��c]�[�-�,E�W��9Qyg�.�<���sY�%,s�rnWܼF"]�e��ꘈ��������d�2�y���-ueCQ��.�h�ft�͎yNR�������~ʧ�������4���STv������Gt$´.��xq �ӔSed��iNR��~�A8�i�W�y&��4�(W�:}���$�L���A�:\���!{�S�۶�B����e��hW�����ڠ��iI�^N�!��	ʕ|<�F�e�6[W}��׈每R*�����V���Ŵ�E�Z���wr�叿�7�c�ӓ��??��b������g%�F"_u���������k ��~������pNRn��<+��iY�:+p�ô`��-�~:Ӽ�	_�k̷�9E�kz
��?ԀY�v�]H�iNO��լ-s�b�;D��w��P�$Zw��|�[KK7'�� �A���ha�R?����F=��[���x��S�tFYʩ�{�4'&o�Տ��hs�1Y�3~pq�3�� �c�tgC�~0ڵ$�ӓ�f"���­Ý�Ϣ���-�j�&I�B����4�i�T{�Z�gls��N��+PZZ��K�Kx�:�^��*��=n���E��i�����p1��+~��C����&f��2m�5�0*�n*k��0����	�0����@�9=y-���ќ�\X3�r�4''#z�_���
UA�hNNƲY�a�n�dq�F��_�h�v�9 -�V�� ���d��b��u�g�˯yoG�-��{ɀ`�[b!Q���g����'�[����6�
dU�,\Oc���i,�a���Ⱦ�#���
�t�O7��XA���WX� X�
r�V�|m�������XA�j+8�`� ��z.4\�RV�+E�(�g�B��ߩ��Y;�3�`��FUZ���`� �b*��xx�"u0V�3�^����2V�%t�+�����*i��Ըր�`� _(���0V�u��;�[� �`� gBB����gy W.c9�Eu0V�[�S�`g�`� c5-Zx��?���yW_d��60��M0�m1��F���^W	O�v�۪�_ȉ��/�}���ӋhQN���L���-f��@^���spS&GK�LJeZx>�?�:�7��{���D4JB?Ѩ��{S��z}P�5�D�6n�g���0�B�!E�X��
屡z����L� �Z��U�2]-�ֈ�;m�M2-fڈ�6��cu����DK����N�98���Q��q[��[(-{1�ײ�f�Y��i��J4!�C��r��V��,��Ҝ��NKNK��fq��毭��61�bE �Ӓ��菖�)܊;�iɵ�м�5�iɺvֱ�IR�B!
u��Ӓ�T�]��i�f9U�VM�%/כ���ƹ$Z����]�����}n�ߖ�d1-pZr��ܼU�}���@sZb�)�FvL"�Ӓ[Y�fJr���9"D%�ӒcK����z ~DsZ2Ҧz;&D�>c��ٳ�@4�%��B�bB4�%Ǣ��ϰ�~�v{w[K��6�d,d���v����J>5V��d"�N�����U��j�����	���MZ����>͒hNK.ec�.U#^0m��7��hNK�}۲_М�\��&m�!���洄�Y�G�:�j��i�А��E��iɍ����qO�B4�%גNg�p�*�k��J���%6Z�H�������-�<�i�c���fgri�����Z!$�!�Ӓ�RL��T�'e?��0Or�R��i�y���={t�DvV@�ř,��i���R�H�CsZ�u�odug�J-�֝���	:��h�y�T7؆����U5CØ��%�.Wo�Da--����wʏ;-�����D�z!M-��iɅz�P1�i�؎�I£��iɱ��,A��-�    ����L�hEsZ�Z�seЏ|�8�Ng�i}����jT]�v�K�Z�}��L�5��|KK:�D/��M���8#�����_G�������$Z��H(��+ʉn N���%��|CsZ���LRȁ�z�o�:.4�. �Y��q��.+hpJ���8���iq�/+f���/����ft�*�����ό�B>Y���a,Ѽc�"q��1��/Ѻ��.-�h�٫�;�BWȘ�h���!*k���#�v�F}A�����8�T���vi�6�Q�4���hNK^K
W̝2#hNKn�B�
[q�Ҳ�=Β���Rr.��;��B���y�F��G�}BI4'�W9���W����ܺ���D_�`�U�ZDsZrZ�������w.�,GsZB-�$��r��$�g�m����`D�vv�T��NK����C�;F�hNKN�����'O����w�1A]��҂�;B�AD;�|!�W�oMsZr�f�|2�[O����%���0��G��K�|:�9�Ӓa5k񧡁��M�(ʹ\"� �9-9f�W��H�����'��Ţ��~�hNK>����;Z��͖eɮ�q�D��N�1b"0'N�������AC���/1��ݹ�g�-����a㫽���sg�72�s6��uy�����Ē�����Y�i�����ω��	ۈ;�z�G��NXW|���9-9�f�%��.��l���/�:-i�swv��߂.�;-?i���D�b����w��^?(c�s�����[��N��֝�@_=li�{�s&������K*�,���nr�>D�^���=�n@w�D�9/��Y	��דvqg��]�(m��P�hi�����KZ{��Ҳ�`�.�	�������X�ܳd�i�=G]߼��]�1����W��-�rCoAg�D��q�T�����:-�c��o�:ۄ�:�D��(���] i�_RS��.��U��Ik�@�mc�wR�V��9�Þv�iɩh�R���4��^��|Ob�&J�������N�'Q��|?�ş�3���i����to��0�i�;a#�%�Bf�i��RU�C<K��^G��ހ��̃.�uD��t~'�/c� ��os�N�j"��0SJ4�%��iy�3�.�uTt>�����Aќ����7����x��Ѻw�Z���4�h�O��h�C�}����%��>UK>�X���|��t��m�g�D�d�>w�I4�%#z��T�6�D�o���A��z�!��S@lpD�v<<l�(�v�K�{@��zc]I|�Ӡ�{�fiBOz��ד6�GcZ��z%�(ǰ�����n,}шֽ�i�К�~�S�;B޵y�F�;ϐhA��ٿ_(;P���^]�:�<��^�wT(Қ��|�%�>CK�S����B
���3QB��ִ�/i�[R�_6]��m���P���8�*Z�����{=6|�bq�{��K�`QK\J{GsZr���2m��&��%������e-$J|�i��z�W+%���K^U�V2�9-yW�؋��]��6|�f�彾Vw��v�^]�?`�vy�?���8oz�ZW�Q�e��{�(T.����s���Vžk!�]��H������\���Ρ���iɵ\L��#/Ę�Ss �j+��^Ǎ�TT ���۾�|�jn�Z�D�\��ы��D�S�}����i�/+ש�1ȓ��1�#Z��*Jt�W��/bSd^ѺzA/	�wa��j��;����/�&jMh$Z��:4(/�%m]��T��Da��z&�ğb���r�n��^��?Ǆh]~�PUWV4�h�_"%�L���X�L!���%�J022u���%��:'�����LsZ�����_�sZ��z�V3QU�s�u^���<B$Z��՝���f��]��mЏ[��g2���h��/��oj�v�q��3�`�h/sծ������~�����i�yɺ*�&��%�̥�Vi��.�u,����\�{��h��q�n��-�Yo��a���h�2
/h��{���cQA����"�e��u�%���Һw­1�[�p]�U�S��F�|��i��h�v�ˌƑ0���cK�y���E4��a#���Dn$&�hNK�Un�9O�g�^_�}�{-�}��m�%f��bx\ol��E��ZH�!�ƽ[Qs�7�2�]	k�T(�FK�טV����aL����(�i>ӆU��ɴ�i���?�ag%�Z-�31����0KC-f�خ �inxDK��V=?�y�nNK�_���3�d��h�Ӓsk�sQ>�yݠ"�y/U<6�%~h=s%p'�[Z��c�,���.-d�[i��v�"�]��F
�*�h1�n�Jग�^il�BO$�R����ߕ3��WK�	�Cy�Q�+�m���|8J|%3�Э$׾�91�����0�919��V}?��m�Jp�d�91[Z�����\(�aj͉��6.=͉ɱ��C;:lc�0��D�����+XZ6�d����H��i�~�-�4���&�*���+sZ2�Tr��hNK�W��㢞$��	���B ����V�C�HL���-S櫥]
��@op��jiץh�h�Ŏ-��WK�GAuY��bD���v�>R�h~��ިh�y�`�A��i׺����2�+� ��EL;׵$iI�{/�c�6�܂h	�ƅxTKQ) �h)�΄�Ku��2�9giހi����GUMa�ؑ���ֽ�1T��L;)�(�FI��i��	t0-�fRWXo^Ĵ/���P�B4�%�<G�iNKN��h���\��C|�l�\�U`i�ӒS76�t�i���̤�oU��;6�%B,16�%7x�bZ�c%X�$���^��u~	T!��t��M}�%���%�RbNK.E����ଘDq����i�N{����v*KX��]Z�4����-b�	�z�k�(���~l	�.Ԃj�8[Z��F�^����h��I�+U͠O�,-0�u��k�u(C�i�K�������k	�����d,�w��i�k�x|���v��ˀኝE�Ӓc]	l�DGKzQx��0%�pV�>�$��2�]�YKCۤOb`р�͏��=�n�#إ�1Î�`��-eu4�t��0MQ�֢���&2��G���腘A;r2,�6Q�=�~�a,"Ǣ>����� X�`w���.�"֐�������m���o.������ٙHȏ`ޮ<����f�ᯊb֐�E�N�eKȉ�fV�J�b��ϗF��dl@�$�ȉ���UM��A`�ζfݟ�ĕH���������独��h������u�6:��L�{���a����XGNW��8:�W��D�$��r4֑�Ă�et;7	c醅u���2r��g�I��� ���{��ec�������a��a>��`�)����_�B�]�����h�6���	���1�>`qK6�� ��g����[x�(���8�\q[=��ZX6 �K�Q��O�`�ַ]H�|�]p�`���uǏ��c�Y�˨�Ͳ�k#��iQ&�,"إuS9G�#XL���K�`d	�^��E�����~�i�.���x0 ����Y}�k�pB���DL4z��N%�L�A�Ck'4������:�vep�k2����$Z�3�D��,&��F�%�&YLF�sp����ܮ>�j᎘�{@챚��j�*#�j&��v�Cl8���N�n��������Vݩ
H0V�s�Nл)�"72rI�0�k��K����FzCW#�c���Ѣ�6����[��������?�kww�w�c�w#+���v���ndS��я��FU4�QM��;��^g~�|�%أs��y�%��G�
2V�`���V�x��`�68< �%��z��0��,"�v�����PG�pVF��-&���l�8�6�B�7��;Vvh�Z<��VU�rTq�l�bs�װ�`tT'�i�q8 �;�`�#=��N}B��Q܉f���D��ʾ�j�!�V�!��?�E�$�}Хl�����`1���4����\Þ��aB��%�"�~5���̬n|�w�q��Uݴ���E�ݯ�����    �ۥYe!���%�����șu��@ִ�g'�.Z�}�)w�¸��Ŕ<������;���Z�����(
a��cJ_�8��\=��,#�uG�/'���^Ye��y|�X2��1LUu!�%���X���G�BlD���0�Ud��iE�	E4��KQ)	|!�����k2G�Gc�������㍆�W5öV,K�?�v@kț�5�O�0֐Kk����~�BY���q�[���*׋	�]I�D�ߣ��L�(?��l��$K�v�J�&�`Y/{�vi]cc<c�
�v�a��X=`a�.E!�TK3Q�04�	��N�Ba@L�;��B}
4�,t�̎I��h�>�J@�E,"��v�w4�T)`��"��	��Z�����%<���ߴj��]ˏ8�s��ao�tk��b�6����=���<��^n�T5�&���U���,����Ҳ�F�S�r�\�ao�/�<Ɲ�y��;Ę^��ntb֊g���OgM����{� 	�G�,��Ǆ�7��W�\���3HK!Z´7���?���Y����|����+� 	�$�X�J�.8MY�')�vj���DehɉX�M%t�b�DU�����>]2p�2,�']���I��%��jB���s�1[�.-�����V��U�7�� aڹ�J�𧀉%9Z�6�RzC˘v,�,�Siiހig����;8 �<��
�������wS�����
��6��]�Od#�J���%�B��UMm�_J�|-b�u�4���vxNK��n'DsZr����d�x +��9-9LA��wZ��o���7Ή��wR�洄*�ٍ[,�*��'~��5���NK.EU	�I?�h��ќ�܈����*W�ﴄ΄a�NKދǶ�6kZ��n�����%_>��r:�Ӓk]jZ����i�oU���ӒK�&UCwoH/pZ2�3I9�`�
��+����-p���;�)v�!Z��M����X�<pZBMiCD�z!eT�do��ц�=���<����>U��!���ްSd��5, ��)ץl�~Хj�ͽ��ƏJ�'i�h!�F��V-�w�9XD���NE���1��1ю�����_>'a�6�����~��*+Iq�H�R��7��A>�5���p)��N-�KUbJ�
{�,#�{��k���8�����O���a��Y5��
r���ɥh22�k{7v@��-\�.�:a�>&Q��N.�����;��3���G�*��˓h,$����{GE4�5���6!9�~�0�������T��N2��?����B>��
q-cڕ�ΥQ�����Ӯ��y�LR1|�iZ�oƶ�ڏ�0탨ha�c�8dڥ0l�L��vl���Y�:�1�(ϩTO���%��V2�~:��=/���Z� q����2�]��\�iɀiò)rU!�D�v+&���|��zX+p�a�Lۜ�k�K��2�L�Z���1-bځ�%�xm�o��';���U�������؎E�]�DsZr%�zp������Q�
�6�K�z�NOclzB�3L���GW��`�F��l�ΘIC�]�9����8XD�c����bXL�sݪR�pX��H���G�t�B�޵.���f�ьx~��U�Ͽ���l@���f�@�r�l��e1���͗�`A/L��E�>#$ZH�Q[�i�6Lb�1�����Q�ZL4WJ�;���y�?I��`�xV�K	v�jD�9�H��`æ\}W5j���_��`�4>��:�G0J�G�oh>�nu��6c᧑a,"�E���=�u4V�K1��>S���ͣ]fY����נ��c�}˻W�>Qk�+ t��f��}�oZ�.�C4��jQ�?��r�����{2B4��jZ�.�`,"Åx�v��5�mڅX���S�9"�U]� ��M=����&��^�Dc�l��T�L��VKJ9p�]X��n>��rYM]B���Q���m糎 ��0��q;Ew�aX'#K�ݡ�9�n�j��J�␞��{�_��~D4����|�M��hה�_�~B�۶��F-�?�S�}-��-yEKtH��������YLĤEzY�=�꽂z��	vi�k�0І��n�� �x�*2���a,"W]���b7���ر�KJ@G�L�EX�6~�?�U9��2�n��w�S��2����YEF���[�I�U�UM���/�XE���"�#�ȫ��ׯrs"RP��a�"��H�>Co3�sDl`H;58���z�&z:��KH��ja�[k_g���*��ov+�{M��Py�\���|��ʆ{%�C#�E�j� '�i2�F��O�B��7PZĴa}4n��y�C��i'R��|>�Z�6Q�%L���C -uc�VRO[t��9�Q�M^�	�h��Q�ș�4Ӎh�[oz���g�m%U���`=�7�o�)ED;�4� wBq�%�|��YLc�%��4���hIϳa�k�9jl�Qk���rX-�.]7 d_J9��6��R�y��-�rX�QF=�ʹ��f�dYG�h>Ө^�=�� �HKl�=S�|�DI��ީ^H��ʰ�aF���L��<���l$����\�ޱ��3���#�W���'��(y�{�����?D�v�~#��(��@�&D���x�yp��iò���V�}��!�l�.t�h�N���h��&��o��-q4a�����4e�)�Bִ�io�;�?�h�Ӓ[��;��\�9-9��m2sZ�A䊄�L,�J4�%o�Ĳ쿬��	fF����ڦ}>�9-�����nNKƊ2Y�NKTm�&`GK;+��W]��������Aw7��ӒcI����䌒Y�5���wlģ�_�����f��+�	f�mc?���ݑu�U�\vd	��2�Ƽ�,b��o7�����D��uc'���Q.�wm����R�i����~�޴e���}�K5k%��-��Y�Ai�j~c�F<J�E���`�f/tkd��Ϻ�[�\�����_,YG��)��#�/�H����� �:�4�#�ȵhѯ���i���2r�E��BV�q����V%(�mC��{5��H��;6��!ǀ�y����mMD�`g]��y���`a/�{�iQ��I͎�tI�7�(�`��E.���6M#if��1-&ڥ��KYMZ3;z����1{��]�'i�����`�FK�<>Z�G_4g~�0iJ�U��y��U!JܹOx<2�6��|�y�iv[��'��CeK�GN��⪤����7��ʾ�I0V�3Y��Y�
�c"���Z���.���Q��n���Z����m5Ű��D��;��j��`�B�Ѵ5@����v���~G��)5rtD������
62G�v!�����Y����]oP#aZ��d-�B���0�؎Mџ��Y�:�4����n1G���#k�giI@u��匰��H��l�h�nԣ�!GvӁ���3�T�����U�%G��i�G����D��1�B߉C�d�c%�9�DKvf�T沀��t�v,�7�D˺�P�nq�%�,����i35��hNKN'���e�[�c%��#�Ӓ+� ?uw4�%q����B� 3v�;�l����@��4n愢�?��ld��J���� �Z�F9��v��v	@:P��y�06�����P��gr*P'M;�pm�Z��?Ӝ���1?�%Z�Q.A�����h[-i�P`��Ҟ���fb���%�vZ���F�t@��hJ�aI�l���7�#*M=*I6�Į�=v߬3JFC�7�҈`�^��s�4�N#��%<�O�[>ì�����T�v�Y��\�ww�V��v���	�Lj�y�\�w�	�Ր�β�`��1	6l�\#��w��a��hp%]��;�f���%nK���V�&+Ȼv�q��x���r��F��+Pk��.U{�a{�Z�Ǵ�5E��kK��؞W5��s�0�����[K�6\pN��6*T���v-v3�L������i7���H~CK�v���hw    h�΅���M4�i��c�>�4�%�!� +�󻙬�f|&;-��J�X,�9-9�Q�RoCsZr"s�(3�i�m��%�m1Ӝ�\�fz~`fi��J4����<D˺�F�O�^z��wZrL���iNK.��y��K��"Z�%��W@Y&Z痬O����_2��hNK�AM��6���fD�ܖ��vq@5�S�D�l������D����j�1�-ŧ�j��w%(d��� �	6�X��c�n���$X覱ЭQ��8�ZԵ66�G�b�}��*Z}�7CPI�DT]�?�)��E��-f�`�xI5����U�3hm��r�[k�؜u���|%������!���2V$X�ԱZ��ю:Zw+�	2�XBn��:���L��9 ,u�X�׃�*\+HI^�ga��C��^ 75�y֖��%z��XBn�%�>�%�F
�nW5��c	���A��kX����Zw���n��"�sB�4�-�5d��X/�����k'F�7�x��%5�E[H�rj�����4�vd�V���2���8tRlp��G��th�4֐SQ=[ :����.n`Z����)/��r���/�-��y����1�5d$��e>L�Ӑj�*|�n"������k %K$�`��,��	��
^���XC.V�@��D�NCJ�1v�l-�pD���C?�XD�u��@滕�	���2��T�絨�Y߇`�!g�m�#zv�*�F,���b���hn�Dc9���<F)�I�*L-���CGՈ�+�]{���E�R���r�k$eC��P�Ud���b9��-�E�V��	�d�Ҩ"����$���X(�s	�yL{-s�}U.��|�*;��ȼKG�eh��b�g��`t���dZ����rd��5-d�u[�tUnK�z��܆e�F,�vq��w��q!
QQmnЏh�zl�����R�]Z���¹{�@T`#Zƴ�"��<Jeu3y"�Z�hޚv^ ��i>Ӿ\,�cQ�υ\��:%1eD�j&���7	v�.>��Þ���`1��\,�����dS�,%�HM��3�Z�27������;K�3�s�o��q	��w#3�����\�����籂���|3V�Sa��</v#�o�_�R(� �`� W3����/Gv�R K0V�����3����A�-1���6�}]j�}��h>����k�[(���F�vtD�v)�\WTo
�#Z�4�%~�I��i#]�J��ZZ´�����*����\}��Wrf�.sS)�%]3��,-0�Z,�����89�J)��@�hNNn�TTpyٿ��ќ�\�GQ���
����FSm�QK�6ۀ���;pjB����%p�ͩ��M��$H�-�l�������VL[a�b��=t*�A/�C�;ӗt�%�t�D0�`#A9��|����������O��-,$�X[���"��ScU	\m���*�ޡK�[XB0j"��#da)��e���VށaO�h�n�'���|!�e;�~4�����a��XA\;�5FNAJ���ꠍ:�Z��2k��\��P���P�Z���XAN��!�2"V����o�������a1+�E�-����XA.U���ہ����B��#��a�sx�8 ��J>��S��$@0V�/$�3�KX�#�x8%���Z�9Z´m5��X��P��i�b�Pʅn�Z��-c�u�l�]t�OK�2���p~+�2�����o@�|U�}sB��i�vl�+m����&��Э��$Z�֛zT��7���F.(�����\��+~Pe!A��������	���Fb��N[Y.��"Zƴ!�����ӫ��GK�V���T��a���S�qi_ߩϴw�0�����%-`=��U/��n&��(Y5�>�D���Vm\)��#\̸Q����-����%�w��֠W�S��b�q��G��srr��+�.5x��gvrD#�����+�9=�\���TՙhNO^���"��,��ɕ�.fNO�t�| ;qz�ip��4''�����-6�"\�'�̱ۀ�9=�Ց�7��yyJ�{1�99���<�-�.�''��w.��h,�@�jD��D�pA�9191��	����J�f@�`�]g�^B�։���U}4���]�8�$Z�y���-�����89yS��]�GC���^���8�hNM�]rw*ԏhk59�Q�?�b;�#� ��Ҽ�K3�j2W��Kb�g%���W�b�@#+�sr�Z�Ѱ�G�Dsj�Z�Z��%Z؅�n��۱��� �S���Ť�T��"�ŝ�P�T��/-�=ʠ
!y��
���͉	u�)���ʏN짛�[�����4�;��Ą*+�~u���z�>����TP`lĬؿ;K8�[q�#p��"�95�9w/ia��a�e�4�&�Wowo9������ntև�E�jT��9=����X��Sݢ\K���WY[����-��@�/~���ܮ>�]�]E8�;����3�O�i!�ӓ�B�Snhk=��ȫG�6�
z��hk5�f��m�s]@<�'o�r��0m}�%Tg`=	��D�WN(���	��0KL�Z,&�Y����ǴS~���|���
z]Z!a-`�X����L�m~�K��iW��ഘi������h��LBDK�L��C6�e��*5���Rd�3��WӢ?*���?��1�؈9:�h>�n�Qu�k�Xhة6���R�8�g�L{SM;<8-b]̧�nWE��6���0�g%b&�՚�2��MdC4"/�q)A��ߍ�KB~�;-�5�����Ҝ���� 4�%����B@���r�w��8Z�S+q�A��G�B�Ԙ:��ꉘ��p��L�����&�V5���򁊥��t6�i�h��
uDK�F��1��i7J�G��ѥX�{P;��i�J���(�F���;�Ғ�nm$�`�}t���B��4o3����Q�����k4�iךr�_k�(`w?	�c������--d��(d��u3i����l*��d��tذ3�[�ӒkiG'r��h�i�u�gvq�R�NsZr����K�+ 4:KK��\
�j��OPi	��2Kt�_��L��� ��ӆu1�[)�<4�v,ʹ���s��i'����Y���꧱���R��Y1I��]t3xK	�δТ%kXF0��5�?2��+�ـ`�V���6:�G�kvF�Ә���k��5, ؈��L�� ���+Z���b
�E��t�����y�{�s���Jm���5�z�扖�Ю����pDKwh�*7�	9�l�v"U��YZ@���vj�o��*�i��d���=�D:U?�zcK�E��B�]&�������--d���>��2��^��Ba+(3-fڍu��a����N0H�6�_X�i#��:ڤ��-G�D������oM��|h'���юۉ6\�z�2�7`��`M����cک6�>:��ua5l]iz����D�6ngE��xVK����*P )�B���~V�_$^�4���X�MU����I�DK�v+Դ8 -eڕ8�/I/뾛K�gi�`=����4�ig�(�����L;��vtDsZr��.�ݜ���j�H�9-���J�����䬶�J�%]oi�����NK.�b���!���-���)Ѽ5�A�[��&����z!]*��g	lX�rA��E�r.����	v"'�~P	�NE]X/�́SI��`\�� ���%͆fXUՔ�w��Q��k]#2�|@���F�	w�6H�>�(������/��ci@���Ƣ�$�$Z��n���x;6��xD�J��2��i�R����ǣ�FB�)-#�Yʣ�g����_�Q���z?�F��؅y{��h�I5^�ޱ�s��<���U�'���ϛ��k�ڱ��F�h;���q����7>EE+�G2DK��N|K7`��R�Q��R�����ji�ꆞ�������B2�,��\݇�<G�v��Gݿ���8�q��Be.���QZf��^/h!Ӿh�Y}l�~?�"�g-5��#�U��hNN�Ž�,�N�
T��hNNnK��^ND    srrj?��ضD�~q&ǀ�#��85�����N@����k�4r
N��[�і
��Dsj�^1�D ���Ub�xS�VzQ���l�Dsjr��,5|H��|����~T�ĝTR�ʆ��$NMƺ:@Ÿ Y���}+������L��o�i�h�Q��*���F�������h%<ٛhNLF��E�w�R�&�jZh1�5g��b�"᜜���/��s���井���hNM��u
�P)��
'��z2���2�FT|cʴ�iW�:�1�X��17�Fٮ��Y����w�C4��l���o�A=
�4�iv���R����Qj��P�.��Jy�2N-i
1i����w6i������[�L �Ӓ/����DsZ2V�%Щ�U�����%r	�iɕ��`K;�9-�
	�iAg��W^P��˖Lt����������֠�T;Z�k%7���Ƹ�DKvW�z����9-�M�.����yk�dn?[���4o��1�lnW�=��]��	ը��Dv��I�%�B���ciQ����EՖz��1-^��f�"����/��íx�>%�9/ �ќ�\htj��9-�Ѫ�
^�%�������dUJ�9-�r��o�V��vK�{x��/Q��~�Ѥ���b�uVb�EP������N'ѧ@g^��GK:Oay���wZ2���$Z�"P�,�i��?���.�u�I�4ow+���⇁Ӓᢲ(zJ�a�
D������4�v�iɭ�y���yIk�o%NK�����C5���K� �xeZ�y�tʅ�[	�����1-�OC�o,���M��-tZr��Nz�O�����nh��se7U��m�sh����>{m�'掶9{]
x��0촄�{tFKn�K�$;Z4X���<�y��Ta7o�u�8��0-����ha�X-iзFa�䲝�q��Z�%�O�7�Sf%/N���jQ�V�jVAK�3-�b�R�`_���AwGE�����M�3-l�1�q;��g�6>,�2�"Z�X#��&״�g�3���H�U���"��W彨r�,&ح0zhKxd���K	v#�C�2���!,$m,����%��Wg��H�;�?���lI@���߭���G����e���f=:�E��w� S�Br&��!�$��n������D,�٠�R/euDG�P!0��G�r2Q}`��0�6VI�H}����^�#r(X�9��k3�W�	Ӑ`��J����kma�N��Gtr9�b�]�)�`	�n��u���G4-��J�}9���|�}|�nf�!�Z��b�@�������e�?��.�`��R�I��"r�g��\���e�@���E���'�b!�݄�"r�&v��ukȹ�$����%nUW9����`�3����'�l��B�"��K�X�b�]$��󨚷1��������'���)˺�����	��HY�o[Ӕ�7G�`!����5�W���(���h����4�6���6И@�,&ؙ��=E.,!_q�E��;(�6��il']�U �a���y�*����:��2P[t0o��{~O0V�Ka�g�+�q)�89w�A��
2�F�< ��8�@�-i�
��30��
rA�gn���XAF�% �泂���=@��gY/g���
B������ 7b6�9��,ܪ>|������n�XA��⡶�w��`� ���[��z��\��O;��[�Q�ڰG�vJ�s
b��������$`a����������aa�sx����>*�Y�����������A&I�x��&��e�?�$+ȱZ(pBÜ�<���|�6�²�>pY[X8p<-�ꇞ[gK״�*��i��KX��EdsY�i;�����ȸ�G��`���]�ET��덴1��kkXB0.�z%g��rQ���
�ϸ�ek{����4Q4���~orn�M4��l5E,"��V�BZ�����m�[��a,"���Ŧ~c�a���)�XC�d�M��W�(ٮ4�g	����*i��M�u+1U��9�j'-��B����f�k�9�,!���=8�7�YB^YoN�i���iq��r�q(c�wAvTCep
I������X}D���hoE)��c�8!؛g1�?�l�ҫo����M+Qd��1M��\}[2 �+.?��k�K0�`��ѕ���4�h7�eі�E�ō���oj7$�PXH�Q��iՂ�@aQ72jc?����N�d�l�UYq�n�`,"ײ!��:JXE�ZY��!G�0�!y�T-�����R֐�V4r!���0֐�m����XB�P��1�V�l�ݪ�*��-�i�!��)�[�[�R�Wn��\�O̃$Z´�VTS�(�.ƴ�i���0L�뗸�qC#�Nw��Ӯ�
}��4�i��Pi�&�|�}9K�I��}��x����B���-.-�,��R#ʜ���p���̉�m��`��͉ɨ=�w�d)�6����NK޶��{|)�x�Ĥ�(�pNM.�U�ͩɭ�B��״NMT{��,���ɥ�87�hNM��Y}��>�!���7�X��Q��r&� ���D,�{���4J]���\W9��5��U��)��F�����Qw�`�L�%�Ű`{��
�0+�K,�t�H�L�H�٩�f&Qc#X�c �*�f5ĺ\.?�X|����@��q����j�4�^�����W-��B⧒X-��Nw��*1e�Z�:�9�D�v��H-bڭ~(���h1�.��<ba�0�*��qDsrr��7��? ��ɕ��;��L��j�aڻ6���
m(�ӓs]�a��#���ɏ�uk�sz�O��Z�8'(�ڈG�'��cYΌ���Mq���R4j�UL�9=�Z��O�X}&��cc��O�����m.p��^�?�\���ǡ�O~��v!r��K½tP��P��Z/hѕ����$+I���W�pB�'c#hѢn*�:�TR���4/�)�]��p�4�*ճ�Hk� ��ڰ��L�vho�B�ȃ�q��F��r�
��ۡ��}Jr��sU��F#?�������#aLwf��3�E/V@n���1;4�%�v�A�Ț�dT
CI���9-��>/�F�2�i�-	�S\mL�\�4�Ȫ�vi�
CD�<����j߈�D!��3m$h����]�+ذ6�Ѝ�Ъ�m�[��d%x&�?��L�TS��ЉdZ´�J���_�3H�h)�ƺ�3j��i(��wmD]�
m���Sz$��.%v*'&'�}(06����ٿ�c5��������$`ާ��O�knx���L�x����͟�����?y�7�����I��������0<�wN�lZl}4�%�T��_U�c�5"�L|�飝��b��58���S����S!��,/0��O�[k�WЎ,��ܚ���o��
۶�xNcFv^
x)�8usfq��1���լ���F$H�:q���/+����e$t��O�?���:�V�j�/p�t��1-y�xY�!�����?��w�/�9}�R�w 9˼���V���m���AxN`H�ɏ���	e`��^�[DƙS���a��Y��\��������@@'1�v�g�����)�.׎ֹ/���@⯂d0X[�����69$ޮ�\�����t��w������0���Y��o8�ڇ����l�9�9gg�S$�0���iZ��u�x�b������o��%��t�
���/�g����T��)}�#o�E�������K<o'
��95E�����"/xa�`�!`�]����/(�xQG����b�}�i�t����hk�9��bmi�%�җg�O�l�şQ$�`c���f#�s�r����?�߉��w.f�k���N`ƫ�O����������vN	�%�S�21^��0�_��+�#&[?}9�<�2�gV���a�·Y�ny�87	;'[��&z/U{��[h��$�wM��D��ă��"�%u��ձ�k�f��JD��v%��(;Z̴Qa��Eؚi�w�N�+���-ٝIzL6�L$���Kg�    ���I��'�-ۡ�J�w�"��J(wC�x��j&�������������Z�`v��	YDv����V��H@&"�v��\5n�-��L^�</�f�>Ww��֨J5��U.d�h�
��N��%&��h�O��\\k�rB�|J4.6�N�RW���Jo���"Nv��1�e!j����f��X�[�9Z��n��[�4�>�ԥݲAߎhӾ,kl��3���G/ �%;3i��j��9L'���[u������=*�[I<ء��;-9}������Jb�%��A�[v:yO)\+n�9-9��퉶l܆ô��&��!�A��K�0t�$N���m�ma��B͡�%���1JLu˭Ol���������.�#CWI;�
�Ȅ`VDz��x�wtI+!�c��
���"f-�hm$�uEzg�\@��u,����C8�I�s8+J�$�:!�����;�Ժ �k1o�]h'I=W�q=�wX>�(��_6��W-
��$i�߫��5b�n\Y�C�j��"����s��Z.�����Jy\��z6�S�"�x�����E�e��p�r��x_��7h=d	�ka�b�g,RU.��Y$v[�8H8N�r�V9���J��n�<����7K��B�d-�<�i�b��+���r��J��.�� �MJud{_��S����o*� pbn��8�Y]�bWX] ��X��!���ǆ��j�h�]�K���mk��b,%�����xJ�cC.'#M��Q�ذ���k�F��[i��ro�p�v+j�a���Ɔ�+��wF�A��'�F'����>y/aa����{�(����SJl��[m�F< �D��vf�&���)e�Zܕj�]:Zʴ���W�J�k�@�F#f.��SI�c-��h�%8l'�Ǵ7%�y���nl�X鲛649�ⱖv��'c�2mTPȴ��|�}l�땛}��"�}�៍i����N@=���0��t����:7 Zʴ�E�>�`�Ӓs]�T�.e�D/�9�x�>��NKnĳxT��B���$�Ӓm���4�%�r�>8��8:�LsZ2v�NFʖ�}�J4�%�m]���iɩ.b%NK�&�ވ��59�ȝhNK���-G���Q#b�Ѽ��z�CH�C�%��A{�L�D.��8�Ӓ/��: �i�K���d����.�i�+�~��%�Ӓ[+ɇ[fC���F�uV�H��t�ii���D��ڞ	?�y�ւ�':���D�\�Q���B5-�L��B��n+q�6��4���6o�d-AE�xC+�����HK��I��_�/��2�XL�%<�9嚱��̏�����R�%,ҷ8�U��s
K���\U\�҆��'��}�Y���iAG�В/�\UKۏ��=�EL����r���T%%�Uz'k�V�}};19QK�rc��K��'P[Z��D-���9-yeС��9-��mI7G8Qf�Ӓ�V�D�4qZr�������7~����آKi��H��ޫB��7���쿇�a)�n�\���IF�c�4�I���Ockjt�<��KdA�-�g�X<����PsI���Q�� 'i���+ȹ.��غ���Ȫ\���%n�U���x)�M��XA.u���\����`� �F4
[-�`+Ȼ<�r��D�v��A�Bm�������t;Te��M���܈FTn Y�RqW�s>������b�i�
2nZ���t�|��ҋ���,K)�Ջ���3��-1/A;Zƴ���4g���ZF	����,�i`�H�hӬكG�h>����4����L��$��V�Q���-�Yx+�wg�|B�f2�]�p����%��aF��v�]J;&�c�P2Jp��3z~�O�h��R��h�ǑD�v��ɄL��U�E��g^ȴ�6���H�ݥEL���3��-fڻ\�� 2��݈{Q7�,8���w���Ͻ2�iɗMc�ۼ@��[��dX兡"&"��>����ʺ%�7���B̭M�Ox*C4�%gj!��p
�K�9-9�e��I'Z��I��0-^�$��唻+5�t��!��D4�%C�V�G4�%o�f�]ێ��\�ʆ�з��tZR��v�9-9�� W_Y��X,\�s�- ���䴽��DsZ2"{T�KsZr"r�������L<�R�?8�,��g�~�i�X��
޴"��܊�*��r`�ќ�\�gm�+�hNK��5�B�%��sx��c��X⽠���[!�F��G���%��l9�� L����u�`!���������jOb�}�q8��D{S5j�NW��ƴ�h�b�qyP<��f���2��r����l$рh�FL����4h���D>ءa�i>�ޕt#���dD���bh�#������iw�g̤��d,��Z�}gl���J���\�Ń�a�0֑��n��_�u��T7�AR1A�G,#_i�5}�YE.�o ��Ii�v*����In�La���3�RT�I4��>.l�J��i���FG�h!��5b�e9Z�ͤ�w���0&�b7��2w��l�DK:ZY�j�X��2mD�+fҚ%��9�u�)O`�gL?�QZ�����Ie5R�T?�%�Ӓ[z�'�E����J�5�B�4�%|����iɰ���0�E�w��2Hq4�%n��ui�6Ԓ#�Ӓ3�4����D�d��b�@���$�����t����g�����pg����ˋgi��VT�i�0ty�,����v�b�~����E]ˇ9�VA|:gK5��^.Y��F7zA��Ь�l@�����|�߈��{#1�	��_�s�$#&|�hd�e>���֢��#��H*6G�W�����D�n��VP�h��G�,�fY'za�� XL0�s��}�zEO-7�W.��9���JL�I�'�ȵ4v���#�XF�T�|���j
+N��p0���mKX��XD.uU�����t+Ak�h����!�ܚ�Eh$�g"�4�v�M%�XE^�B�VC�;��u*b���������49(�tK�F�M;�zc9���K��k!,"'�^L��<4o�b�a?��unְlČo�P����E������:�L�U���2-���X�a�F�u��HC{7�$�XENZa�v0��s�ݬ;X��h�B�zF,�����=�z������0�� *����Ԉ*��к#X�O�w���ű�`�͎^ay	6n�����`C��H���gPX܍=�K6�Uc�Ob-,��$	fݐ����j*I!a�0� t0�o+hr��y��n˶���'0��%- ڈD5�*���	2LL���Ma"Z�6ȱ1Dn�p��b����BM�iD��d=�K5����aai72|R������z*8����A7�/+N�"�Ȱh�6��h,#c]պ@1v���Sֱu�?��FNm���A�{o�K��qV�LDu��i�J�X�y���L{/K5����w��$^¼3q�+��"'�h)ӮunG���p�#.c�HTs��h�O�Q�#���yL��_�p��w�r��{��%9E���Y���~�*0�I�;��L���[S��zn#|�g�-��[�?6'(7ⱒ}k��������L8�(��Zʔ�׺���?�hNP.����=HT/�Ńnpv�X�qD�9I9��)%\�b')7��oh[��?����	���R�B~;�9AY#a�l(NP�Q�s�4;�����o�L&�s)��#v*����XV2Ws�wI4�''�Q|�~�I�����Kw��E�1������bo�l�d�99��o�zJ]Ѓ:���[�9=��5ZN�u;A�0�q�NJ;� eN��6'�
�Dׅ<�.�������T��9%`��h!lГ8M���0-l�90�hNQ�]���tS��2�b����;D�b9=�wsz�x4�~s ���}��Hz�@<')��q�V��t{A�8�b�ӓs�>fp�.����>��w��~�,.s�rm�D�9z���!���GxP��������(s��s�~��,��xI4'(?����Mo#Ǻ������'@t�~!�{���ьDIW�e�ȦH֐%6���nΕV�0��=Io2�"�E�����    �������$���j�3�]E��`�����VO�LMc��������~����B�5��cZB�J���p��[^p���XN��b�+pϐ8���\�r!�{�&F4V��R�x�?��`p�v��e5>Qطb��^.�G�������Ҁ�'D�����sj��:֓ʁ���p�8ព���.�z�z����\������GP�
mV:�ɹ��
����V��^P���K��,(CU���x���'�u�Lq64o�X��x�M<��tB�p��B��:G��h�&�la�[�X2N.�u��Dc59��F%㼳��,�1w�K�Ǆ���zrj���������^���4���k.r��㣢G^5K{��Oz�n��N:Z��L�.Ѽ�S������;��,�x��Q���">��+���E6�@�n��4W���RsooΟ��A��׼�{e�&���$ZԸ�zŁ.���M�K!�u���ؖ.�2�E���n�d�W2��d��|��%J��@�u��?)��i^�#Z֜���Hh���b�#��$��#\��I~u�GQ@����������9ci
y�_';FQ�y��c�C1P�m~-�%tW-d_%{a�t��� �ɅΗ
ٳ4_$��=��@�_&���%m����qy����^ԦP�R�o�q|�q��d�e���K=�g	8��嫒-fO�0DK���W�QWd�>|o>
�?-�xi�ryk�[S�b�Ki7��8_,�������ˎ*a����e����h�`<-����tNkn@�b�KCu�x���ȩ�̍#��?�lyZ������,^�}�����;U�-�A#*9��&�.�X�/�It��i��ɚi*��(����6���� Ӣ&�D�g�2��@���"oe�����9~��&ܠ��Z	�{�l�Q�+	�9Zc��V�|��H��%�e�r����X����0U���[U
q��p�:O7�5%겸�&ψ��Q�\�}VGkB)Kʈ����ʾ��D�%����hQ����ݓ�~�Ǌ�r�^�L��C�l��ҚZ�z������3G�	��ղ�dh��67���r�&'\���lc�����'t��o��b�;��+$���z܆��r�ͱjM�3��Χ{���B��Q���!���8���^B̰�h
�����/���SLb�#���#�
���f��^���:Z��B���*�h,(��8C4��+aWe�)���a��a@�ۺW3{ �>(�2�d��������|�,_�|�������l��yci_�E�Ӊ�t?DcI���!�ra��%�h[)dS_Kd$±�\(
�������ֆڢ�����`�h�~s�k�>M�Ƈ��ѫß=Ac�,�kk�k``�pY�.���<e�L����6��M��5]�x"�6.�g�ܱ}���Խ�	�B_9{h��V��ս��v��fK��e��Y���R�g�>+��p���8�h�)��B�o��%�PO��~�����l<����XONĭ�_}��.�$c�q�E�*
	�����f�Dw�a3���QE	�A5W{nѵY�֨	u�kaU����.�k�|���,���6}�,5�7�b\��^�^_"Z��g��$|7�(+���f�4�����8�=әZ^�o{</se>P�'����+=�ި#Z�k5�mT^��l�%T��/��b&���|ENWz
?|��q+לC_2{|UW�8[C#9�u��1����w�w�-]����Z�t�aw���ÝI�mx\�p���R�:#*U�P"�2G;Qֲ��h�X��$�]�?a�'^�x?+��=u��C�_��R��+}���"�;5s��π;Z�h{�d$>c6�;ډ*�)����6Z��=��k.�ur�M��-vp�K^~������9������%=G�-,KuO4H���^
����d�<�����
�cI���,�<±�\#&x�LXS��V�Ua7�K��h�'б1�Ee��;X�=ǒr����o'�+ʨ2���5��R֔������q1=���$�ʞ(�^KQ�VѼ�"�����-YT����a�ǪrhO�I�������o���q,+����±��3Q��^
��XW>+f�T,eUy6U���.�Y#*:�r�>`	Ȫr:)����GP�eŨ:�Kty��9���XT�Y>�Z*�ƒ�g%��w�ƶ�cM9�._',)�nH�X�+�Jz��[IcT���];���Ѭ����H�b23�?"��	�9ܥ���BI�u�O��s�Q/����/p���Ï��B�h�^�p/�|,�]Y-r�c�F��~J�ś�Y^�������,�6hG;������W��^�pg�+���q/�5<�����M$걨�uq��X�3�S%Q��2���cbk�E����ycKʾ�P,){����������O9k�S�����������r%�EW���d1H���c=9��_�p4����!-d99V�1]wFke�rrl�����Q�zr$��"��G�8�h���jY��+�D�{�av�5�9Əp�'��=L[�8֓KnC�i,'�?^)	`9
YO����G�S@����ږgmh�'gƞ�5֒%�ɗ*��[��^N������Ⱡ�H#�O�e(���m�`�͵p�GIc����cA9���܉q,(z,���������1��q�,�i�7�c�s݊/�����6Ve�rrz��������T����,'�������G1��,oC,c֓W?�%	&�pY�����6Q���Y1����|H�Z,D^�ի�z2��ڴa��#��֔F��q���x���%<j���-�|����jf�������[����>"�d	wBǊ���L4��o�D�y���3}xH^[�~A�:�z��9���+p
�h,(���6>D���v3��(C]�c(DK�<.:��h��_}�R9��js�z�g��4v8���oK�x�g��S.>:��+i�D�s�V�]uk��z���o�K%��+J>�|�5�}�d�V�����Q�Lw4_����*Z����+}m�\QRV�s;s-��S�넬$޶LYPvk�;���c5�j����}4]*xX�p,(�9>�E4C�˺�'&�t��[)WJ���j��+%�5�X3Q���Jl�~�|�؞4>��XQ���_yZ����P2�6������i��]b�tY�RxC���Ƹ�������]
���ı���=9	žRvwQ������}�lS̀�!������mL\��K�[�-�^S��F+���b�hM%���!-�*� �{��Q�L�X���|�쥰�߯$�e��x:�p>�"%������ɾ�[�K���c_){�d���:{�k*QnK��>z�AgY��Z�_�Kvlaj��kl� ¥�{f��_T���`CQ���4�>[lׇ��Z���/�����~-�h]CY.��}����=���l_[;�X-��:컝&�j��� ќ��\��������F�~�Y�d�v�d.sU?���kZ�h'3a�K�Y��Zڮ2��Ǵ��E��z,�D���6��z�9Z��[u-��;ڑ6� Q��߬��\�8<�<M�9��%�6�Ei?&�G�ԏ�~�R@��h�Z"���i�ג�:S�EI4֒#qcw�D�[z�\�3@��$n�D��e1�aRI���O;{o�$+hC���e�X��=2�2�((��;�o��?�,�+��~3�C\⾥)��J�����=�]�46b	C5��ᬐ�cj�	��{;�+�H^)��������5T(��OitY�w\%L���en���t#��8�'�s��N0TO��dTY��RCx� �7x��wݽz������\X))�?���S��f��T.v���J���cE�e�6p�BuP5�`��(O����*ˠ4'(�q�� ޜ����XPV�+Hy�0�&����˄h	�cQsRr�S��	��d��� ����'$��j�q��y�l,��\TPË`NH.L]س������Gf}g]{��pNH���aЖB���f9��t#��s����*[s:rZVF    �V����Y[�b}�<�>pr�����ޖHb��hNH��X	���	�Q.� ?GS'$�ͥqf9)�z�����Jb�]��~?�� m�*����<��59v�̉Ʌ���������4���=��U]��.kl�)Ĵ{,�����	�P[e.���-�#ڶ���+s��JͭZ���D�����0��@��?dł�6��f��?#C^D�
���O�K�\�+5��������!���ɡX外��������}�{NP^�q�k4����R�����5��(��1w^N,�='({9��ax���΀�999�-ĺ�6x���ݵ����	i진q60'&�:��W����Ě�D�ӹFol�y)�t��I$}��cÄ�l��-�Y?�&[�7�ʂ��C�|6ǈ�.�VP?��\�^��t��B_-���`����E��1#v�=^�t���8�m�B���S��ɜ¡d��B�� X@�sJ2��.�+��E�G�Μ2.f\;�r?tbr������J4�&���k	���C''C���V��V�C��3puQYk�٢qV�s{z/�����Ʌ�N0�4����A�ƮL�{�������q}gp���+�����X�D�j�}&�G+�bG�Z���ea퓼;R�L�k� �`kl�K�ؒ�y���NЏ:�ހ��xZ�h��������Tۧ�+o��Z�hCk�3���>U���
1�W �9ډ�E�;ڞP���w��W��6Vɀ�V�)z�-�D�U��qDc-�¢���Z�WG볖�B��ROk���~��MV�)�vBk{}9�����P�>=�!g8�"G�TEqS!YL�ylb!̵p�S����vt�Vؑ1m�hǫvh	��9�͡8���v!M��xMf�vP�k��ee4�Zڠ�Y%O�w�6-`���ҔZ�}K������ĩ�Dnp���o:�]@�x3���+��k�|)s�R����Jz���9��Zr�V�X���IiJ����dT/ѢL��k�\܌=��Zg[ݢ�-a-9��V�$k���k����j�կ��F-�SEӉ�Zr��Nӄ��@PEnh��3`]�DK:=r>��{f��
��~�l���fs4,#�}��E��G��.��!�#K�]���~D��;�3k��Gl/3-WP �b�skh��#��n5�z5�v+�3v$��v.r��)��M]V���G#�S�Ck?� W�S��~�Dw�:� G��x��6Vc�dT	#�_��f`�E0� #�S *�s
r)s���a�_�:!�S�c���9~Μ�\Q��������[�!��`NA��R��3s
bW�̒�y�c�)�^mf�D�٠���k�70�A�/Fs
r��F�7��G�Ǐ,�֜�I���.0o)1��h�u!����#���v�L"�ih�����6��ȴ�ǖ�[�+>�����2�W��Q{WK{��l��&����]Թ���-d�̥6K�Bw 5w�4*�������Փ�0��Gc-9�b���%����7��7F���L6zB���߉���o��o�)�K@�����NG����������:kʾ.�Jv��<dQ9�+��t����?�yQѕ~�V�]����6�m@8V��������\/vU:ʞ�X�j�[�����: +��,/bI����>KcIy!r��;�b��)�.�����XS�W<WzaF�)/�ic�E,)C9�SU`'�p,)�����	Kʾ �hgD��ʨ%��Q�5[p�6bE�1�q�؛(�m+r��\����'fA�4�@�5����h��p,(���H�b����fbG��r��s�hG�s�Z|��'ˣ�6-�}*`�Ƕi��=��R��)�wڈ��ت���ռft��.��E��vf�:�v�'Z������;�u�+��G���.�O����;�E-�vQB�$Z�ql�F��hT[�t.���-��8ڙ,���RG���6Ɩ9���%�0�\ͫ�(���^%�5�y����vu���mG��B.���Y2�y����K|N�j^-m�U)k(�hG��2b�\�����rA*8H5��%�I4-s�t�)�X�G�4�y�4�)�
o@5��v.�B�yW�������v���IUT;{�T���\.Q~@�D�+;"���Um��B�PH��`��`AS�j́U�����FW��� l�~F3+���|���������DK�v:���*��� I	v&nJ��\�k�h�`�GJlN�#K{�צĮ��3�3�����k�A0�!��<W�S��uUC\o�9��K���`NBH䥕*��;��TV�������O����Ռj��$u"���si��b�6������?�y����f�wϔ4vH�,����=���9yn�
�w_�
t"��c�=_����c�Z�5�3��"K�������4��<�˝}����=�b6HiY<���+���CQW%��!��2��Z���#K:�5�]�����g����ȉ�:�]#3Y)k�>!�W���^�7b�VNz=G;��������l��:�P=�G-r���|Q��Ä�_-�L��k(�10�P�����ő�6p�u�E٦=j	9��j6��"�Ή�ZB����,�k	��.�'Z��)=~��ok�k��8���ja��%�s��C�I�Z�N�.	XK�3�%Gc-��:�{x��>�����M�9�+p�W�Y-������dC}�Q�k�[x{Ү\�I��0���*�5��H��Y��+U��/�� �"G۽�1ѳ�hVK��J䪜�[�'v΢�s��P���HJrq���M¤cGw W�(���#,%ءX��B:��v&f�t�¢������8��ص6�R���P#XȰbz��,r����!m�b#�N,���`}�}.�5A�lN�A'N;�5�&��Y��ό~��+1yl����Ҩ[q�o��:���w��d����^\џɧ�e���~Kx��$�9ڑ.�A�PQ��F�����Ό�������=�7��'���8��X�_�S1�����υ����̵,t�ݵ����z��o�`gO%�%��Qɼ^J��-I��di��ͺ��z�X؀`%�>��,q0��g��$��-̞�ݣ�,#�˒�y0��#X�gS����`�4��"�,$XA�"�@���M-��E���!nc�)�Ț=]�Y��F0� G�M����� aNA>��G22BV$}� Go�{�~�0;*�B�48� �b##�S~ �C��/��nml`Q��*MU�uw���8Gm[س�;�tf��	+7~���,Y`2��,��tN�\N�W2�a!:b%�������'����ż�oI��X�w������Y]V]�_���G,]�f�6�b�$	,��J�(�B�zYtG"P�"VĬ�����ǈ�/�/�58��Rkؙv$Q�6��+*�������<Ҋ�XBj�i��YcQ�沂���4��D���+Ŵ�G1�==����{����Ci��:��H��쿢�{�uUءj��Ev޲���'s�4*_�I��.�q�����?[�x����VO�y�V��C�)�I�9cQ�ؓ`�n��
1��Kow&��켜���z�B�镅h���QU�]-�����9ھ(�=�	vd=G;0J���A��ўC�-\ȸ�j5�L6�H!Z�h�81���"Z�hCa�XH���ϴ����T}��PS��ǂ2���V�z2����&s�z2�s��f�Y$��i}eer��A�kO{=O#}�%����i,'������XN�i
ey���~�{.���i/_�9�XMF��2��;�wKԥm±�\�Z܈���\ӭ�?y
�h�&��͑.O��؊�4;�e�`n���&_�,u���i<.�Q��@�"��w��qmMpW�E�0�F�\�q=����4��N�v�cy���H����t1{��K�;{���ΨS��C����s�����`��!XF�v�N��N���-X@��X��@�D�0$X��F�F/g��Z�Dw$�)���4$t�������w4����ZBÆi� �	  ��ٶ�0������e�\I�1�`���T��uK����~jX�k�tZ���6,x���U�� �ܥ�]3]�0���f�Q�i�\���{��a�7�>��7����#�V`�!+yc�E���{�v5ڍ]��*(��}���T��c��GD�t�!̉�>��P`��,܆mD��>c��1f��-\c�!��ȧ��m��ٝ��Yj�h����~�`NE��jx��4�V��m\Ҿ���d}Ls*������#+�v
	s*�\���?@�G�FFJIgڨ��	��?B�T�ݮ��G�A�F7��qd���&�0����4䅲c�t6`of�Έ��"�Ӑ��o�n�K�cz�Ӑ�Ŵ�K�� ��ł]�INB^�`�jhNC^����6�6Wv�����i��Ҍ$X��ژ��Q�HKz����V�ujP}�l`�}�Y�5:�̰��h1B�4����k�|CV��xu䆬C�Cن%��\AU��ʻ�$X��J�i��q?֡�M5wKd�K	)I&X�a-4M��P���c+�	1��>�9	9Q�V-H7d=ѭ8܍�T���qKg��8�o��%�ԏef�I�Y}C�h��Ҹ�ٍY�+��(9��E ��Sn���@�ԧ&mp�G�;5JR��$�d���|�MO,n>%�F0'$�T�G46F��*���ej�|ɝm+(2�-�fˮ�=ܬ�|kg�0�GX��1l����=,؞5$�`�^�)L�xX���f%�S�/V2W��r�s*r ��9$�S��^���zND.��������I�%���aA�a�$;sr)����,�9�Tp����Gu�"	�4�R�3|�1��|L]lÜ�\HC�.霦�R2���:���<+K�����8�Ɲ68X�x��#+���Pz	�i\Ѐ���S��K0�����4�~������,��O�ց2�JM��O�|�`qgЧ&*�+l��wq�X_�����A���	�kje�%�(����W4װ�
�.νΙ�+�zj`ׅ���ơ�QJ#�
Ҍ��nh���ը�ꆶo��{(�:�S�����FW�(r�=q#����,�m�ZĹ�^3$Z���4�Y�-���mV���#-q���)�z��h���9QX��e�v�5eB����hC�f��[4.����J�����#D;Y�9�����˝g�m%�r����Pqs!�D�m��b�i}���.+Q���-��%ߤ���צ^�	��;�g-\�����Nkk���QD�mOLŕ��n��{<q�*�����B��~�c˗Ҵ@�m}7U�ic\�q6S�����G/H
�Dc99�e��?1��YM^���6��}����.�F�艙H�h6�6`=q����XO�s��O�d�� �\B���^Oj	�;��XN�yk��L���ʬ&~*x�$����XM��x����ͤgV�i�XQ��b2�;s�}S�R�B��}�����/�j��[�QI�Z#wiN��Y�X�%��9�(jo����#�Ւ0���$�fQ����/+��#�c+ᨽ"��湜K`;G8ځT��,�?��.�G{!������v(��Ŏ�9�+Y�[/XZ��4�&s͉���;��y�G���ե��k2�j[��1��-Z�hVLrTDa�3�uS�������ȿR9�a�XK��kloOK<m)rx�,e-������R֒�z��e-�yZ��������=E��#�svg5��w�葦r�kpD�7�ҽ�M�e���Uc](l�n�q:gw�'�~p��63,Y��1����e>��Y}�~��khF_�
�ŉ<�O��)�B�d�k�\_!�hQ{)MKk�������i���+T.��������*��z�[\�q7���c9ٗ
�b����}���+Z�iS��t�y5�b���ͫ�^J��	|�Y��m�-�Ѽ�Թu���Kc59�FL��;`5yNal0�h,&�sm�I�e��f}W(p^���ަlG�_�����V`����$YZ�i�b�ɡ�\���br��R�ji�����brX/�D���b�c	~��h,&��M�n�M4*�݃�OX�`qQ��	��#�XL��) 	YZ�i�Kh������PX�9B��ܙ��ԃ�o_{��?���c99����J�%�z���'$�q��ՂV�Bء��*�Z-��8֓�FWc0-�4�W�|�����Pअ��=͈�
%�ɩ���$�ə3���zKc59��?ղ\��Kc5���<�)�sZZ���\t\��XM�)�@E��&��k.��ԃ�y���Տ7�^H���1�oﾓ�64z���ũ%ђm$Ǣ��k.mp�貇�9��5����aڠ�ޥ Kk񖎥��|V�m���&�r�8�ŏ4�����RID��_��f���� ��b\O4<r2H=�Fg�-��<���*��r�Ѩ���B�8�+a�\��h!���(��n�s�)@��юT1[�C�\J���D�m��oč���;x��w��e)�d�hg"_���6GK�s���ۭ�ɿ��'�|�� ����      ;   �  x����n�@��u�U�l�s�̏YÂ�lY����I�$���+�Mi
T	����}���H�+O�㱭L{ˣVj뢖r�jMC/h�V�����헏۹�B�E|�����ߨFty,�UGUM��m�Q҉�u@�v�_L�{iZ���O���_�n���F�{�tl����nE�0M�k��y�&�c��>��c��c�$�5�_�����e�û�_Z�%�[$e���x�: ���b뀤��9�H��:�Ӈ�U�� �[$��c$f������9�_"�H̹�c$ƽs�; �`�; ���]j6\_ݥ�7S�QZ�=@:�H�������?��ǁ�xk|f�X; ���ݧ��
=#�Hl|zD�+Q�t���r���7֎��ߟ?��X�����o7}mֻ��r�21v@⏛�X;�H<; �H<��o�.c$^�Ǟ�!�c$^����������wa���j����!bh�����������c$�c�֪5uQ�\5~o\�[�H��U@��$�c$�?;��"1v@��wv@�����1v@�
c��I��c��]mw�=N:-�HRc�; I��+"�H�rE��I��; �#;��b1v@��4~j=�f�\����a�$��b�$2c��I��s���f ����E�EۜO      =   N   x�3���t���M��LT�!�2��V���IKk@6�l���K-��M& �r�JSik�)ئ�������S� U M      ,      x������ � �     