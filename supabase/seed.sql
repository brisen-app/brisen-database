SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Ubuntu 15.1-1.pgdg20.04+1)
-- Dumped by pg_dump version 15.6 (Ubuntu 15.6-1.pgdg20.04+1)

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
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."categories" ("id", "icon", "created_at", "modified_at", "gradient") VALUES
	('00000000-0000-0000-0000-000000000002', '🍻', '2024-04-08 15:51:06.49483+00', '2024-04-08 15:51:06.49483+00', NULL),
	('00000000-0000-0000-0000-000000000004', '🚨', '2024-04-08 15:53:07.383837+00', '2024-04-08 18:42:22.060163+00', '{#31000a,#d50a0a,#ff7353}'),
	('00000000-0000-0000-0000-000000000003', '🔪', '2024-04-08 15:52:35.004853+00', '2024-04-08 18:42:49.379888+00', '{#004D0C,#001600}'),
	('00000000-0000-0000-0000-000000000001', '📜', '2024-02-18 12:11:03.71653+00', '2024-04-08 18:50:01.114303+00', '{#462006,#ba793e,#ffd8a1}'),
	('00000000-0000-0000-0000-000000000000', '🪅', '2024-02-18 11:59:48.664549+00', '2024-04-08 19:16:19.940293+00', '{#000414,#215a1b,#d3e388}');


--
-- Data for Name: cards; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."cards" ("id", "content", "created_at", "modified_at", "category", "is_group") VALUES
	('00000000-0000-0000-0000-000000000001', 'Slikk på nippelen til {player1}! Feir med en saftig slurk av drikken til {player-2}.', '2024-02-17 19:01:32.256386+00', '2024-04-06 17:12:35.08522+00', NULL, false),
	('00000000-0000-0000-0000-000000000003', 'Ta på tissen til {player-1}.', '2024-02-17 19:02:51.852885+00', '2024-04-06 17:12:40.262401+00', '00000000-0000-0000-0000-000000000001', false),
	('00000000-0000-0000-0000-000000000002', 'Alle som syntes mammaen til {player-0} er digg tar en megaglugg 🍻', '2024-02-17 19:01:32.256386+00', '2024-04-06 17:13:59.253496+00', '00000000-0000-0000-0000-000000000000', true),
	('00000000-0000-0000-0000-000000000000', 'Ta en seriøst grov slurk og vis hva du er god for!', '2024-02-17 19:01:32.256386+00', '2024-04-06 17:19:57.81365+00', '00000000-0000-0000-0000-000000000000', false),
	('68780e97-4b7e-410f-a60f-30a6e105e6bb', 'Fra nå av får du kun lov til å snakke Engelsk! Blir du tatt i å snakke et annet språk må du ta en slurk.', '2024-04-08 16:31:17.31436+00', '2024-04-08 16:31:17.31436+00', '00000000-0000-0000-0000-000000000004', false),
	('a45c2189-5fc6-4c50-9130-1dc75e59bf6e', 'Førtste kort i en serie', '2024-04-25 16:30:51.752272+00', '2024-05-05 12:00:27.847973+00', NULL, true),
	('aeb1bbee-3538-4ccc-89fc-6c5537ad03b2', 'Andre kort i en serie', '2024-04-25 16:31:03.065479+00', '2024-05-05 12:00:33.130606+00', NULL, true),
	('64ff868f-0c7e-4302-934b-93275d636a4c', 'Tredje kort A i en serie', '2024-04-25 16:31:43.701773+00', '2024-05-05 12:00:36.395927+00', NULL, true),
	('d1ced27c-acef-4cd9-8d80-5efa979e4771', 'Tredje kort B i en serie', '2024-04-25 16:31:17.566337+00', '2024-05-05 12:00:39.149676+00', NULL, true),
	('a2bff976-07c8-481f-b52b-3264bd58aba9', 'Andre kort i serie B', '2024-04-25 16:32:53.986641+00', '2024-05-05 12:00:42.258392+00', NULL, true),
	('aaa4aaf4-0f71-4a83-b62d-d937ffb03980', 'Aller siste kort i hele serien', '2024-04-25 16:33:39.254292+00', '2024-05-05 12:00:45.12124+00', NULL, true);


