--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

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
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: migrate_01_asignatura; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrate_01_asignatura (
    id integer NOT NULL,
    nombre character varying(25) NOT NULL,
    descripcion character varying(250) NOT NULL,
    departamento_id integer NOT NULL
);


ALTER TABLE public.migrate_01_asignatura OWNER TO postgres;

--
-- Name: migrate_01_asignatura_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrate_01_asignatura_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrate_01_asignatura_id_seq OWNER TO postgres;

--
-- Name: migrate_01_asignatura_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrate_01_asignatura_id_seq OWNED BY public.migrate_01_asignatura.id;


--
-- Name: migrate_01_departamento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrate_01_departamento (
    nombre character varying(15) NOT NULL,
    departamento_id integer NOT NULL
);


ALTER TABLE public.migrate_01_departamento OWNER TO postgres;

--
-- Name: migrate_01_departamento_departamento_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrate_01_departamento_departamento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrate_01_departamento_departamento_id_seq OWNER TO postgres;

--
-- Name: migrate_01_departamento_departamento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrate_01_departamento_departamento_id_seq OWNED BY public.migrate_01_departamento.departamento_id;


--
-- Name: migrate_01_profesor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrate_01_profesor (
    id integer NOT NULL,
    nombre character varying(25) NOT NULL,
    apellido character varying(25) NOT NULL,
    escuela character varying(30) NOT NULL,
    fecha_de_contratacion date NOT NULL,
    sueldo integer NOT NULL
);


ALTER TABLE public.migrate_01_profesor OWNER TO postgres;

--
-- Name: migrate_01_profesor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrate_01_profesor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrate_01_profesor_id_seq OWNER TO postgres;

--
-- Name: migrate_01_profesor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrate_01_profesor_id_seq OWNED BY public.migrate_01_profesor.id;


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: migrate_01_asignatura id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrate_01_asignatura ALTER COLUMN id SET DEFAULT nextval('public.migrate_01_asignatura_id_seq'::regclass);


--
-- Name: migrate_01_departamento departamento_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrate_01_departamento ALTER COLUMN departamento_id SET DEFAULT nextval('public.migrate_01_departamento_departamento_id_seq'::regclass);


--
-- Name: migrate_01_profesor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrate_01_profesor ALTER COLUMN id SET DEFAULT nextval('public.migrate_01_profesor_id_seq'::regclass);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: migrate_01_asignatura migrate_01_asignatura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrate_01_asignatura
    ADD CONSTRAINT migrate_01_asignatura_pkey PRIMARY KEY (id);


--
-- Name: migrate_01_departamento migrate_01_departamento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrate_01_departamento
    ADD CONSTRAINT migrate_01_departamento_pkey PRIMARY KEY (departamento_id);


--
-- Name: migrate_01_profesor migrate_01_profesor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrate_01_profesor
    ADD CONSTRAINT migrate_01_profesor_pkey PRIMARY KEY (id);


--
-- Name: migrate_01_asignatura_departamento_id_id_75bed1c2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX migrate_01_asignatura_departamento_id_id_75bed1c2 ON public.migrate_01_asignatura USING btree (departamento_id);


--
-- PostgreSQL database dump complete
--

