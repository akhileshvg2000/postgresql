--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Debian 12.22-1.pgdg110+1)
-- Dumped by pg_dump version 12.22 (Debian 12.22-1.pgdg110+1)

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
-- Name: sales; Type: TABLE; Schema: public; Owner: sp
--

CREATE TABLE public.sales (
    sale_id integer NOT NULL,
    customer_id integer,
    product character varying(50),
    quantity integer,
    price numeric(10,2),
    sale_date date,
    region character varying(20)
);


ALTER TABLE public.sales OWNER TO sp;

--
-- Data for Name: sales; Type: TABLE DATA; Schema: public; Owner: sp
--

COPY public.sales (sale_id, customer_id, product, quantity, price, sale_date, region) FROM stdin;
1	101	Laptop	1	1000.00	2024-01-10	East
2	102	Phone	2	500.00	2024-01-11	West
3	101	Tablet	1	700.00	2024-01-12	East
4	103	Laptop	1	1000.00	2024-01-15	North
5	104	Phone	3	500.00	2024-01-17	South
\.


--
-- Name: sales sales_pkey; Type: CONSTRAINT; Schema: public; Owner: sp
--

ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_pkey PRIMARY KEY (sale_id);


--
-- PostgreSQL database dump complete
--

