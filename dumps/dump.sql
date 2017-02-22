--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: enrolled; Type: TABLE; Schema: public; Owner: unihood; Tablespace: 
--

CREATE TABLE enrolled (
    enrolled_id integer NOT NULL,
    student_id integer NOT NULL,
    module_id integer NOT NULL
);


ALTER TABLE public.enrolled OWNER TO unihood;

--
-- Name: COLUMN enrolled.student_id; Type: COMMENT; Schema: public; Owner: unihood
--

COMMENT ON COLUMN enrolled.student_id IS 'References student > student_id';


--
-- Name: COLUMN enrolled.module_id; Type: COMMENT; Schema: public; Owner: unihood
--

COMMENT ON COLUMN enrolled.module_id IS 'References module > module_id';


--
-- Name: enrolled_enrolled_id_seq; Type: SEQUENCE; Schema: public; Owner: unihood
--

CREATE SEQUENCE enrolled_enrolled_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.enrolled_enrolled_id_seq OWNER TO unihood;

--
-- Name: enrolled_enrolled_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: unihood
--

ALTER SEQUENCE enrolled_enrolled_id_seq OWNED BY enrolled.enrolled_id;


--
-- Name: enrolled_enrolled_id_seq; Type: SEQUENCE SET; Schema: public; Owner: unihood
--

SELECT pg_catalog.setval('enrolled_enrolled_id_seq', 1, false);


--
-- Name: enrolled_module_id_seq; Type: SEQUENCE; Schema: public; Owner: unihood
--

CREATE SEQUENCE enrolled_module_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.enrolled_module_id_seq OWNER TO unihood;

--
-- Name: enrolled_module_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: unihood
--

ALTER SEQUENCE enrolled_module_id_seq OWNED BY enrolled.module_id;


--
-- Name: enrolled_module_id_seq; Type: SEQUENCE SET; Schema: public; Owner: unihood
--

SELECT pg_catalog.setval('enrolled_module_id_seq', 1, false);


--
-- Name: enrolled_student_id_seq; Type: SEQUENCE; Schema: public; Owner: unihood
--

CREATE SEQUENCE enrolled_student_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.enrolled_student_id_seq OWNER TO unihood;

--
-- Name: enrolled_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: unihood
--

ALTER SEQUENCE enrolled_student_id_seq OWNED BY enrolled.student_id;


--
-- Name: enrolled_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: unihood
--

SELECT pg_catalog.setval('enrolled_student_id_seq', 1, false);


--
-- Name: lecturer; Type: TABLE; Schema: public; Owner: unihood; Tablespace: 
--

CREATE TABLE lecturer (
    lecturer_id integer NOT NULL,
    lecturer_name text NOT NULL,
    lecturer_address text NOT NULL,
    lecturer_email text NOT NULL,
    lecturer_phone text NOT NULL
);


ALTER TABLE public.lecturer OWNER TO unihood;

--
-- Name: lecturer_rating; Type: TABLE; Schema: public; Owner: unihood; Tablespace: 
--

CREATE TABLE lecturer_rating (
    lr_id integer NOT NULL,
    lr_value integer NOT NULL,
    lr_text text NOT NULL,
    student_id integer NOT NULL,
    lecturer_id integer NOT NULL
);


ALTER TABLE public.lecturer_rating OWNER TO unihood;

--
-- Name: COLUMN lecturer_rating.student_id; Type: COMMENT; Schema: public; Owner: unihood
--

COMMENT ON COLUMN lecturer_rating.student_id IS 'References student > student_id';


--
-- Name: COLUMN lecturer_rating.lecturer_id; Type: COMMENT; Schema: public; Owner: unihood
--

COMMENT ON COLUMN lecturer_rating.lecturer_id IS 'References lecturer > lecturer_id';


--
-- Name: lecturerRating_lr_id_seq; Type: SEQUENCE; Schema: public; Owner: unihood
--

CREATE SEQUENCE "lecturerRating_lr_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."lecturerRating_lr_id_seq" OWNER TO unihood;

--
-- Name: lecturerRating_lr_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: unihood
--

ALTER SEQUENCE "lecturerRating_lr_id_seq" OWNED BY lecturer_rating.lr_id;


--
-- Name: lecturerRating_lr_id_seq; Type: SEQUENCE SET; Schema: public; Owner: unihood
--

