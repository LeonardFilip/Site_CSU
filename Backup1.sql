PGDMP                  
    {            postgres    16.0    16.0 ?    4           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            5           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            6           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            7           1262    5    postgres    DATABASE     ~   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Romanian_Romania.1250';
    DROP DATABASE postgres;
                postgres    false            8           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    4919                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            9           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            �            1259    16409    echipa    TABLE     �   CREATE TABLE public.echipa (
    echipaid integer NOT NULL,
    categorie character varying(100) NOT NULL,
    calelogo character varying(255) NOT NULL,
    isdeleted boolean DEFAULT false
);
    DROP TABLE public.echipa;
       public         heap    postgres    false            �            1259    16408    echipa_echipaid_seq    SEQUENCE     �   CREATE SEQUENCE public.echipa_echipaid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.echipa_echipaid_seq;
       public          postgres    false    217            :           0    0    echipa_echipaid_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.echipa_echipaid_seq OWNED BY public.echipa.echipaid;
          public          postgres    false    216            �            1259    16417    jucatori    TABLE     �  CREATE TABLE public.jucatori (
    jucatorid integer NOT NULL,
    nume character varying(50) NOT NULL,
    prenume character varying(50) NOT NULL,
    post character varying(50) NOT NULL,
    numar integer NOT NULL,
    datanasterii date NOT NULL,
    nationalitate character varying(50) NOT NULL,
    inaltime integer NOT NULL,
    descriere text,
    caleimagine character varying(255),
    echipaid integer NOT NULL,
    isdeleted boolean DEFAULT false
);
    DROP TABLE public.jucatori;
       public         heap    postgres    false            �            1259    16416    jucatori_jucatorid_seq    SEQUENCE     �   CREATE SEQUENCE public.jucatori_jucatorid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.jucatori_jucatorid_seq;
       public          postgres    false    219            ;           0    0    jucatori_jucatorid_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.jucatori_jucatorid_seq OWNED BY public.jucatori.jucatorid;
          public          postgres    false    218            �            1259    16434    meciuri    TABLE     �  CREATE TABLE public.meciuri (
    meciid integer NOT NULL,
    datameci date NOT NULL,
    echipaid integer NOT NULL,
    adversarid integer NOT NULL,
    locatie character varying(100) NOT NULL,
    scorechipa integer,
    scoradversar integer,
    editia character varying(50) NOT NULL,
    tipcampionat character varying(50) NOT NULL,
    linkmeci text,
    isdeleted boolean DEFAULT false
);
    DROP TABLE public.meciuri;
       public         heap    postgres    false            �            1259    16433    meciuri_meciid_seq    SEQUENCE     �   CREATE SEQUENCE public.meciuri_meciid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.meciuri_meciid_seq;
       public          postgres    false    221            <           0    0    meciuri_meciid_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.meciuri_meciid_seq OWNED BY public.meciuri.meciid;
          public          postgres    false    220            �            1259    16490    media    TABLE     �   CREATE TABLE public.media (
    mediaid integer NOT NULL,
    tipmedia character varying(10) NOT NULL,
    cale character varying(255) NOT NULL,
    stireid integer,
    isdeleted boolean DEFAULT false
);
    DROP TABLE public.media;
       public         heap    postgres    false            �            1259    16489    media_mediaid_seq    SEQUENCE     �   CREATE SEQUENCE public.media_mediaid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.media_mediaid_seq;
       public          postgres    false    229            =           0    0    media_mediaid_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.media_mediaid_seq OWNED BY public.media.mediaid;
          public          postgres    false    228            �            1259    16454    sponsori    TABLE     �   CREATE TABLE public.sponsori (
    sponsorid integer NOT NULL,
    caleimagine character varying(255) NOT NULL,
    numecomplet text NOT NULL,
    linksiteextern text,
    editia character varying(100) NOT NULL,
    isdeleted boolean DEFAULT false
);
    DROP TABLE public.sponsori;
       public         heap    postgres    false            �            1259    16453    sponsori_sponsorid_seq    SEQUENCE     �   CREATE SEQUENCE public.sponsori_sponsorid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.sponsori_sponsorid_seq;
       public          postgres    false    223            >           0    0    sponsori_sponsorid_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.sponsori_sponsorid_seq OWNED BY public.sponsori.sponsorid;
          public          postgres    false    222            �            1259    16474    stiri    TABLE       CREATE TABLE public.stiri (
    stireid integer NOT NULL,
    datapublicarii date NOT NULL,
    titlu character varying(120) NOT NULL,
    continut text,
    userid integer NOT NULL,
    isinfuture boolean DEFAULT false,
    isdeleted boolean DEFAULT false
);
    DROP TABLE public.stiri;
       public         heap    postgres    false            �            1259    16473    stiri_stireid_seq    SEQUENCE     �   CREATE SEQUENCE public.stiri_stireid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.stiri_stireid_seq;
       public          postgres    false    227            ?           0    0    stiri_stireid_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.stiri_stireid_seq OWNED BY public.stiri.stireid;
          public          postgres    false    226            �            1259    16464    users    TABLE     B  CREATE TABLE public.users (
    userid integer NOT NULL,
    username character varying(50) NOT NULL,
    nume character varying(100) NOT NULL,
    prenume character varying(100) NOT NULL,
    passwordhash character varying(64) NOT NULL,
    usertype character varying(20) NOT NULL,
    isdeleted boolean DEFAULT false
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16463    users_userid_seq    SEQUENCE     �   CREATE SEQUENCE public.users_userid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.users_userid_seq;
       public          postgres    false    225            @           0    0    users_userid_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.users_userid_seq OWNED BY public.users.userid;
          public          postgres    false    224            o           2604    16412    echipa echipaid    DEFAULT     r   ALTER TABLE ONLY public.echipa ALTER COLUMN echipaid SET DEFAULT nextval('public.echipa_echipaid_seq'::regclass);
 >   ALTER TABLE public.echipa ALTER COLUMN echipaid DROP DEFAULT;
       public          postgres    false    217    216    217            q           2604    16420    jucatori jucatorid    DEFAULT     x   ALTER TABLE ONLY public.jucatori ALTER COLUMN jucatorid SET DEFAULT nextval('public.jucatori_jucatorid_seq'::regclass);
 A   ALTER TABLE public.jucatori ALTER COLUMN jucatorid DROP DEFAULT;
       public          postgres    false    218    219    219            s           2604    16437    meciuri meciid    DEFAULT     p   ALTER TABLE ONLY public.meciuri ALTER COLUMN meciid SET DEFAULT nextval('public.meciuri_meciid_seq'::regclass);
 =   ALTER TABLE public.meciuri ALTER COLUMN meciid DROP DEFAULT;
       public          postgres    false    221    220    221            |           2604    16493    media mediaid    DEFAULT     n   ALTER TABLE ONLY public.media ALTER COLUMN mediaid SET DEFAULT nextval('public.media_mediaid_seq'::regclass);
 <   ALTER TABLE public.media ALTER COLUMN mediaid DROP DEFAULT;
       public          postgres    false    228    229    229            u           2604    16457    sponsori sponsorid    DEFAULT     x   ALTER TABLE ONLY public.sponsori ALTER COLUMN sponsorid SET DEFAULT nextval('public.sponsori_sponsorid_seq'::regclass);
 A   ALTER TABLE public.sponsori ALTER COLUMN sponsorid DROP DEFAULT;
       public          postgres    false    222    223    223            y           2604    16477    stiri stireid    DEFAULT     n   ALTER TABLE ONLY public.stiri ALTER COLUMN stireid SET DEFAULT nextval('public.stiri_stireid_seq'::regclass);
 <   ALTER TABLE public.stiri ALTER COLUMN stireid DROP DEFAULT;
       public          postgres    false    226    227    227            w           2604    16467    users userid    DEFAULT     l   ALTER TABLE ONLY public.users ALTER COLUMN userid SET DEFAULT nextval('public.users_userid_seq'::regclass);
 ;   ALTER TABLE public.users ALTER COLUMN userid DROP DEFAULT;
       public          postgres    false    225    224    225            %          0    16409    echipa 
   TABLE DATA           J   COPY public.echipa (echipaid, categorie, calelogo, isdeleted) FROM stdin;
    public          postgres    false    217   �I       '          0    16417    jucatori 
   TABLE DATA           �   COPY public.jucatori (jucatorid, nume, prenume, post, numar, datanasterii, nationalitate, inaltime, descriere, caleimagine, echipaid, isdeleted) FROM stdin;
    public          postgres    false    219   �I       )          0    16434    meciuri 
   TABLE DATA           �   COPY public.meciuri (meciid, datameci, echipaid, adversarid, locatie, scorechipa, scoradversar, editia, tipcampionat, linkmeci, isdeleted) FROM stdin;
    public          postgres    false    221   �I       1          0    16490    media 
   TABLE DATA           L   COPY public.media (mediaid, tipmedia, cale, stireid, isdeleted) FROM stdin;
    public          postgres    false    229   �I       +          0    16454    sponsori 
   TABLE DATA           j   COPY public.sponsori (sponsorid, caleimagine, numecomplet, linksiteextern, editia, isdeleted) FROM stdin;
    public          postgres    false    223   �I       /          0    16474    stiri 
   TABLE DATA           h   COPY public.stiri (stireid, datapublicarii, titlu, continut, userid, isinfuture, isdeleted) FROM stdin;
    public          postgres    false    227   J       -          0    16464    users 
   TABLE DATA           c   COPY public.users (userid, username, nume, prenume, passwordhash, usertype, isdeleted) FROM stdin;
    public          postgres    false    225   .J       A           0    0    echipa_echipaid_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.echipa_echipaid_seq', 1, false);
          public          postgres    false    216            B           0    0    jucatori_jucatorid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.jucatori_jucatorid_seq', 1, false);
          public          postgres    false    218            C           0    0    meciuri_meciid_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.meciuri_meciid_seq', 1, false);
          public          postgres    false    220            D           0    0    media_mediaid_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.media_mediaid_seq', 1, false);
          public          postgres    false    228            E           0    0    sponsori_sponsorid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.sponsori_sponsorid_seq', 1, false);
          public          postgres    false    222            F           0    0    stiri_stireid_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.stiri_stireid_seq', 1, false);
          public          postgres    false    226            G           0    0    users_userid_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.users_userid_seq', 1, false);
          public          postgres    false    224                       2606    16415    echipa echipa_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.echipa
    ADD CONSTRAINT echipa_pkey PRIMARY KEY (echipaid);
 <   ALTER TABLE ONLY public.echipa DROP CONSTRAINT echipa_pkey;
       public            postgres    false    217            �           2606    16427    jucatori jucatori_numar_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.jucatori
    ADD CONSTRAINT jucatori_numar_key UNIQUE (numar);
 E   ALTER TABLE ONLY public.jucatori DROP CONSTRAINT jucatori_numar_key;
       public            postgres    false    219            �           2606    16425    jucatori jucatori_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.jucatori
    ADD CONSTRAINT jucatori_pkey PRIMARY KEY (jucatorid);
 @   ALTER TABLE ONLY public.jucatori DROP CONSTRAINT jucatori_pkey;
       public            postgres    false    219            �           2606    16442    meciuri meciuri_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.meciuri
    ADD CONSTRAINT meciuri_pkey PRIMARY KEY (meciid);
 >   ALTER TABLE ONLY public.meciuri DROP CONSTRAINT meciuri_pkey;
       public            postgres    false    221            �           2606    16496    media media_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.media
    ADD CONSTRAINT media_pkey PRIMARY KEY (mediaid);
 :   ALTER TABLE ONLY public.media DROP CONSTRAINT media_pkey;
       public            postgres    false    229            �           2606    16462    sponsori sponsori_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.sponsori
    ADD CONSTRAINT sponsori_pkey PRIMARY KEY (sponsorid);
 @   ALTER TABLE ONLY public.sponsori DROP CONSTRAINT sponsori_pkey;
       public            postgres    false    223            �           2606    16483    stiri stiri_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.stiri
    ADD CONSTRAINT stiri_pkey PRIMARY KEY (stireid);
 :   ALTER TABLE ONLY public.stiri DROP CONSTRAINT stiri_pkey;
       public            postgres    false    227            �           2606    16470    users users_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (userid);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    225            �           2606    16472    users users_username_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_username_key;
       public            postgres    false    225            �           2606    16428    jucatori jucatori_echipaid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.jucatori
    ADD CONSTRAINT jucatori_echipaid_fkey FOREIGN KEY (echipaid) REFERENCES public.echipa(echipaid);
 I   ALTER TABLE ONLY public.jucatori DROP CONSTRAINT jucatori_echipaid_fkey;
       public          postgres    false    217    4735    219            �           2606    16448    meciuri meciuri_adversarid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.meciuri
    ADD CONSTRAINT meciuri_adversarid_fkey FOREIGN KEY (adversarid) REFERENCES public.echipa(echipaid);
 I   ALTER TABLE ONLY public.meciuri DROP CONSTRAINT meciuri_adversarid_fkey;
       public          postgres    false    221    217    4735            �           2606    16443    meciuri meciuri_echipaid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.meciuri
    ADD CONSTRAINT meciuri_echipaid_fkey FOREIGN KEY (echipaid) REFERENCES public.echipa(echipaid);
 G   ALTER TABLE ONLY public.meciuri DROP CONSTRAINT meciuri_echipaid_fkey;
       public          postgres    false    221    4735    217            �           2606    16497    media media_stireid_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.media
    ADD CONSTRAINT media_stireid_fkey FOREIGN KEY (stireid) REFERENCES public.stiri(stireid);
 B   ALTER TABLE ONLY public.media DROP CONSTRAINT media_stireid_fkey;
       public          postgres    false    4749    229    227            �           2606    16484    stiri stiri_userid_fkey    FK CONSTRAINT     y   ALTER TABLE ONLY public.stiri
    ADD CONSTRAINT stiri_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(userid);
 A   ALTER TABLE ONLY public.stiri DROP CONSTRAINT stiri_userid_fkey;
       public          postgres    false    4745    227    225            %      x������ � �      '      x������ � �      )      x������ � �      1      x������ � �      +      x������ � �      /      x������ � �      -      x������ � �     