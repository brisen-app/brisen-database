SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Ubuntu 15.1-1.pgdg20.04+1)
-- Dumped by pg_dump version 15.5 (Ubuntu 15.5-1.pgdg20.04+1)

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

--
-- Data for Name: cards; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."cards" ("id", "content") VALUES
	('00000000-0000-0000-0000-000000000000', 'Dette er test kort 0.'),
	('00000000-0000-0000-0000-000000000001', 'Dette er test kort 1.'),
	('00000000-0000-0000-0000-000000000002', 'Dette er test kort 2.');


--
-- Data for Name: packs; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."packs" ("id") VALUES
	('tst0'),
	('tst1');


--
-- Data for Name: pack_card_rel; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."pack_card_rel" ("card", "pack") VALUES
	('00000000-0000-0000-0000-000000000000', 'tst0'),
	('00000000-0000-0000-0000-000000000001', 'tst0'),
	('00000000-0000-0000-0000-000000000000', 'tst1');


--
-- PostgreSQL database dump complete
--

RESET ALL;