--
-- Data for Name: card_dependencies; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."card_dependencies" ("child", "parent", "created_at", "modified_at") VALUES
	('64ff868f-0c7e-4302-934b-93275d636a4c', 'aeb1bbee-3538-4ccc-89fc-6c5537ad03b2', '2024-04-25 16:32:06.799387+00', '2024-04-25 16:32:06.799387+00'),
	('d1ced27c-acef-4cd9-8d80-5efa979e4771', 'aeb1bbee-3538-4ccc-89fc-6c5537ad03b2', '2024-04-25 16:32:14.084332+00', '2024-04-25 16:32:14.084332+00'),
	('aeb1bbee-3538-4ccc-89fc-6c5537ad03b2', 'a45c2189-5fc6-4c50-9130-1dc75e59bf6e', '2024-04-25 16:32:30.319173+00', '2024-04-25 16:32:30.319173+00'),
	('a2bff976-07c8-481f-b52b-3264bd58aba9', 'd1ced27c-acef-4cd9-8d80-5efa979e4771', '2024-04-25 16:33:13.517386+00', '2024-04-25 16:33:13.517386+00'),
	('aaa4aaf4-0f71-4a83-b62d-d937ffb03980', 'a2bff976-07c8-481f-b52b-3264bd58aba9', '2024-04-25 16:33:53.810325+00', '2024-04-25 16:33:53.810325+00'),
	('aaa4aaf4-0f71-4a83-b62d-d937ffb03980', 'a45c2189-5fc6-4c50-9130-1dc75e59bf6e', '2024-04-25 16:34:19.122778+00', '2024-04-25 16:34:19.122778+00');


--
-- Data for Name: packs; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."packs" ("id", "created_at", "modified_at", "description", "name", "image") VALUES
	('00000000-0000-0000-0000-000000000003', '2024-03-16 15:35:46.289179+00', '2024-03-31 17:53:44.367955+00', NULL, 'Afterski', 'artworks/winter.jpeg'),
	('00000000-0000-0000-0000-000000000001', '2024-02-17 19:01:32.256386+00', '2024-03-31 17:54:07.012836+00', 'Samle jentene! Det blir høy boblefaktor og dristige utfordringer i denne pakken.', 'Jentekveld', 'artworks/wine.jpeg'),
	('00000000-0000-0000-0000-000000000004', '2024-03-16 15:35:58.086701+00', '2024-03-31 17:54:33.309773+00', NULL, 'Dristig', 'artworks/romance.jpeg'),
	('00000000-0000-0000-0000-000000000000', '2024-02-17 19:01:32.256386+00', '2024-03-31 17:54:45.642174+00', 'Ut i kveld? Gir i gang kvelden med denne spenstige pakken!', 'Vors', 'artworks/beer.jpeg'),
	('00000000-0000-0000-0000-000000000002', '2024-03-16 15:35:30.688519+00', '2024-03-31 17:54:18.859828+00', 'Sett dere i sola, knekk en bjørnunge og nyt varmen med denne solrike pakken! ☀️', 'Sommertid', 'artworks/summer.jpeg');


