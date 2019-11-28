PGDMP                     
    w            db-sistemas    10.11    10.11 ,               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                        1262    24887    db-sistemas    DATABASE     �   CREATE DATABASE "db-sistemas" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Peru.1252' LC_CTYPE = 'Spanish_Peru.1252';
    DROP DATABASE "db-sistemas";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            !           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            "           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    24890    cat_categorias    TABLE     �   CREATE TABLE public.cat_categorias (
    id_categoria_prod integer NOT NULL,
    nom_categoria_prod character varying(25),
    desc_categoria_prod character varying(50)
);
 "   DROP TABLE public.cat_categorias;
       public         postgres    false    3            �            1259    24888 $   CAT_CATEGORIAS_id_categoria_prod_seq    SEQUENCE     �   CREATE SEQUENCE public."CAT_CATEGORIAS_id_categoria_prod_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public."CAT_CATEGORIAS_id_categoria_prod_seq";
       public       postgres    false    197    3            #           0    0 $   CAT_CATEGORIAS_id_categoria_prod_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."CAT_CATEGORIAS_id_categoria_prod_seq" OWNED BY public.cat_categorias.id_categoria_prod;
            public       postgres    false    196            �            1259    24913    cat_proveedores    TABLE     $  CREATE TABLE public.cat_proveedores (
    id_proveedor integer NOT NULL,
    nom_proveedor character varying(25),
    dir_proveedor character varying(50),
    telefono_proveedor character varying(15),
    email_proveedor character varying(20),
    contacto_proveedor character varying(30)
);
 #   DROP TABLE public.cat_proveedores;
       public         postgres    false    3            �            1259    24911     CAT_PROVEEDORES_id_proveedor_seq    SEQUENCE     �   CREATE SEQUENCE public."CAT_PROVEEDORES_id_proveedor_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."CAT_PROVEEDORES_id_proveedor_seq";
       public       postgres    false    200    3            $           0    0     CAT_PROVEEDORES_id_proveedor_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."CAT_PROVEEDORES_id_proveedor_seq" OWNED BY public.cat_proveedores.id_proveedor;
            public       postgres    false    199            �            1259    24934    detalle_venta    TABLE     �   CREATE TABLE public.detalle_venta (
    id_detalle_venta integer NOT NULL,
    id_venta integer NOT NULL,
    id_prod character varying(25) NOT NULL,
    cantidad_vendida numeric(8,2) NOT NULL
);
 !   DROP TABLE public.detalle_venta;
       public         postgres    false    3            �            1259    24932 "   DETALLE_VENTA_id_detalle_venta_seq    SEQUENCE     �   CREATE SEQUENCE public."DETALLE_VENTA_id_detalle_venta_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."DETALLE_VENTA_id_detalle_venta_seq";
       public       postgres    false    204    3            %           0    0 "   DETALLE_VENTA_id_detalle_venta_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."DETALLE_VENTA_id_detalle_venta_seq" OWNED BY public.detalle_venta.id_detalle_venta;
            public       postgres    false    203            �            1259    24926    ventas    TABLE     r   CREATE TABLE public.ventas (
    id_venta integer NOT NULL,
    monto_venta numeric(8,2),
    fecha_venta date
);
    DROP TABLE public.ventas;
       public         postgres    false    3            �            1259    24924    VENTAS_id_venta_seq    SEQUENCE     �   CREATE SEQUENCE public."VENTAS_id_venta_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."VENTAS_id_venta_seq";
       public       postgres    false    202    3            &           0    0    VENTAS_id_venta_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."VENTAS_id_venta_seq" OWNED BY public.ventas.id_venta;
            public       postgres    false    201            �            1259    24898    cat_productos    TABLE     �  CREATE TABLE public.cat_productos (
    nombre_prod character varying(25) NOT NULL,
    desc_prod character varying(50),
    stock_prod numeric(8,2),
    foto_prod bytea,
    unidad_prod character varying(15),
    precio_compra_prod numeric(8,2),
    precio_venta_prod numeric(8,2),
    existencias_prod numeric(6,2),
    id_categoria_prod integer NOT NULL,
    id_proveedor integer NOT NULL,
    id_prod character varying(25) NOT NULL
);
 !   DROP TABLE public.cat_productos;
       public         postgres    false    3            �
           2604    24893     cat_categorias id_categoria_prod    DEFAULT     �   ALTER TABLE ONLY public.cat_categorias ALTER COLUMN id_categoria_prod SET DEFAULT nextval('public."CAT_CATEGORIAS_id_categoria_prod_seq"'::regclass);
 O   ALTER TABLE public.cat_categorias ALTER COLUMN id_categoria_prod DROP DEFAULT;
       public       postgres    false    197    196    197            �
           2604    24916    cat_proveedores id_proveedor    DEFAULT     �   ALTER TABLE ONLY public.cat_proveedores ALTER COLUMN id_proveedor SET DEFAULT nextval('public."CAT_PROVEEDORES_id_proveedor_seq"'::regclass);
 K   ALTER TABLE public.cat_proveedores ALTER COLUMN id_proveedor DROP DEFAULT;
       public       postgres    false    200    199    200            �
           2604    24937    detalle_venta id_detalle_venta    DEFAULT     �   ALTER TABLE ONLY public.detalle_venta ALTER COLUMN id_detalle_venta SET DEFAULT nextval('public."DETALLE_VENTA_id_detalle_venta_seq"'::regclass);
 M   ALTER TABLE public.detalle_venta ALTER COLUMN id_detalle_venta DROP DEFAULT;
       public       postgres    false    203    204    204            �
           2604    24929    ventas id_venta    DEFAULT     t   ALTER TABLE ONLY public.ventas ALTER COLUMN id_venta SET DEFAULT nextval('public."VENTAS_id_venta_seq"'::regclass);
 >   ALTER TABLE public.ventas ALTER COLUMN id_venta DROP DEFAULT;
       public       postgres    false    202    201    202                      0    24890    cat_categorias 
   TABLE DATA               d   COPY public.cat_categorias (id_categoria_prod, nom_categoria_prod, desc_categoria_prod) FROM stdin;
    public       postgres    false    197   �4                 0    24898    cat_productos 
   TABLE DATA               �   COPY public.cat_productos (nombre_prod, desc_prod, stock_prod, foto_prod, unidad_prod, precio_compra_prod, precio_venta_prod, existencias_prod, id_categoria_prod, id_proveedor, id_prod) FROM stdin;
    public       postgres    false    198   5                 0    24913    cat_proveedores 
   TABLE DATA               �   COPY public.cat_proveedores (id_proveedor, nom_proveedor, dir_proveedor, telefono_proveedor, email_proveedor, contacto_proveedor) FROM stdin;
    public       postgres    false    200   +5                 0    24934    detalle_venta 
   TABLE DATA               ^   COPY public.detalle_venta (id_detalle_venta, id_venta, id_prod, cantidad_vendida) FROM stdin;
    public       postgres    false    204   H5                 0    24926    ventas 
   TABLE DATA               D   COPY public.ventas (id_venta, monto_venta, fecha_venta) FROM stdin;
    public       postgres    false    202   e5       '           0    0 $   CAT_CATEGORIAS_id_categoria_prod_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."CAT_CATEGORIAS_id_categoria_prod_seq"', 1, true);
            public       postgres    false    196            (           0    0     CAT_PROVEEDORES_id_proveedor_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."CAT_PROVEEDORES_id_proveedor_seq"', 1, false);
            public       postgres    false    199            )           0    0 "   DETALLE_VENTA_id_detalle_venta_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."DETALLE_VENTA_id_detalle_venta_seq"', 1, false);
            public       postgres    false    203            *           0    0    VENTAS_id_venta_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."VENTAS_id_venta_seq"', 1, false);
            public       postgres    false    201            �
           2606    24895 "   cat_categorias CAT_CATEGORIAS_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.cat_categorias
    ADD CONSTRAINT "CAT_CATEGORIAS_pkey" PRIMARY KEY (id_categoria_prod);
 N   ALTER TABLE ONLY public.cat_categorias DROP CONSTRAINT "CAT_CATEGORIAS_pkey";
       public         postgres    false    197            �
           2606    24905     cat_productos CAT_PRODUCTOS_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.cat_productos
    ADD CONSTRAINT "CAT_PRODUCTOS_pkey" PRIMARY KEY (id_prod);
 L   ALTER TABLE ONLY public.cat_productos DROP CONSTRAINT "CAT_PRODUCTOS_pkey";
       public         postgres    false    198            �
           2606    24918 $   cat_proveedores CAT_PROVEEDORES_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.cat_proveedores
    ADD CONSTRAINT "CAT_PROVEEDORES_pkey" PRIMARY KEY (id_proveedor);
 P   ALTER TABLE ONLY public.cat_proveedores DROP CONSTRAINT "CAT_PROVEEDORES_pkey";
       public         postgres    false    200            �
           2606    24939     detalle_venta DETALLE_VENTA_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.detalle_venta
    ADD CONSTRAINT "DETALLE_VENTA_pkey" PRIMARY KEY (id_detalle_venta);
 L   ALTER TABLE ONLY public.detalle_venta DROP CONSTRAINT "DETALLE_VENTA_pkey";
       public         postgres    false    204            �
           2606    24931    ventas VENTAS_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT "VENTAS_pkey" PRIMARY KEY (id_venta);
 >   ALTER TABLE ONLY public.ventas DROP CONSTRAINT "VENTAS_pkey";
       public         postgres    false    202            �
           2606    24897 &   cat_categorias nombre_categoria_unique 
   CONSTRAINT     o   ALTER TABLE ONLY public.cat_categorias
    ADD CONSTRAINT nombre_categoria_unique UNIQUE (nom_categoria_prod);
 P   ALTER TABLE ONLY public.cat_categorias DROP CONSTRAINT nombre_categoria_unique;
       public         postgres    false    197            �
           2606    24906 "   cat_productos id_categoria_prod_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.cat_productos
    ADD CONSTRAINT id_categoria_prod_fk FOREIGN KEY (id_categoria_prod) REFERENCES public.cat_categorias(id_categoria_prod);
 L   ALTER TABLE ONLY public.cat_productos DROP CONSTRAINT id_categoria_prod_fk;
       public       postgres    false    197    198    2698            �
           2606    24945    detalle_venta id_prod_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle_venta
    ADD CONSTRAINT id_prod_fk FOREIGN KEY (id_prod) REFERENCES public.cat_productos(id_prod);
 B   ALTER TABLE ONLY public.detalle_venta DROP CONSTRAINT id_prod_fk;
       public       postgres    false    198    204    2702            �
           2606    24919    cat_productos id_proveedor_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.cat_productos
    ADD CONSTRAINT id_proveedor_fk FOREIGN KEY (id_proveedor) REFERENCES public.cat_proveedores(id_proveedor) NOT VALID;
 G   ALTER TABLE ONLY public.cat_productos DROP CONSTRAINT id_proveedor_fk;
       public       postgres    false    198    2704    200            �
           2606    24940    detalle_venta id_venta_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle_venta
    ADD CONSTRAINT id_venta_fk FOREIGN KEY (id_venta) REFERENCES public.ventas(id_venta);
 C   ALTER TABLE ONLY public.detalle_venta DROP CONSTRAINT id_venta_fk;
       public       postgres    false    202    204    2706               &   x�3��(�M���H-*��KT�K,)-J������ �
	M            x������ � �            x������ � �            x������ � �            x������ � �     