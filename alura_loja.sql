PGDMP     $                    |         
   alura_loja %   14.13 (Ubuntu 14.13-0ubuntu0.22.04.1) %   14.13 (Ubuntu 14.13-0ubuntu0.22.04.1)     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16385 
   alura_loja    DATABASE     U   CREATE DATABASE alura_loja WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE alura_loja;
                postgres    false            �            1259    16387    produtos    TABLE     �   CREATE TABLE public.produtos (
    id integer NOT NULL,
    nome character varying,
    descricao character varying,
    preco numeric,
    quantidade integer
);
    DROP TABLE public.produtos;
       public         heap    postgres    false            �            1259    16386    produtos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.produtos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.produtos_id_seq;
       public          postgres    false    210            �           0    0    produtos_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.produtos_id_seq OWNED BY public.produtos.id;
          public          postgres    false    209            a           2604    16390    produtos id    DEFAULT     j   ALTER TABLE ONLY public.produtos ALTER COLUMN id SET DEFAULT nextval('public.produtos_id_seq'::regclass);
 :   ALTER TABLE public.produtos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            �          0    16387    produtos 
   TABLE DATA           J   COPY public.produtos (id, nome, descricao, preco, quantidade) FROM stdin;
    public          postgres    false    210   �
       �           0    0    produtos_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.produtos_id_seq', 5, true);
          public          postgres    false    209            c           2606    16394    produtos produtos_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.produtos
    ADD CONSTRAINT produtos_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.produtos DROP CONSTRAINT produtos_pkey;
       public            postgres    false    210            �   J   x�3�tN��,N-I�(�����\F�n�y�����%�
I�������\&�N�y�W�����W� a�c     