SELECT pg_catalog.setval('"lecturerRating_lr_id_seq"', 1, true);


--
-- Name: lecturer_lecturer_id_seq; Type: SEQUENCE; Schema: public; Owner: unihood
--

CREATE SEQUENCE lecturer_lecturer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lecturer_lecturer_id_seq OWNER TO unihood;

--
-- Name: lecturer_lecturer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: unihood
--

ALTER SEQUENCE lecturer_lecturer_id_seq OWNED BY lecturer.lecturer_id;


--
-- Name: lecturer_lecturer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: unihood
--

SELECT pg_catalog.setval('lecturer_lecturer_id_seq', 5, true);


--
-- Name: module; Type: TABLE; Schema: public; Owner: unihood; Tablespace: 
--

CREATE TABLE module (
    module_id integer NOT NULL,
    module_name text NOT NULL,
    population integer NOT NULL,
    module_code text NOT NULL
);


ALTER TABLE public.module OWNER TO unihood;

--
-- Name: module_rating; Type: TABLE; Schema: public; Owner: unihood; Tablespace: 
--

CREATE TABLE module_rating (
    mr_id integer NOT NULL,
    mr_value integer NOT NULL,
    mr_text text NOT NULL,
    module_id integer NOT NULL,
    student_id integer NOT NULL
);


ALTER TABLE public.module_rating OWNER TO unihood;

--
-- Name: COLUMN module_rating.module_id; Type: COMMENT; Schema: public; Owner: unihood
--

COMMENT ON COLUMN module_rating.module_id IS 'References module > module_id';


--
-- Name: COLUMN module_rating.student_id; Type: COMMENT; Schema: public; Owner: unihood
--

COMMENT ON COLUMN module_rating.student_id IS 'References student > student_id';


--
-- Name: moduleRating_mr_id_seq; Type: SEQUENCE; Schema: public; Owner: unihood
--

CREATE SEQUENCE "moduleRating_mr_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."moduleRating_mr_id_seq" OWNER TO unihood;

--
-- Name: moduleRating_mr_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: unihood
--

ALTER SEQUENCE "moduleRating_mr_id_seq" OWNED BY module_rating.mr_id;


--
-- Name: moduleRating_mr_id_seq; Type: SEQUENCE SET; Schema: public; Owner: unihood
--

SELECT pg_catalog.setval('"moduleRating_mr_id_seq"', 1, false);


--
-- Name: module_module_id_seq; Type: SEQUENCE; Schema: public; Owner: unihood
--

CREATE SEQUENCE module_module_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.module_module_id_seq OWNER TO unihood;

--
-- Name: module_module_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: unihood
--

ALTER SEQUENCE module_module_id_seq OWNED BY module.module_id;


--
-- Name: module_module_id_seq; Type: SEQUENCE SET; Schema: public; Owner: unihood
--

SELECT pg_catalog.setval('module_module_id_seq', 2, true);


--
-- Name: student; Type: TABLE; Schema: public; Owner: unihood; Tablespace: 
--

CREATE TABLE student (
    student_id integer NOT NULL,
    student_fname text NOT NULL,
    student_lname text NOT NULL,
    student_email text,
    student_phone text,
    student_address text
);


ALTER TABLE public.student OWNER TO unihood;

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

SELECT pg_catalog.setval('taught_taught_id_seq', 2, true);


--
-- Name: teaching_method; Type: TABLE; Schema: public; Owner: unihood; Tablespace: 
--

CREATE TABLE teaching_method (
    tm_id integer NOT NULL,
    tm_name text NOT NULL,
    tm_avg_rating integer NOT NULL
);


ALTER TABLE public.teaching_method OWNER TO unihood;

--
-- Name: teachingMethod_tm_id_seq; Type: SEQUENCE; Schema: public; Owner: unihood
--

CREATE SEQUENCE "teachingMethod_tm_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."teachingMethod_tm_id_seq" OWNER TO unihood;

--
-- Name: teachingMethod_tm_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: unihood
--

ALTER SEQUENCE "teachingMethod_tm_id_seq" OWNED BY teaching_method.tm_id;


--
-- Name: teachingMethod_tm_id_seq; Type: SEQUENCE SET; Schema: public; Owner: unihood
--

