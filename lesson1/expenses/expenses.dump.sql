--
-- PostgreSQL database dump
--

-- Dumped from database version 13.6 (Ubuntu 13.6-1.pgdg20.04+1+b1)
-- Dumped by pg_dump version 13.6 (Ubuntu 13.6-1.pgdg20.04+1+b1)

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
-- Name: expenses; Type: TABLE; Schema: public; Owner: fwklaus
--

CREATE TABLE public.expenses (
    id integer NOT NULL,
    amount numeric(6,2) NOT NULL,
    memo text NOT NULL,
    created_on date NOT NULL,
    CONSTRAINT expenses_amount_check CHECK (((amount >= 0.01) AND (amount <= 9999.99)))
);


ALTER TABLE public.expenses OWNER TO fwklaus;

--
-- Name: expenses_id_seq; Type: SEQUENCE; Schema: public; Owner: fwklaus
--

CREATE SEQUENCE public.expenses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.expenses_id_seq OWNER TO fwklaus;

--
-- Name: expenses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fwklaus
--

ALTER SEQUENCE public.expenses_id_seq OWNED BY public.expenses.id;


--
-- Name: expenses id; Type: DEFAULT; Schema: public; Owner: fwklaus
--

ALTER TABLE ONLY public.expenses ALTER COLUMN id SET DEFAULT nextval('public.expenses_id_seq'::regclass);


--
-- Data for Name: expenses; Type: TABLE DATA; Schema: public; Owner: fwklaus
--

INSERT INTO public.expenses VALUES (1, 14.56, 'Pencils', '2022-06-26');
INSERT INTO public.expenses VALUES (2, 3.29, 'Coffee', '2022-06-26');
INSERT INTO public.expenses VALUES (3, 49.99, 'Text Editor', '2022-06-26');
INSERT INTO public.expenses VALUES (4, 3.59, 'More Coffee', '2022-06-26');


--
-- Name: expenses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fwklaus
--

SELECT pg_catalog.setval('public.expenses_id_seq', 4, true);


--
-- Name: expenses expenses_pkey; Type: CONSTRAINT; Schema: public; Owner: fwklaus
--

ALTER TABLE ONLY public.expenses
    ADD CONSTRAINT expenses_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

