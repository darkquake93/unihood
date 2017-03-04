--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: taught; Type: TABLE; Schema: public; Owner: unihood; Tablespace: 
--

CREATE TABLE taught (
    taught_id integer NOT NULL,
    module_id integer,
    lecturer_id integer
);


ALTER TABLE public.taught OWNER TO unihood;

--
-- Name: COLUMN taught.module_id; Type: COMMENT; Schema: public; Owner: unihood
--

COMMENT ON COLUMN taught.module_id IS 'References module > module_id';


--
-- Name: COLUMN taught.lecturer_id; Type: COMMENT; Schema: public; Owner: unihood
--

COMMENT ON COLUMN taught.lecturer_id IS 'References lecturer > lecturer_id';


--
-- Name: taught_taught_id_seq; Type: SEQUENCE; Schema: public; Owner: unihood
--

CREATE SEQUENCE taught_taught_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taught_taught_id_seq OWNER TO unihood;

--
-- Name: taught_taught_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: unihood
--

ALTER SEQUENCE taught_taught_id_seq OWNED BY taught.taught_id;


--
-- Name: taught_taught_id_seq; Type: SEQUENCE SET; Schema: public; Owner: unihood
--

SELECT pg_catalog.setval('taught_taught_id_seq', 3, true);


--
-- Name: taught_id; Type: DEFAULT; Schema: public; Owner: unihood
--

ALTER TABLE ONLY taught ALTER COLUMN taught_id SET DEFAULT nextval('taught_taught_id_seq'::regclass);


--
-- Data for Name: taught; Type: TABLE DATA; Schema: public; Owner: unihood
--

INSERT INTO taught VALUES (1, 1, 3);
INSERT INTO taught VALUES (2, 2, 5);
INSERT INTO taught VALUES (3, 3, 7);


--
-- Name: taught_pkey; Type: CONSTRAINT; Schema: public; Owner: unihood; Tablespace: 
--

ALTER TABLE ONLY taught
    ADD CONSTRAINT taught_pkey PRIMARY KEY (taught_id);


--
-- Name: lecturer_id; Type: FK CONSTRAINT; Schema: public; Owner: unihood
--

ALTER TABLE ONLY taught
    ADD CONSTRAINT lecturer_id FOREIGN KEY (lecturer_id) REFERENCES lecturer(lecturer_id);


--
-- Name: module_id; Type: FK CONSTRAINT; Schema: public; Owner: unihood
--

ALTER TABLE ONLY taught
    ADD CONSTRAINT module_id FOREIGN KEY (module_id) REFERENCES module(module_id);


--
-- PostgreSQL database dump complete
--

