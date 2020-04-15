--
-- PostgreSQL database dump
--

-- Dumped from database version 11.0
-- Dumped by pg_dump version 11.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: omdb; Type: DATABASE; Schema: -; Owner: root
--

CREATE DATABASE omdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';


ALTER DATABASE omdb OWNER TO root;

\connect omdb

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: faris
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO faris;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: faris
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: SearchLogs; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public."SearchLogs" (
    id integer NOT NULL,
    endpoint character varying,
    value character varying,
    "createdAt" timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public."SearchLogs" OWNER TO root;

--
-- Name: SearchLogs_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public."SearchLogs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."SearchLogs_id_seq" OWNER TO root;

--
-- Name: SearchLogs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public."SearchLogs_id_seq" OWNED BY public."SearchLogs".id;


--
-- Name: SearchLogs id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public."SearchLogs" ALTER COLUMN id SET DEFAULT nextval('public."SearchLogs_id_seq"'::regclass);


--
-- Data for Name: SearchLogs; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public."SearchLogs" (id, endpoint, value, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Name: SearchLogs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public."SearchLogs_id_seq"', 27, true);


--
-- Name: SearchLogs searchlogs_pk; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public."SearchLogs"
    ADD CONSTRAINT searchlogs_pk PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