SELECT pg_catalog.setval('"teachingMethod_tm_id_seq"', 5, true);


--
-- Name: usage; Type: TABLE; Schema: public; Owner: unihood; Tablespace: 
--

CREATE TABLE usage (
    lecturer_id integer NOT NULL,
    tm_id integer NOT NULL,
    usage_id integer NOT NULL
);


ALTER TABLE public.usage OWNER TO unihood;

--
-- Name: COLUMN usage.lecturer_id; Type: COMMENT; Schema: public; Owner: unihood
--

COMMENT ON COLUMN usage.lecturer_id IS 'References lecturer > lecturer_id';


--
-- Name: COLUMN usage.tm_id; Type: COMMENT; Schema: public; Owner: unihood
--

COMMENT ON COLUMN usage.tm_id IS 'References teachingMethod > tm_id';


--
-- Name: usage_lecturer_id_seq; Type: SEQUENCE; Schema: public; Owner: unihood
--

CREATE SEQUENCE usage_lecturer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usage_lecturer_id_seq OWNER TO unihood;

--
-- Name: usage_lecturer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: unihood
--

ALTER SEQUENCE usage_lecturer_id_seq OWNED BY usage.lecturer_id;


--
-- Name: usage_lecturer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: unihood
--

SELECT pg_catalog.setval('usage_lecturer_id_seq', 1, false);


--
-- Name: usage_tm_id_seq; Type: SEQUENCE; Schema: public; Owner: unihood
--

CREATE SEQUENCE usage_tm_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usage_tm_id_seq OWNER TO unihood;

--
-- Name: usage_tm_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: unihood
--

ALTER SEQUENCE usage_tm_id_seq OWNED BY usage.tm_id;


--
-- Name: usage_tm_id_seq; Type: SEQUENCE SET; Schema: public; Owner: unihood
--

SELECT pg_catalog.setval('usage_tm_id_seq', 1, false);


--
-- Name: usage_usage_id_seq; Type: SEQUENCE; Schema: public; Owner: unihood
--

CREATE SEQUENCE usage_usage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usage_usage_id_seq OWNER TO unihood;

--
-- Name: usage_usage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: unihood
--

ALTER SEQUENCE usage_usage_id_seq OWNED BY usage.usage_id;


--
-- Name: usage_usage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: unihood
--

SELECT pg_catalog.setval('usage_usage_id_seq', 3, true);


--
-- Name: enrolled_id; Type: DEFAULT; Schema: public; Owner: unihood
--

ALTER TABLE ONLY enrolled ALTER COLUMN enrolled_id SET DEFAULT nextval('enrolled_enrolled_id_seq'::regclass);


--
-- Name: student_id; Type: DEFAULT; Schema: public; Owner: unihood
--

ALTER TABLE ONLY enrolled ALTER COLUMN student_id SET DEFAULT nextval('enrolled_student_id_seq'::regclass);


--
-- Name: module_id; Type: DEFAULT; Schema: public; Owner: unihood
--

ALTER TABLE ONLY enrolled ALTER COLUMN module_id SET DEFAULT nextval('enrolled_module_id_seq'::regclass);


--
-- Name: lecturer_id; Type: DEFAULT; Schema: public; Owner: unihood
--

ALTER TABLE ONLY lecturer ALTER COLUMN lecturer_id SET DEFAULT nextval('lecturer_lecturer_id_seq'::regclass);


--
-- Name: lr_id; Type: DEFAULT; Schema: public; Owner: unihood
--

ALTER TABLE ONLY lecturer_rating ALTER COLUMN lr_id SET DEFAULT nextval('"lecturerRating_lr_id_seq"'::regclass);


--
-- Name: module_id; Type: DEFAULT; Schema: public; Owner: unihood
--

ALTER TABLE ONLY module ALTER COLUMN module_id SET DEFAULT nextval('module_module_id_seq'::regclass);


--
-- Name: mr_id; Type: DEFAULT; Schema: public; Owner: unihood
--

ALTER TABLE ONLY module_rating ALTER COLUMN mr_id SET DEFAULT nextval('"moduleRating_mr_id_seq"'::regclass);


--
-- Name: taught_id; Type: DEFAULT; Schema: public; Owner: unihood
--