--
-- Data for Name: card_pack_rel; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."card_pack_rel" ("card", "created_at", "pack", "modified_at") VALUES
	('00000000-0000-0000-0000-000000000001', '2024-02-17 19:01:32.256386+00', '00000000-0000-0000-0000-000000000000', '2024-02-18 11:41:19.519787+00'),
	('00000000-0000-0000-0000-000000000000', '2024-02-17 19:01:32.256386+00', '00000000-0000-0000-0000-000000000001', '2024-02-18 11:41:19.519787+00'),
	('00000000-0000-0000-0000-000000000000', '2024-02-17 19:01:32.256386+00', '00000000-0000-0000-0000-000000000000', '2024-02-18 13:37:56.78302+00'),
	('00000000-0000-0000-0000-000000000002', '2024-02-18 13:59:13.154433+00', '00000000-0000-0000-0000-000000000001', '2024-02-18 13:59:13.154433+00'),
	('00000000-0000-0000-0000-000000000003', '2024-02-18 13:59:26.630469+00', '00000000-0000-0000-0000-000000000001', '2024-02-18 13:59:26.630469+00'),
	('68780e97-4b7e-410f-a60f-30a6e105e6bb', '2024-04-08 16:31:46.014389+00', '00000000-0000-0000-0000-000000000000', '2024-04-08 16:31:46.014389+00'),
	('a45c2189-5fc6-4c50-9130-1dc75e59bf6e', '2024-04-25 22:21:31.196297+00', '00000000-0000-0000-0000-000000000003', '2024-04-25 22:21:31.196297+00'),
	('aeb1bbee-3538-4ccc-89fc-6c5537ad03b2', '2024-04-25 22:21:40.309725+00', '00000000-0000-0000-0000-000000000003', '2024-04-25 22:21:40.309725+00'),
	('64ff868f-0c7e-4302-934b-93275d636a4c', '2024-04-25 22:21:53.259183+00', '00000000-0000-0000-0000-000000000003', '2024-04-25 22:21:53.259183+00'),
	('d1ced27c-acef-4cd9-8d80-5efa979e4771', '2024-04-25 22:22:05.992575+00', '00000000-0000-0000-0000-000000000003', '2024-04-25 22:22:05.992575+00'),
	('a2bff976-07c8-481f-b52b-3264bd58aba9', '2024-04-25 22:22:14.998787+00', '00000000-0000-0000-0000-000000000003', '2024-04-25 22:22:14.998787+00'),
	('aaa4aaf4-0f71-4a83-b62d-d937ffb03980', '2024-04-25 22:22:26.412671+00', '00000000-0000-0000-0000-000000000003', '2024-04-25 22:22:26.412671+00');


--
-- Data for Name: languages; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."languages" ("id", "name", "created_at", "public", "icon", "modified_at") VALUES
	('nb', 'Norsk', '2024-02-18 11:28:50.561967+00', true, '🇳🇴', '2024-02-18 11:40:21.056825+00');


--
-- Data for Name: localizations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."localizations" ("id", "value", "created_at", "language", "modified_at") VALUES
	('app_name', 'Brisen', '2024-02-18 11:33:02.031945+00', 'nb', '2024-02-18 11:40:00.230757+00'),
	('featured', 'Utvalgte', '2024-03-17 10:28:14.066457+00', 'nb', '2024-03-17 10:28:14.066457+00'),
	('out_of_cards', 'Tomt for kort 😵‍💫
Velg en ny pakke for å fortsette!', '2024-03-18 20:46:10.72904+00', 'nb', '2024-03-18 20:52:17.193746+00'),
	('select_pack', '📦 Velg en pakke!', '2024-03-18 20:58:15.945697+00', 'nb', '2024-03-18 20:58:15.945697+00'),
	('back', 'Tilbake', '2024-03-30 18:35:59.848791+00', 'nb', '2024-03-30 18:35:59.848791+00'),
	('no_pack_selected_description', 'Trykk på en pakke for å legge den til i køen og starte et spill.', '2024-03-30 18:46:55.263506+00', 'nb', '2024-03-30 19:23:47.750114+00'),
	('packs', 'Pakker', '2024-02-18 11:33:12.926317+00', 'nb', '2024-03-31 14:27:19.774712+00'),
	('add_players', 'Legg til spillere', '2024-04-06 07:32:09.962815+00', 'nb', '2024-04-06 17:24:20.270395+00'),
	('categories_00000000-0000-0000-0000-000000000000_title', 'Kategori', '2024-02-18 12:04:21.602601+00', 'nb', '2024-04-08 15:49:08.77881+00'),
	('categories_00000000-0000-0000-0000-000000000001_desc', 'Fortell sannheten, hvis du ikke tør må du ta en shot!', '2024-02-18 12:12:37.805169+00', 'nb', '2024-04-08 15:49:58.993438+00'),
	('categories_00000000-0000-0000-0000-000000000004_title', 'Regel', '2024-04-08 16:29:57.793641+00', 'nb', '2024-04-08 16:29:57.793641+00'),
	('categories_00000000-0000-0000-0000-000000000001_title', 'Storytime', '2024-02-18 12:05:16.042279+00', 'nb', '2024-04-08 19:36:01.366479+00'),
	('restart_game', 'Start på nytt', '2024-04-14 15:41:36.679874+00', 'nb', '2024-04-14 15:41:36.679874+00');


--
-- PostgreSQL database dump complete
--

RESET ALL;