ALTER TABLE ONLY taught ALTER COLUMN taught_id SET DEFAULT nextval('taught_taught_id_seq'::regclass);


--
-- Name: tm_id; Type: DEFAULT; Schema: public; Owner: unihood
--

ALTER TABLE ONLY teaching_method ALTER COLUMN tm_id SET DEFAULT nextval('"teachingMethod_tm_id_seq"'::regclass);


--
-- Name: lecturer_id; Type: DEFAULT; Schema: public; Owner: unihood
--

ALTER TABLE ONLY usage ALTER COLUMN lecturer_id SET DEFAULT nextval('usage_lecturer_id_seq'::regclass);


--
-- Name: tm_id; Type: DEFAULT; Schema: public; Owner: unihood
--

ALTER TABLE ONLY usage ALTER COLUMN tm_id SET DEFAULT nextval('usage_tm_id_seq'::regclass);


--
-- Name: usage_id; Type: DEFAULT; Schema: public; Owner: unihood
--

ALTER TABLE ONLY usage ALTER COLUMN usage_id SET DEFAULT nextval('usage_usage_id_seq'::regclass);


--
-- Data for Name: enrolled; Type: TABLE DATA; Schema: public; Owner: unihood
--



--
-- Data for Name: lecturer; Type: TABLE DATA; Schema: public; Owner: unihood
--

INSERT INTO lecturer VALUES (3, 'Tim Knowitall', '123 Unknown Street', 'tim.knowit@gmail.com', '0756 293 5942');
INSERT INTO lecturer VALUES (4, 'Slartibartfast', 'Earth MK II', 'itsnotimportant@gmail.com', '0745 999 9999');
INSERT INTO lecturer VALUES (5, 'Vince Noir', 'The Mighty Boosh', 'humancokecan@gmail.com', '0794 304 8765');


--
-- Data for Name: lecturer_rating; Type: TABLE DATA; Schema: public; Owner: unihood
--

INSERT INTO lecturer_rating VALUES (1, 10, 'Awesome lecturer! Never been so interested in fashion before and this guy''s hair is out of this world!', 1, 5);


--
-- Data for Name: module; Type: TABLE DATA; Schema: public; Owner: unihood
--

INSERT INTO module VALUES (1, 'Advanced Apple slicing', 20, 'AP3400');
INSERT INTO module VALUES (2, 'Fashion Analysis', 50, 'FA3090');


--
-- Data for Name: module_rating; Type: TABLE DATA; Schema: public; Owner: unihood
--



--
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: unihood
--

INSERT INTO student VALUES (1, 'Bob', 'Jones', NULL, NULL, NULL);


--
-- Data for Name: taught; Type: TABLE DATA; Schema: public; Owner: unihood
--

INSERT INTO taught VALUES (1, 1, 3);
INSERT INTO taught VALUES (2, 2, 5);


--
-- Data for Name: teaching_method; Type: TABLE DATA; Schema: public; Owner: unihood
--

INSERT INTO teaching_method VALUES (1, 'Slides Only', 3);
INSERT INTO teaching_method VALUES (2, 'Videos only', 7);
INSERT INTO teaching_method VALUES (3, 'Slides and Videos', 6);
INSERT INTO teaching_method VALUES (4, 'Slides and Examples', 8);
INSERT INTO teaching_method VALUES (5, 'Videos and examples', 9);


--
-- Data for Name: usage; Type: TABLE DATA; Schema: public; Owner: unihood
--

INSERT INTO usage VALUES (3, 3, 1);
INSERT INTO usage VALUES (4, 2, 2);
INSERT INTO usage VALUES (5, 3, 3);


--
-- Name: enrolled_pkey; Type: CONSTRAINT; Schema: public; Owner: unihood; Tablespace: 
--

ALTER TABLE ONLY enrolled
    ADD CONSTRAINT enrolled_pkey PRIMARY KEY (enrolled_id);


--
-- Name: lecturerRating_pkey; Type: CONSTRAINT; Schema: public; Owner: unihood; Tablespace: 
--

ALTER TABLE ONLY lecturer_rating
    ADD CONSTRAINT "lecturerRating_pkey" PRIMARY KEY (lr_id);


--
-- Name: lecturer_pkey; Type: CONSTRAINT; Schema: public; Owner: unihood; Tablespace: 
--

ALTER TABLE ONLY lecturer
    ADD CONSTRAINT lecturer_pkey PRIMARY KEY (lecturer_id);


--
-- Name: moduleRating_pkey; Type: CONSTRAINT; Schema: public; Owner: unihood; Tablespace: 
--

ALTER TABLE ONLY module_rating
    ADD CONSTRAINT "moduleRating_pkey" PRIMARY KEY (mr_id);


--
-- Name: module_pkey; Type: CONSTRAINT; Schema: public; Owner: unihood; Tablespace: 
--

ALTER TABLE ONLY module
    ADD CONSTRAINT module_pkey PRIMARY KEY (module_id);


--
-- Name: student_pkey; Type: CONSTRAINT; Schema: public; Owner: unihood; Tablespace: 
--

ALTER TABLE ONLY student
    ADD CONSTRAINT student_pkey PRIMARY KEY (student_id);


--
-- Name: taught_pkey; Type: CONSTRAINT; Schema: public; Owner: unihood; Tablespace: 
--

ALTER TABLE ONLY taught
    ADD CONSTRAINT taught_pkey PRIMARY KEY (taught_id);


--
-- Name: teachingMethod_pkey; Type: CONSTRAINT; Schema: public; Owner: unihood; Tablespace: 
--

ALTER TABLE ONLY teaching_method
    ADD CONSTRAINT "teachingMethod_pkey" PRIMARY KEY (tm_id);


--
-- Name: usage_id; Type: CONSTRAINT; Schema: public; Owner: unihood; Tablespace: 
--

ALTER TABLE ONLY usage
    ADD CONSTRAINT usage_id PRIMARY KEY (usage_id);


--
-- Name: lecturer; Type: FK CONSTRAINT; Schema: public; Owner: unihood
--

ALTER TABLE ONLY lecturer_rating
    ADD CONSTRAINT lecturer FOREIGN KEY (lecturer_id) REFERENCES lecturer(lecturer_id);


--
-- Name: lecturer; Type: FK CONSTRAINT; Schema: public; Owner: unihood
--

ALTER TABLE ONLY usage
    ADD CONSTRAINT lecturer FOREIGN KEY (lecturer_id) REFERENCES lecturer(lecturer_id);


--
-- Name: lecturer_id; Type: FK CONSTRAINT; Schema: public; Owner: unihood
--

ALTER TABLE ONLY taught
    ADD CONSTRAINT lecturer_id FOREIGN KEY (lecturer_id) REFERENCES lecturer(lecturer_id);


--
-- Name: module; Type: FK CONSTRAINT; Schema: public; Owner: unihood
--

ALTER TABLE ONLY module_rating
    ADD CONSTRAINT module FOREIGN KEY (module_id) REFERENCES module(module_id);


--
-- Name: module_id; Type: FK CONSTRAINT; Schema: public; Owner: unihood
--

ALTER TABLE ONLY taught
    ADD CONSTRAINT module_id FOREIGN KEY (module_id) REFERENCES module(module_id);


--
-- Name: module_id; Type: FK CONSTRAINT; Schema: public; Owner: unihood
--

ALTER TABLE ONLY enrolled
    ADD CONSTRAINT module_id FOREIGN KEY (module_id) REFERENCES module(module_id);


--
-- Name: student; Type: FK CONSTRAINT; Schema: public; Owner: unihood
--

ALTER TABLE ONLY lecturer_rating
    ADD CONSTRAINT student FOREIGN KEY (student_id) REFERENCES student(student_id);


--
-- Name: student; Type: FK CONSTRAINT; Schema: public; Owner: unihood
--

ALTER TABLE ONLY module_rating
    ADD CONSTRAINT student FOREIGN KEY (student_id) REFERENCES student(student_id);


--
-- Name: student_id; Type: FK CONSTRAINT; Schema: public; Owner: unihood
--

ALTER TABLE ONLY enrolled
    ADD CONSTRAINT student_id FOREIGN KEY (student_id) REFERENCES student(student_id);


--
-- Name: teachingMethod; Type: FK CONSTRAINT; Schema: public; Owner: unihood
--

ALTER TABLE ONLY usage
    ADD CONSTRAINT "teachingMethod" FOREIGN KEY (tm_id) REFERENCES teaching_method(tm_id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

