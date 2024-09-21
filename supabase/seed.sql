SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Ubuntu 15.1-1.pgdg20.04+1)
-- Dumped by pg_dump version 15.7 (Ubuntu 15.7-1.pgdg20.04+1)

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
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."categories" ("id", "icon", "created_at", "modified_at", "gradient") VALUES
	('2c4c6639-8cf6-4028-aff4-6ac52d6a0833', '🙊', '2023-07-14 09:47:00+00', '2024-09-21 13:49:04.310573+00', '{#e7c480,#603301}'),
	('5ef92b9f-4b1f-4474-815d-a2b05d3dcb7a', '💸', '2023-04-09 19:42:00+00', '2024-09-21 13:49:04.313248+00', '{#0b1c17,#1b3825,#587140}'),
	('01f0c6d8-71d9-4132-8788-ffdc92a716ce', '📦', '2023-04-09 19:42:00+00', '2024-09-21 13:49:04.31375+00', '{#380b0b,#b7600f,#fdbf76}'),
	('e24d762a-b9db-4af0-b74c-f7f44a926063', '🥜', '2023-04-09 19:42:00+00', '2024-09-21 13:49:04.318587+00', '{#603301,#e7c480}'),
	('202b389e-ddf4-41c2-a57a-330279c33e08', '👉🏽', '2023-04-09 19:42:00+00', '2024-09-21 13:49:04.275703+00', '{#59131b,#a56b2b}'),
	('b390058c-76f6-497b-a3c5-aeebee9cd6a1', '😳', '2023-04-09 19:42:00+00', '2024-09-21 13:49:04.275117+00', '{#13193b,#44a8a2,#5a9cff}'),
	('5f85d9e5-097b-483c-a0f0-d153b37ed454', '🔪', '2023-04-09 19:42:00+00', '2024-09-21 13:49:04.273662+00', '{#3b413b,#524b4b,#1d211c}'),
	('8405fd17-5800-460b-af59-3430911cf217', '👍🏼', '2024-07-20 13:28:00+00', '2024-09-21 13:49:04.278398+00', '{#dd2222}'),
	('9043927d-8a57-4e04-afb8-c6ae9918cfc2', '📜', '2023-04-09 19:42:00+00', '2024-09-21 13:49:04.283081+00', '{#323e29,#ccef81}'),
	('bdd63b79-f625-4201-9a8d-e2c3d0283d7a', '💥', '2023-04-09 19:42:00+00', '2024-09-21 13:49:04.278+00', '{#af0c04,#e05f02,#ffd84e}'),
	('e8a491c8-dcee-49f7-8a6f-d5e2922357f3', '🚨', '2023-04-09 19:42:00+00', '2024-09-21 13:49:04.291147+00', '{#151113,#184269}'),
	('4b25eee2-c470-4527-a3cf-bbad6929d5a8', '💯', '2023-04-09 19:42:00+00', '2024-09-21 13:49:04.302661+00', '{#3c1010,#dd2222,#ff7d60}'),
	('f5833f63-74b6-4000-bee9-bbc3948ef41d', '⚖️', '2024-07-20 13:28:00+00', '2024-09-21 13:49:04.308665+00', '{#fff48e}');


--
-- Data for Name: cards; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."cards" ("id", "content", "created_at", "modified_at", "category", "is_group", "header") VALUES
	('d88e9b71-98a0-4cf1-8bf7-8ae70da73801', 'Never have I ever faked sick from work.', '2024-08-02 14:56:00+00', '2024-09-21 13:49:08.878282+00', 'b390058c-76f6-497b-a3c5-aeebee9cd6a1', true, NULL),
	('3be8c49a-adc4-4e87-bde5-2d9dd7e65358', 'Du spant ut en gang for mye, og denne gangen kostet det deg livet 🪦 Du skal derfor ikke lenger refereres til som Mazespin. Feir med å dele ut 4 slurker.', '2024-07-20 13:41:00+00', '2024-09-21 13:49:08.886468+00', 'e8a491c8-dcee-49f7-8a6f-d5e2922357f3', false, NULL),
	('d455e81f-205c-437a-987c-db2d41247438', 'Du vinner enda et GP! Sprut champagne på taperne og del ut 2 slurker.', '2024-07-20 11:54:00+00', '2024-09-21 13:49:08.898741+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', false, 'Red Bull'),
	('c1e90599-9541-4aaf-9917-d6a11b9a5d8b', 'Beklager! {player-0} og {player-1} har blitt signert til Haas! Sett dere sammen, hver gang en av dere drikker må den andre drikke!', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.930113+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', true, 'Silly Season'),
	('ddded1ba-29ba-406c-b60d-0b922bef63f4', 'Å, nei! {player-0} og {player-1} har fått rich energy som sponsor! Dere tar 2 slurker hver og revurderer egen evne til å velge sponsorer.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.934591+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', true, NULL),
	('a54d8e19-d33b-498d-bde9-502089330474', 'Gratulerer! {player-0} og {player-1} har blitt signert til Mercedes! Sett dere sammen, hver gang en av dere drikker må den andre drikke!', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.937105+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', true, 'Silly Season'),
	('a6259234-7b6a-4138-8e0d-6a84898fa94e', 'Gratulerer! {player-0} og {player-1} har blitt signert til Red Bull! Sett dere sammen, hver gang en av dere drikker må den andre drikke!', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.957414+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', true, 'Silly Season'),
	('47f4a4c8-f100-4582-83f0-d6f0592f92ac', 'Ord som rimer på “Stryk”.', '2024-07-08 15:29:00+00', '2024-09-21 13:49:08.968459+00', '01f0c6d8-71d9-4132-8788-ffdc92a716ce', false, NULL),
	('f260d516-b9b1-4725-942b-48ace3a0e6e4', 'Hvem vinner årets drivers championship? Hvorfor? Om du valgte Max er du en basic bitch og må ta 3 slurker.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.975003+00', NULL, false, NULL),
	('036a98ec-b8a6-4924-8f0f-8df8bb9452d0', 'Beskriv en gang du har hatt sex med sensuell og erotisk fortellerstemme. Dersom ingen blir kåte må du straffes med 4 slurker.', '2023-06-30 13:14:00+00', '2024-09-21 13:49:08.996328+00', NULL, false, NULL),
	('60baa1e3-31a0-4d1e-9c48-d96c1b908dde', 'Du blir slått til ridder! Alle som glemmer å referere til deg som Sir Loois havner i Stroll-fanclub og må ta 1 slurk.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.999654+00', 'e8a491c8-dcee-49f7-8a6f-d5e2922357f3', false, NULL),
	('5c3d3ae7-417f-42f2-87aa-3dac03b51beb', 'Ta 1 dyrisk slurk og etterlign en opphisset gorilla 🦍', '2023-06-30 13:56:00+00', '2024-09-21 13:49:09.010368+00', NULL, false, NULL),
	('05ed9fb5-d78a-4dda-ba31-9b8ee2bc54bc', 'Ta 3 slurker, mimre tilbake og fortell om ditt første kyss 😘', '2023-06-30 13:55:00+00', '2024-09-21 13:49:09.034166+00', '2c4c6639-8cf6-4028-aff4-6ac52d6a0833', false, NULL),
	('73a197bb-3096-4b0c-b665-9eba43beacd4', 'Jeg har aldri ligget med flere enn 15 ulike personer.', '2023-06-30 12:52:00+00', '2024-09-21 13:49:09.048361+00', 'b390058c-76f6-497b-a3c5-aeebee9cd6a1', true, NULL),
	('10750be6-6081-4d93-9c98-34dfe004c55f', 'Hvem må dra hjem? 🏠 😈', '2024-06-09 17:05:00+00', '2024-09-21 13:49:09.125142+00', '202b389e-ddf4-41c2-a57a-330279c33e08', true, NULL),
	('c82f5dd6-7fb9-4c56-9ba9-368e554cafeb', 'Never have I ever peed in a pool.', '2024-08-02 14:59:00+00', '2024-09-21 13:49:08.881766+00', 'b390058c-76f6-497b-a3c5-aeebee9cd6a1', true, NULL),
	('578ff055-66fc-42cc-a212-b33ffad8a936', 'FIA oppdatere regelboka igjen! De velger å fjerne den idiotiske regelen til {player0} og lar {player1} lage en ny og bedre regel! 🏎️', '2024-07-20 10:33:00+00', '2024-09-21 13:49:08.89107+00', 'e8a491c8-dcee-49f7-8a6f-d5e2922357f3', false, NULL),
	('4a3b3ce0-5fc9-4a68-9c1e-e59e957068ee', '{player-0} og {player-1} kræsjer i hverandre! Dette er en grufull dag for Mercedes! Drukne sorgene med 3 slurker.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.922936+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', true, 'Mercedes'),
	('41f9db10-76c7-425f-9c35-758b42fcb10c', 'Du og {player1} kræsjer i hverandre! Dette er en grufull dag for Red Bull! Drukne sorgene med 3 slurker.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.924915+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', false, 'Red Bull'),
	('ef09bbfa-5ae0-42f0-81ea-03a6dfa68f95', 'Motoren til {player-0} tar plutselig fyr! Dette er en grufull dag for Ferrari! Drukne sorgene med 2 slurker.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.926034+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', false, NULL),
	('dd7689bf-89bb-41b7-8f15-46ee3612e427', 'Ferrari vinner et GP! {player-0} og {player-1} spruter champagne på de andre og deler ut 6 slurker.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.951158+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', true, NULL),
	('3c253e01-0070-4a90-b151-a30e01c7ee2c', 'Kategorien er fag 📚', '2024-07-08 15:32:00+00', '2024-09-21 13:49:08.985438+00', '01f0c6d8-71d9-4132-8788-ffdc92a716ce', false, NULL),
	('0ac66f27-4fca-464a-b8b6-4f399095caf9', 'Stresset over å holde utroskapen hemmelig tar på for {player-0} og {player-1}. De melder seg derfor inn i Hverdagsalkoholiker-foreningen. Ta 4 slurker hver.', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.093113+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', true, 'Skitur! ⛷️'),
	('f99188ab-1181-4c46-9d26-0c6c7c2a28d9', 'Fristen på obligen til {player-4} og {player-5} nærmer seg, og dere har ikke startet engang! Få rævva i gir med #2 slurker hver.', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.103534+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', true, 'Obligatorisk Innlevering'),
	('ff10d713-dbce-4a31-8c20-0ea82d65124b', 'Hvem har de beste karakterene?', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.118729+00', '202b389e-ddf4-41c2-a57a-330279c33e08', true, NULL),
	('e4140bf0-38c8-4c05-8618-54cb1ce659c0', '{player-1} er lei av å snike seg bak ryggen på {player-2} med {player-0} og avslører forholdet! {player-2} sklir inn i en tung depresjon mens elskerne fortsetter affæren. {player-2}, ta 5 depresive slurker.', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.125397+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', true, 'Skitur! ⛷️'),
	('4906b9dd-5393-4c0f-a0ca-a3f8f9e990b9', '{player-4} og {player-5} rakk såvidt å levere obligen! Dere venter spent på resultatet. Feir med #2 slurker hver.', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.134086+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', true, 'Obligatorisk Innlevering'),
	('b628ee86-39a6-4334-ad0c-1d4c65dda890', 'Oioioi, {player-2} og {player-3} ble dritings under obligarbeidet og leverte et støtende manifest istedenfor oppgaven. Dere får hver deres dom og blir strippet for alle akademiske resultater. Begge havner derfor på bunn av karakter-stigen og er ikke lenger på gruppe sammen.', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.145758+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', true, 'Obligatorisk Innlevering'),
	('0a6ae451-c873-48ae-9871-1e79a0aa2e76', 'Det går så dårlig med økonomien at du ikke har råd til drikke engang! Ta fram et glass og samle inn en slant fra alle de andres enheter. Hell nedpå!', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.127313+00', NULL, false, NULL),
	('c9e84530-7f99-437f-be00-eb4c1f11b772', 'På Hverdagsalkoholiker-møtene går det i rimelig tung rus, og før {player-0} og {player-1} vet ordet av det har de ligget sammen igjen! Demp skyldfølelsen med 3 slurker hver.', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.132799+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', true, 'Skitur! ⛷️'),
	('a02cbc63-ccd6-4ea7-8da6-c47e9f07eedd', 'Hvem ville du helst hatt sex med?', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.145895+00', '4b25eee2-c470-4527-a3cf-bbad6929d5a8', false, NULL),
	('098c878a-e769-4c86-abdf-f57acdf75143', 'Never have I ever gone skinny dipping.', '2024-08-02 14:58:00+00', '2024-09-21 13:49:08.878107+00', 'b390058c-76f6-497b-a3c5-aeebee9cd6a1', true, NULL),
	('eac05dae-1668-4f46-a7ae-46845440e06e', 'Du vinner enda et GP! Sprut champagne på taperne og del ut 2 slurker.', '2024-07-20 11:54:00+00', '2024-09-21 13:49:08.886644+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', false, 'Red Bull'),
	('3040bc95-471f-475d-a248-cdb82a70aeee', 'Du vinner enda et GP! Sprut champagne på taperne og del ut 2 slurker.', '2024-07-20 11:51:00+00', '2024-09-21 13:49:08.889358+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', false, 'Red Bull'),
	('9b584b4d-4c39-48c7-9bee-f89e59e028f3', 'Sesongen til Red Bull er over og endte som vanlig på topp av både drivers- og constructors championship. {player-0} kan dele ut 4 slurker på grunn av sin strålende prestasjon. {player-2} kan dele ut 1 og skjerpe seg til neste sesong.', '2024-07-20 14:46:00+00', '2024-09-21 13:49:08.897444+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', true, 'Red Bull'),
	('9f2840e6-70b7-4b21-9604-c8174b58ebba', 'Mercedes vinner et GP! {player-0} og {player-1} spruter champagne på de andre og deler ut 6 slurker.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.899541+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', true, 'Mercedes'),
	('a55ad6f6-fd44-435a-8b6c-4db69fe39c23', 'Du må inn for et pit stop, men er andresjåføren for Mercedes! Ta 2 slurker mens du venter på at de skal få av det jævela hjulet.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.948868+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', false, 'Mercedes'),
	('e3cb02ca-2622-4986-909e-f0caa80da94f', 'Ta 1 god slurk og del din største seksuelle fantasi.', '2023-06-30 16:53:00+00', '2024-09-21 13:49:09.026644+00', '2c4c6639-8cf6-4028-aff4-6ac52d6a0833', false, NULL),
	('983f4528-0893-44b2-9160-6c1a33a156ea', 'Max suste forbi deg i siste runde av siste race i sesongen. Du blir strippet for ridder-tittelen og kan derfor ikke lenger refereres til som Sir Loois. Drukne sorgene i 4 slurker.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:09.037377+00', 'e8a491c8-dcee-49f7-8a6f-d5e2922357f3', false, NULL),
	('fe9cdb34-746b-4268-a931-bbff10674d77', 'Fortell om den beste og den dårligste sexen du har hatt.', '2023-06-30 17:04:00+00', '2024-09-21 13:49:09.047513+00', '2c4c6639-8cf6-4028-aff4-6ac52d6a0833', false, NULL),
	('eba88821-c3dd-429c-a64d-dc18a9678212', 'Ta 2 slurker og avslør om du pleier å være ærlig når du får spørsmal om antall sexpartnere.', '2023-06-30 13:51:00+00', '2024-09-21 13:49:09.04411+00', '2c4c6639-8cf6-4028-aff4-6ac52d6a0833', false, NULL),
	('7bc0827d-d093-445a-bfd8-287e00d1e5d5', '{player-2} og {player-3} jobber intenst med obligen. Det går lett og fint, så dere tar dere noen øl til arbeidet. Ta #4 slurker hver.', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.05114+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', true, 'Obligatorisk Innlevering'),
	('1ab5b537-6e31-4a67-ad35-3a1b5a710364', 'Ta 2 slurker med ærlighet og avslør din flaueste guilty pleasure 😏', '2023-06-30 13:35:00+00', '2024-09-21 13:49:09.012528+00', '2c4c6639-8cf6-4028-aff4-6ac52d6a0833', false, NULL),
	('92d65282-58be-4428-9528-074b367631b6', 'Det nærmer seg slutten av semesteret og den nederste på karakter-stigen har bygget et intenst hat mot de andre studentene. Roast resten av gjengen og ta en gruppeskål for hver roast.', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.072812+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', true, NULL),
	('cfa78c80-9e0b-4773-9ff4-6f911e2cad9f', 'Be den av det motsatte kjønn med finest rumpe reise seg. Beføl rumpa som du selv vil, og tildel rumpa 3 slurker.', '2023-06-30 13:01:00+00', '2024-09-21 13:49:09.072881+00', NULL, false, NULL),
	('cdc2838b-9479-4659-97aa-8d928ef0f0ee', 'Vis fram det beste partytrikset ditt og drikk terningkastet du får av gruppen 🎲', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.095396+00', 'e24d762a-b9db-4af0-b74c-f7f44a926063', false, NULL),
	('ea30a00e-a25c-40b1-a715-0ebd1f67ab8d', 'Vi har skjønt det nå {player-0}, du kan slutte å si "Jeg er kåt" hele tiden. 😂', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.112564+00', 'e8a491c8-dcee-49f7-8a6f-d5e2922357f3', true, NULL),
	('6ad208cd-811f-4c5d-9623-f408590f29e3', 'Finn på kallenavn til de andre deltakerne! Hver gang disse glemmes må man ta en slurk!', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.123066+00', 'e8a491c8-dcee-49f7-8a6f-d5e2922357f3', false, 'Kallenavn'),
	('8dfac1eb-f639-4673-a2d5-4cd3e66ed38d', '{player-0} på {player-1}. Gjetter man feil er straffen 3 slurker.', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.146584+00', 'e24d762a-b9db-4af0-b74c-f7f44a926063', true, 'Pikk eller Pung'),
	('d8bdf081-b011-455d-8545-aefbdd455a24', 'La en valgfri person beføle puppen din med én hand. Med den andre handa skal personen drikke helt til befølingen stopper. Husk å be om lov ❤️', '2023-06-30 13:02:00+00', '2024-09-21 13:49:09.153258+00', 'e24d762a-b9db-4af0-b74c-f7f44a926063', false, NULL),
	('6956a4a1-5554-4619-94cd-5bcf1bbd9b73', 'Be de andre gjette hva du veier 🏋🏽‍♀️ Drikk antall kilo de bommer med.', '2023-06-30 13:00:00+00', '2024-09-21 13:49:09.154681+00', NULL, false, NULL),
	('97d663f0-19d7-49e5-8c59-d563e64811f9', 'Planen er klar! {player-1} tar med seg bananskall og skilpadder på neste quali og hiver dem ut foran {player-0} 🍌 Dette har merkelig nok svært liten effekt og etter en saftig regle fra PETA blir du bøtelagt med 4 slurker.', '2024-07-20 11:56:00+00', '2024-09-21 13:49:08.895652+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', true, 'Red Bull'),
	('a7b06813-f3e3-4045-b07e-5114468a4321', 'Du vinner enda et GP! Sprut champagne på taperne og del ut 2 slurker.', '2024-07-20 11:54:00+00', '2024-09-21 13:49:08.908219+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', false, 'Red Bull'),
	('5473dd2a-05d6-4a0b-9886-65b280c86384', 'Beklager! {player-0} og {player-1} har blitt signert til Ferrari! Sett dere sammen og ta på klovneneser, hver gang én av dere drikker må den andre drikke! 🤡', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.93164+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', true, 'Silly Season'),
	('68e72dce-db8d-45d5-9035-6c8acf635845', 'Haas vinner et GP! Hahah, bare kødda! Ta 3 slurker hver 🥲', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.929682+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', false, NULL),
	('7b7d485d-8380-4acf-9bd9-82cfbfff9fe6', 'Mazepin i en Red Bull, eller Max i en Williams? Hvem vinner og hvem Mazespinner ut? Ta 2 slurker for gutta!', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.958864+00', 'f5833f63-74b6-4000-bee9-bbc3948ef41d', false, NULL),
	('36037753-af88-4d74-8b01-4fa02283970a', 'Kyss den peneste personen i rommet 😘', '2023-06-30 13:38:00+00', '2024-09-21 13:49:08.988463+00', 'e24d762a-b9db-4af0-b74c-f7f44a926063', false, NULL),
	('a0b549d4-2c04-4bb0-89c7-07f223256d2c', 'Ta 2 slurker og kom med noen tips til det motsatte kjønn angående oralsex 👅🍆', '2023-06-30 13:52:00+00', '2024-09-21 13:49:08.992304+00', NULL, false, NULL),
	('4b0fea66-f6ab-4342-a5b3-ef1e9e5c8440', 'Du vinner helgens Grand Prix med {player1} hakk i hel! Sprut champagne på taperne og del ut 6 slurker.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:09.003591+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', false, 'Red Bull'),
	('0072f5bf-8448-4bc5-b838-0ed92afcc521', 'Ta 2 slurker og råklin med {player-1} i minst 30 sekunder 👅 Bruk tunge!', '2023-06-30 13:53:00+00', '2024-09-21 13:49:09.033015+00', 'e24d762a-b9db-4af0-b74c-f7f44a926063', false, NULL),
	('733d24d0-cc33-464e-b062-5ad259f3f2a8', 'Beskriv deg selv i senga med 3 ord, og ta 1 gruppeskål for hver av dem.', '2023-06-30 13:03:00+00', '2024-09-21 13:49:09.06194+00', NULL, false, NULL),
	('c9a19b18-2cc4-4596-892e-466318fb5fe4', 'Jeg har aldri hatt sex på jobben 🏢', '2023-06-30 12:53:00+00', '2024-09-21 13:49:09.059726+00', 'b390058c-76f6-497b-a3c5-aeebee9cd6a1', true, NULL),
	('24df8a3b-1442-453d-8e5c-b8d3d7fed660', 'Never have I ever overdrafted my bank account.', '2024-08-02 15:00:00+00', '2024-09-21 13:49:09.082608+00', 'b390058c-76f6-497b-a3c5-aeebee9cd6a1', true, NULL),
	('a61d17b9-7653-4b5d-a864-3af3d9e6183c', 'Hvem sin mor eller far ville du ha pult?', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.091866+00', '4b25eee2-c470-4527-a3cf-bbad6929d5a8', false, NULL),
	('2e8fc7af-8d8e-438a-8b45-9fe5028d17cf', 'Bistand fra Lånekassen strekker ikke helt til, så du har begynt å samle panteflasker for å ha råd til mat. Ta en pose og samle sammen tomgods, du får dele ut 1 slurk per enhet.', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.092695+00', NULL, false, NULL),
	('8d3e8063-5d98-410b-9881-6fdafe2dfde5', 'Avslutt hver setning med "Jeg er kåt" 🍆 Ta en slurk hver gang du glemmer deg.', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.104337+00', 'e8a491c8-dcee-49f7-8a6f-d5e2922357f3', false, NULL),
	('d31f9ed7-f174-4f96-b377-a9d259515ff0', 'Stresset med eksamen og obliger tar overhånd! I et svakt øyeblikk melder deg inn i Hverdagsalkoholoker-foreningen.', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.101853+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', false, 'Hverdagsalkoholikerne 🍹'),
	('f816dbe9-830f-467d-956d-cca2f1ad16bc', 'Du kan kle på deg igjen og dele ut 8 slurker hvis du beholdt plagget av hele tiden!', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.110899+00', NULL, false, NULL),
	('e0894a72-978c-4509-838a-df0cc19f3852', 'Fakultetet har fått ferten av hva som foregår på møtene deres og inndrar alle midler. Dere må sammen dele ut 10 slurker til de som ikke er med i foreningen.', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.125296+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', false, 'Hverdagsalkoholikerne 🍹'),
	('6405ad45-631a-4cb7-837c-7cf95d4d83a5', 'Andreføreren glemmer å drikke når du drikker alt for mange ganger og må ta igjen med hvertfall 4 slurker', '2024-07-20 14:56:00+00', '2024-09-21 13:49:08.884034+00', 'e8a491c8-dcee-49f7-8a6f-d5e2922357f3', false, NULL),
	('c3e1a7b8-e3be-4c5b-bab9-1df239309c35', 'Fra nå av skal du kun refereres til som Mazespin! Du må reise deg og spinne rundt hver gang du skal drikke! De som glemmer seg havner i Hamilton-fanclub og må ta 1 slurk.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.910965+00', 'e8a491c8-dcee-49f7-8a6f-d5e2922357f3', false, NULL),
	('26fd9af3-b31c-4ca4-a59d-f5569dd7e1ca', 'Kontrakten til {player-1} blir terminert på grunn av dårlig prestasjon og aktiv sabotasje! {player-2} tar både setet og kjæresten! Gi {player-1} 3 slurker og bytt plasser.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.946318+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', true, 'Red Bull'),
	('a4bb45b6-6509-4334-8c4f-6807abdd5042', '{player-0} og {player-1} kommer sist igjen og ut ser ut som en buch of wankers! Dette er en vanlig dag for Haas! Drukne sorgene med 3 slurker hver.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.946038+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', true, NULL),
	('090a3a8b-8a71-48d9-b6c0-357b84adfb08', 'Velg ut din andrefører! Hver gang du drikker, så må den andre også drikke.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.971897+00', 'e8a491c8-dcee-49f7-8a6f-d5e2922357f3', false, NULL),
	('db1c63fa-9966-4b84-a6f0-acd444167bcd', 'Bytt klær med {player-1} 👙 Dere får dele ut 5 slurker hver dersom dere går så langt som å bytte undertøy 😘', '2023-06-30 13:28:00+00', '2024-09-21 13:49:08.987266+00', 'e24d762a-b9db-4af0-b74c-f7f44a926063', false, NULL),
	('c1fd3cc3-4634-4e94-84b8-3bfb09207d96', 'Beskriv deg selv med 3 ord. Bruker du mer enn 5 sekunder må du ta 5 slurker! Klar, ferdig, gå!', '2023-06-30 13:12:00+00', '2024-09-21 13:49:08.995507+00', NULL, false, NULL),
	('bbf67c98-2e27-420e-8f8e-917026e6cb9c', 'Etterlign dine egne sexlyder i 10 sekunder. Avslutt med orgasmen og 2 grisete slurker...', '2023-06-30 16:55:00+00', '2024-09-21 13:49:08.997263+00', 'e24d762a-b9db-4af0-b74c-f7f44a926063', false, NULL),
	('bd03f3a0-14dc-4c29-8bd6-328731739d76', 'Ta 2 slurker og beskriv drømmedama 💃🏽', '2023-06-30 13:51:00+00', '2024-09-21 13:49:09.00292+00', NULL, false, NULL),
	('5ad49b6c-bb0d-4852-9d4c-3024e4142762', 'Bytt et klesplagg med {player-1}, og ta 2 slurker hver.', '2023-06-30 13:27:00+00', '2024-09-21 13:49:09.03441+00', 'e24d762a-b9db-4af0-b74c-f7f44a926063', false, NULL),
	('65ef29fd-b1e9-4c83-abd8-1a83a5234178', 'Jeg har aldri ligget med noen jeg angrer på 🥵', '2023-06-30 12:56:00+00', '2024-09-21 13:49:09.035974+00', 'b390058c-76f6-497b-a3c5-aeebee9cd6a1', true, NULL),
	('4cd36d93-3645-4306-947c-c23c72a97da4', '{player-1}, {player-2} og {player-3} rakk ikke innleveringsfristen til siste oblig! Som retter får du velge hvor mye hver av dem rykker ned på karakter-stigen. For hver plass du rykker hver av dem ned må du ta fem moralske straffeslurk.', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.042411+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', false, 'Retteren 📝'),
	('ca07fd8d-da13-4d38-885d-0b6777bffbcf', 'Jeg har aldri ligget med flere enn 10 ulike personer.', '2023-06-30 12:50:00+00', '2024-09-21 13:49:09.069386+00', 'b390058c-76f6-497b-a3c5-aeebee9cd6a1', true, NULL),
	('6d273a83-1d49-4bf3-be05-1b8f853376f7', '*På amerikansk-norsk* Shut the fuck up {player-0}! Nå snakker jeg! Ta en slurk hver gang du snakker. 🙊', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.079858+00', 'e8a491c8-dcee-49f7-8a6f-d5e2922357f3', true, NULL),
	('a876670f-4d77-440e-8618-f6b5299f6d84', 'Bortsett fra før du legger deg, når pleier du oftest å onanere? Drikk bort skammen med 2 slurker, din ekle gris 🐷', '2023-06-30 13:23:00+00', '2024-09-21 13:49:09.085351+00', '2c4c6639-8cf6-4028-aff4-6ac52d6a0833', false, NULL),
	('0004f942-67df-4782-82ef-000015bb4eeb', 'Obligen til {player-0} og {player-1} er endelig levert! Dere venter spent på resultatet. Feir med #2 slurker hver.', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.126773+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', true, 'Obligatorisk Innlevering'),
	('8c524439-33db-4885-8578-d2129f0bbf6e', 'Eksamen er svært vanskelig for en viss mindre intelligent person, men du er snill og lar {player-1} skrive av svarene dine. Takket være deg rykker derfor {player-1} opp på karakter-stigen, og som takk får du dele ut 5 slurker.', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.132708+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', false, NULL),
	('0a795ef6-39b6-480a-82d9-84b3b907505d', 'Jeg har aldri onanert på jobb 💦', '2023-06-30 12:56:00+00', '2024-09-21 13:49:09.154445+00', 'b390058c-76f6-497b-a3c5-aeebee9cd6a1', true, NULL),
	('44a602af-574b-4d32-8975-2ecb48a94e71', 'Klovnene i pit-wallen til Ferrari velger å pitte {player-1} til slics i tungt regnvær 🤡 Klovnemusikken høres i bakgrunnen mens du blir lappa for andre gang. Drukne sorgene med 2 slurker.', '2024-07-20 14:31:00+00', '2024-09-21 13:49:08.89888+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', true, NULL),
	('050f95cb-6a47-4cef-bf46-a395909f64e6', 'Ta 3 sure slurker hvis Haas er wankers om dagen, eller del ut tilsvarende om de er rockstars.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.950628+00', NULL, false, NULL),
	('b7b89fd9-a60f-4cfe-9d15-acb3226a4e7e', 'Dra ned buksa og la {player-1} spanke deg fem ganger 🥊 Ta en skamfull slurk etter hvert slag.', '2023-06-30 13:34:00+00', '2024-09-21 13:49:08.975814+00', 'e24d762a-b9db-4af0-b74c-f7f44a926063', false, NULL),
	('763e6b00-fc87-444e-b5f5-8e368b530107', 'Ta 2 slurker om du håper å få deg noe i kveld.', '2023-06-30 12:57:00+00', '2024-09-21 13:49:09.000971+00', NULL, false, NULL),
	('d1b6aec6-a657-4d5c-aa99-90edb6f74ad1', 'Elskerne {player-0} og {player-1} får et frukbart forhold som reflekteres i karakterene deres. Begge rykker opp på karakter-stigen.', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.067132+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', true, 'Skitur! ⛷️'),
	('ff619161-07f9-42c2-8271-c8cc4566b7eb', 'Jeg har aldri jukset på en eksamen', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.080962+00', 'b390058c-76f6-497b-a3c5-aeebee9cd6a1', true, NULL),
	('206bf8db-7c21-4b76-a252-bc40749bc986', 'Du retter arbeidet til {player-2} og blir svært imponert! Du lar stjerneeleven dele ut 5 slurker! Snittet stiger og {player-2} rykker opp på karater-stigen.', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.081164+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', false, 'Retteren 📝'),
	('b10e9d33-82aa-427b-8298-045c7cbf2501', 'Hvem sliter mest med økonomien?', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.085685+00', '202b389e-ddf4-41c2-a57a-330279c33e08', true, NULL),
	('bedf2b07-ab02-4e84-b9d3-fe527413eeec', '{player-2} og {player-3} blir plassert på oblig-gruppe sammen. Begge er svært flinke i faget og motet er på topp! Feir med å dele ut #2 slurker hver.', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.118507+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', true, 'Obligatorisk Innlevering'),
	('d6254e19-0f12-4ec5-afaf-914f3f62aba4', 'Velg en motstander og hold pusten. Den som puster først må ta 6 slurker. Klar, ferdig, gå 🏁', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.127773+00', '5ef92b9f-4b1f-4474-815d-a2b05d3dcb7a', false, NULL),
	('86403d05-88f6-472f-911d-69c7c6b36a32', 'Instituttet drar på skitur til Hemsedal! I grov kokainrus ligger {player-0} og {player-1} sammen! Dette er litt upraktisk siden {player-1} egentlig er sammen med {player-2} 😅 Elskerne straffer seg selv med 4 slurker.', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.134199+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', true, 'Skitur! ⛷️'),
	('9961c5ef-0de3-4967-bd2f-fbd75cec8f5b', 'Du glemmer de magiske bønnen i skapet og spiser dem ved et uhell sammen med kokte gulrøtter. Bønnene gjør deg ekstremt smart og du skyter til toppen av karakter-stigen. Feir med 2 slurker.', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.145973+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', false, 'Skitur! ⛷️'),
	('165a0c16-5ee3-4d7f-a7af-aabf4a2bcf46', 'Sjalusien gror raskt hos {player1}, som er den åpenbare andresjåføren etter alle {player-0}s seiere. Du stikker på bar for å ta 2 slurker og legge en slu plan…', '2024-07-20 11:48:00+00', '2024-09-21 13:49:08.899861+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', true, 'Red Bull'),
	('12144298-1f50-4c3b-98de-2dcc3da3409a', 'Du har blitt sparket fra Mercedes, og trenger ikke lenger å refereres til som Bottas. Drukne sorgene i 4 slurker.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.919338+00', 'e8a491c8-dcee-49f7-8a6f-d5e2922357f3', false, 'Mercedes'),
	('d30a539e-bef4-479f-bf2d-a20f1faf1797', 'Del høyden din på 10 og fordel resultatet som slurker på de andre. Ta det dobbelte om du må bruke mobilen til å regne det ut 🤓', '2023-06-30 13:31:00+00', '2024-09-21 13:49:08.984901+00', NULL, false, NULL),
	('2e32ac4c-fd95-4968-b86b-76d26d181610', 'Du har fått jobben som retter! Dette medfører mye makt, derfor må de andre referere til deg som herr eller frøken. De som glemmer seg blir straffet med en skamful slurk. 🧑🏽‍🏫', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.05087+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', false, 'Retteren 📝'),
	('2a530997-1ca7-49a1-9b04-0a31e260600c', 'Første obligatoriske innleveringen blir snart publisert og studentene skal deles inn i gruppper. Gruppene blir annonsert fortløpende.', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.078976+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', true, 'Obligatorisk Innlevering'),
	('7cb56afc-5620-44a9-9a9e-6e96ceb24a3f', 'Drikk på deg litt selvtillitt og kle av deg på overkroppen til ny beskjed blir gitt 😈', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.134019+00', 'e24d762a-b9db-4af0-b74c-f7f44a926063', false, NULL),
	('b98c8686-55f4-4113-942c-b53d4d5c43ed', '{player-0} og {player-1} blir plassert på oblig-gruppe sammen. Dere er begge ganske dårlige i faget og frykter det verste...', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.147308+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', true, 'Obligatorisk Innlevering'),
	('8dd0e3b6-6ef4-485d-b670-0fdbe2fe0aed', 'Fra nå av skal du kun refereres til som Bottas! Du får kun snakke med finsk aksent! Bruker noen det gamle, kjedelige navnet ditt havner de i Stroll-fanclub og må ta 1 slurk.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.936832+00', 'e8a491c8-dcee-49f7-8a6f-d5e2922357f3', false, 'Mercedes'),
	('6d991265-817e-4f14-81d3-5fb0a1dd25f6', 'Dans én runde Macarena mens du synger den så godt du kan. Avslutt med å drikke 1 stooor slurk!', '2023-06-30 13:31:00+00', '2024-09-21 13:49:08.990596+00', 'e24d762a-b9db-4af0-b74c-f7f44a926063', false, NULL),
	('30da396b-ef6a-4d46-9078-6968ac52054c', 'Ta 2 slurker om du har ligget den siste uken.', '2023-06-30 12:49:00+00', '2024-09-21 13:49:09.040593+00', NULL, false, NULL),
	('f437d8ff-8c5e-4d89-8f28-23b9c64a0880', 'Beskriv personligheten til en i rommet med tre ord. Gjetter de andre hvem det er må de ta 2 slurker hver, hvis ikke tar du 2 selv.', '2023-06-30 13:21:00+00', '2024-09-21 13:49:09.061304+00', NULL, false, NULL),
	('faa0b99f-a377-4944-85b3-9d7e5f639ac4', 'Ansvaret som forelder veier tungt på deg og du ser deg nødt til å melde deg ut av den elskede Hverdagsalkoholiker-foreningen din.', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.088282+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', false, 'Skitur! ⛷️'),
	('354b997b-e4c0-48ca-b926-31c5d4f73a09', 'Dere kan få bruke de vanlige navnene deres igjen. De som aldri glemte seg kan dele ut 4 slurker!', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.090279+00', 'e8a491c8-dcee-49f7-8a6f-d5e2922357f3', true, NULL),
	('f35ff56a-f4e8-4b8c-b882-dcc040426f46', 'Du kan få snakke din egen dialekt igjen 💕 Hvis du har klart å holde deg kan du få dele ut 4 søte vinnerslurker!', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.09802+00', 'e8a491c8-dcee-49f7-8a6f-d5e2922357f3', false, NULL),
	('8ea198c1-9749-4bca-9eaf-833bee5299f4', 'Du får kun snakke en annen dialekt 💬 Glemmer du deg må du konsumere en grov slurk.', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.108602+00', 'e8a491c8-dcee-49f7-8a6f-d5e2922357f3', false, NULL),
	('aa60a3c8-75cf-43b4-bc3a-d23fa83c8672', 'Du retter arbeidet til {player-1}. Det var svært slapt arbeid, som fortjener spanskrør. Gi {player-1} 3 saftige dask på baken med tilsvarende slurker. Snittet til {player-1} synker som en stein og rykker ned på karakter-stigen.', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.114155+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', false, 'Retteren 📝'),
	('01fce2fd-b683-42dc-9d15-a4553e1534ef', 'Endelig er resultatet til {player-0} og {player-1} kommet! Det gikk som forventet, jævelig rævva. Den høyeste på karakter-stigen faller ned til plassen over den andre. Dere er ikke lenger på gruppe.', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.121985+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', true, 'Obligatorisk Innlevering'),
	('a5f43fda-5d8a-4784-bced-231c426ba3ed', 'Andreføreren din fortsetter å glemme seg… Du ser deg nødt til å avslutte samarbeidet, dere får derfor ikke drikke sammen lenger.', '2024-07-20 14:57:00+00', '2024-09-21 13:49:08.883503+00', 'e8a491c8-dcee-49f7-8a6f-d5e2922357f3', false, NULL),
	('77a6ea1f-4fa4-4ff1-8c82-d91e66a53506', 'Rams opp numrene til alle førerne! Del ut 1 slurk for hver du klarer.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.935355+00', '5ef92b9f-4b1f-4474-815d-a2b05d3dcb7a', false, NULL),
	('d842a0ea-16f5-4dd5-9990-b9e66a7123f8', 'Chug resten av drinken din og hent ny!', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.946797+00', 'e24d762a-b9db-4af0-b74c-f7f44a926063', false, 'Pitstop'),
	('0230d8e5-7c4b-4148-833a-eb3781733ca2', 'Push-up konkurranse! {player-0} vs {player-1} 💪🏽 Taperen må svelge sorgen med 5 slurker.', '2024-06-09 17:13:00+00', '2024-09-21 13:49:08.97368+00', '5ef92b9f-4b1f-4474-815d-a2b05d3dcb7a', true, NULL),
	('438d4e02-b1a2-40f6-8780-03b1733fde06', 'Ta 2 slurker og avslør: Hva er det dyreste klesplagget du har? 🤑', '2023-06-30 13:43:00+00', '2024-09-21 13:49:08.934518+00', '2c4c6639-8cf6-4028-aff4-6ac52d6a0833', false, NULL),
	('fbd7c330-dd03-458c-9fa4-50ead09d3eb1', 'Gjør om poengene til Kick Sauber til slurker og del ut!', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.99569+00', NULL, false, NULL),
	('fa275b70-c6d4-4e22-9d2a-a6572c1a9a65', 'Bryt håndbak med en {player-1} 💪🏽 Taperen må ta 4 skamfulle slurker.', '2023-06-30 13:25:00+00', '2024-09-21 13:49:08.999569+00', '5ef92b9f-4b1f-4474-815d-a2b05d3dcb7a', false, NULL),
	('595d6188-beb9-4ce4-bc68-670dabe190fa', 'Jeg har aldri ligget med flere enn 25 ulike personer.', '2023-06-30 12:52:00+00', '2024-09-21 13:49:09.038051+00', 'b390058c-76f6-497b-a3c5-aeebee9cd6a1', true, NULL),
	('d9cb9909-e81c-4081-8451-15b08310b8d0', 'På bedpres med Netcompany blir det mye drikking på firmaets regning. Alle tar 6 slurker hver!', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.104266+00', 'bdd63b79-f625-4201-9a8d-e2c3d0283d7a', true, 'Bedriftspresentasjon'),
	('79147e52-7bf5-4563-b854-8fdc2459662c', '{player-4} og {player-5} blir plassert på oblig-gruppe sammen. Begge er fyllesvin, så dere stikker rett på bar. Ta #4 slurker hver.', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.121775+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', true, 'Obligatorisk Innlevering'),
	('d90d0f1e-0f3b-4204-bedc-e2631e7b228d', 'Hvem sklir inn i en liten depresjon hver søndag det ikke er race?', '2024-07-20 10:18:00+00', '2024-09-21 13:49:09.128104+00', '202b389e-ddf4-41c2-a57a-330279c33e08', true, NULL),
	('041c7051-828a-4458-a652-1274ddad425f', 'Det er en herlig dag i Monaco, alle førerne står på griden. Førstemann til å tømme drikken sin! Klar, ferdig, lights out! Vinneren kan fordele 6 slurker på de som DNFet!', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.912886+00', NULL, true, NULL),
	('c6c44341-a24d-4ab0-99d6-94b43269a66c', 'FIA oppdaterer regelboka for den nye sesongen og har bedt deg om å lage en ny regel.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.917326+00', 'e8a491c8-dcee-49f7-8a6f-d5e2922357f3', false, NULL),
	('7055f4eb-0248-4046-a12a-39ff82824ad7', 'Fra nå av skal du kun refereres til som Danny Rick og må beholde fittegliset på at all times! Bruker noen det gamle, kjedelige navnet ditt havner de i Stroll-fanclub og må ta 1 slurk.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.947171+00', 'e8a491c8-dcee-49f7-8a6f-d5e2922357f3', false, NULL),
	('57ab25ba-a31e-4bbb-bdca-0585b1ca6760', '“That''s dangerous driving, man” FIA tildeler deg 4 slurker!', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.954864+00', NULL, false, NULL),
	('19dcc662-7d16-4a05-a360-606bcdbbf9c5', 'La oss bare ta en saftig felleskål for Kimi ❤️', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.959417+00', 'bdd63b79-f625-4201-9a8d-e2c3d0283d7a', false, NULL),
	('5e176bcb-3536-4d5a-ae41-cfa95d2c8199', 'Fra nå av skal du kun refereres til som The Ice Man og kan kun si setninger på én stavelse! Alle som glemmer dette må ta 1 slurk.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.98065+00', 'e8a491c8-dcee-49f7-8a6f-d5e2922357f3', false, NULL),
	('21abde2d-3558-4a7c-b229-ade45f5253d2', 'Du får DRS og kjører forbi {player1}, tildel stakkaren 2 slurker.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:09.010366+00', NULL, false, NULL),
	('05616d5e-cefc-4188-818f-e08db9e60d9d', 'Nå kan du endelig ta av kondomen. Del ut 10 slurker om du ikke har tatt den av en eneste gang!', '2024-07-20 10:18:00+00', '2024-09-21 13:49:09.030162+00', 'e24d762a-b9db-4af0-b74c-f7f44a926063', false, NULL),
	('76e8be3b-f278-4702-9d3a-3c0a467163b0', 'Velg en av gutta og gjør ditt beste for å gi ham ereksion 🍆 Lykkes du ma han spandere en øl på deg.', '2023-06-30 13:50:00+00', '2024-09-21 13:49:09.028547+00', 'e24d762a-b9db-4af0-b74c-f7f44a926063', false, NULL),
	('d0c4b72c-ba97-421c-bd9a-2e95547862ef', 'Ta en slurk for alle som kræsja eller DNF-et i forrige race! 🏎💥', '2024-07-20 10:18:00+00', '2024-09-21 13:49:09.075879+00', 'bdd63b79-f625-4201-9a8d-e2c3d0283d7a', true, NULL),
	('40f07672-fd02-46bf-a44e-6a13c61d2e4d', 'Karakterene til {player-2} synker gradvis som en følge av depresjonen. Du rykker 2 plasser ned på karakter-stigen.', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.075182+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', true, 'Skitur! ⛷️'),
	('67c1aa79-34ec-4c90-aafd-e9a71ed9ff21', 'Du har eksamen i Norske dialekter, forsøk så godt du kan å gjengi de største dialektene i Norge. Alle tar en gruppeskål for hver dialekt.', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.125219+00', NULL, false, 'Eksamen'),
	('fc0279c0-25f9-4c1d-be9b-925feafa2b56', 'Du er tatt inn i pitlanen for en promilletest! Klarer du å si alfabetet baklengs? Ta 4 slurker når du gir opp.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.895737+00', 'bdd63b79-f625-4201-9a8d-e2c3d0283d7a', false, 'Pitstop'),
	('a1044f1e-cc65-4811-a843-dc26cb12a032', 'Du har blitt bitt av en kenguru og kan ikke lenger delta i F1. Derfor skal du ikke lenger refereres til som Danny Rick. Drukne sorgene i 4 slurker.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.915911+00', 'e8a491c8-dcee-49f7-8a6f-d5e2922357f3', false, NULL),
	('e9bd0ede-181f-4b9a-803a-c37d805b5e88', 'Blue flag! Hvem er for edru og må ta igjen de andre?', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.930456+00', '202b389e-ddf4-41c2-a57a-330279c33e08', true, 'Blue flag'),
	('f2aa5f60-6fb2-438d-ac30-11594971fd22', 'Fra nå av skal du kun refereres til som Super Max! De som glemmer dette havner i Stroll-fanclub og må ta 1 slurk.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.961539+00', 'e8a491c8-dcee-49f7-8a6f-d5e2922357f3', false, NULL),
	('c2e52925-8636-45e7-ad18-3d93fa8df8b7', 'Toto, It''s called a motor race', '2024-07-20 10:18:00+00', '2024-09-21 13:49:09.000697+00', NULL, false, NULL),
	('f9061dc2-0c07-4da4-beb6-e26894a34e70', 'Du er #blessed, si “My tyres are shot” og del ut 3 slurker!', '2024-07-20 10:18:00+00', '2024-09-21 13:49:09.004243+00', NULL, false, NULL),
	('4d58cda6-4ccf-47ba-aa59-f62b00bccbbf', 'Ikke glem at legendene fra Alpine faktisk skrev “El Plan” på bakvingen i 2021, dette må feires med 2 fellesslurker! 🏁', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.994026+00', 'bdd63b79-f625-4201-9a8d-e2c3d0283d7a', true, NULL),
	('4b1db3f3-038d-42cf-b7e1-c9a53132fe60', 'Fuck, marry, kill! Leclerc, Norris og Ricciardo', '2024-07-20 10:18:00+00', '2024-09-21 13:49:09.040834+00', '5f85d9e5-097b-483c-a0f0-d153b37ed454', false, NULL),
	('d5d55aab-c62e-4962-9310-ce7b05bc3c9b', '{player-0} og {player-1} jobber intenst med obligen. Stresset sender dem selvfølgelig rett i Hverdagsalkoholiker-foreningen.', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.051911+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', true, 'Obligatorisk Innlevering'),
	('02c646f7-d4cf-413e-be42-9f1ad85dca66', 'Har det gått så langt at du tar racinglinjer med handlevogna mellom reolene på butikken? I såfall er du en ekte blodfan og får dele ut 5 slurker.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:09.054103+00', '2c4c6639-8cf6-4028-aff4-6ac52d6a0833', false, NULL),
	('e2e54b0b-ace2-4c46-b92e-22d017569406', 'Du har startet studentforeningen "Hverdagsalkoholiker". Alkoholikere holder sammen! Hvis én av medlemmene må drikke, så må alle medlemmene drikke.', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.11144+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', false, 'Hverdagsalkoholikerne 🍹'),
	('4611af43-244a-4a4f-86d5-e210d008adc8', 'Å, nei! Kjempekræsj! Alle må drikke 3 slurker mens de venter på bergningsbilen.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.900302+00', 'bdd63b79-f625-4201-9a8d-e2c3d0283d7a', true, NULL),
	('d9ca79bd-c00f-4e11-b241-a38a86282412', 'Gratulerer, du er med i Vettels-fanclub, ta en runde og samle sammen tomgods ❤️ Du kan dele ut en slurk per enhet du rydder.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.914573+00', 'e24d762a-b9db-4af0-b74c-f7f44a926063', false, NULL),
	('e0664756-3584-413f-b65f-571370323e8b', 'Under saftey car donerer pappa Stroll en voksen sum til race directoren sitt yacht-fond. Stroll får da kjøre forbi satfey-bilen og rett i mål til sin første seier i F1! 🏆 Stroll-fanclub er i ekstase og feirer med å dele ut 1 slurk hver.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.975425+00', NULL, false, NULL),
	('fa3dbca0-38f9-4c4b-b8ae-ab2e95466260', 'Hvem sin rompe ville smasha like hardt som Toto sitt headsett? Ta 1 stille slurk for headsettet.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.97927+00', '4b25eee2-c470-4527-a3cf-bbad6929d5a8', false, NULL),
	('f77770f9-b9e1-4d9d-b871-434099e76dc5', 'Du har vunnet litt for mye i det siste! Alle de andre må bue hver gang du snakker.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.994147+00', 'e8a491c8-dcee-49f7-8a6f-d5e2922357f3', false, 'Red Bull'),
	('6aaaa9e5-c736-481d-8d0f-54243af49704', 'Hvem har det største crushet på Leclerc? Den du valgte må ta 2 lynraske slurker for kjekkasen.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:09.012171+00', '4b25eee2-c470-4527-a3cf-bbad6929d5a8', false, NULL),
	('d59fedb8-401a-4166-ab46-bf92a17fc21c', 'Gjør om poengene til Williams til slurker og hell nedpå! 🤡', '2024-07-20 10:18:00+00', '2024-09-21 13:49:09.024888+00', NULL, false, NULL),
	('71033049-944b-42da-af75-19b022ee58c4', 'Endelig er resultatet til {player-4} og {player-5} kommet! Det gikk overraskende bra! Begge rykker opp på karakter-stigen og er ikke lenger på gruppe.', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.094008+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', true, 'Obligatorisk Innlevering'),
	('df7fe87a-8c3c-4217-b4c5-381d202027bf', 'Forholdet til {player-0} og {player-1} blir litt for fruktbart. De blir gravide etter en økt med smeltet stearin og utgåtte kondomer. Begge straffer seg selv med 4 slurker etter den grufulle ulykken.', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.154049+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', true, 'Skitur! ⛷️'),
	('76b38291-08c4-4b86-9e06-fdd9cb95ab33', 'Du blir kalt inn til the stewards! {player1}, {player2} og {player3} avgjør straffen din.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.915193+00', NULL, false, NULL),
	('71746dcb-a6bb-47a9-9f13-15fbec1e01c8', 'Du må pensjonere deg! Derfor skal du ikke lenger referes til som The Ice Man. Drukne sorgene i 4 slurker.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.912517+00', 'e8a491c8-dcee-49f7-8a6f-d5e2922357f3', false, NULL),
	('40f03fd5-d3d4-4acd-80aa-25df4122f0c4', 'Pappa Stroll kjøpte enda en pole position til vår kjære window licker! Alle som har havnet i Stroll-fanclub kan dele ut 1 slurk hver.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.937942+00', NULL, false, NULL),
	('fbf0a8b6-fed8-47b7-ad18-865ed5ead6fc', 'Halo eller no halo? Skam deg med 3 slurker hvis gruppa er uenig.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:09.023668+00', 'f5833f63-74b6-4000-bee9-bbc3948ef41d', false, NULL),
	('a6e46331-1224-4f60-9a07-a5f15a9be04f', 'Det regner og du har Bottas i nakken! Ta 3 slurker mens du venter på bergningsbilen. 🚜', '2024-07-20 10:18:00+00', '2024-09-21 13:49:09.060676+00', NULL, false, NULL),
	('c66e1949-f6b4-408d-a721-e959eb5de398', 'Første eksamen er i chugging! Tøm drikken deres! Klar, ferdig, gå! Sett dere i rekkefølgen dere tømte drikken deres i. Dette er karakter-stigen, bytt fysiske plasser dersom rekkefølgen endres.', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.101448+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', true, 'Brisen Universitet 🏛️'),
	('4d9b90f5-ae2f-456d-bb0b-73af066fb030', 'Hvem er mest gira på billetter til Monaco GP?', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.957217+00', '202b389e-ddf4-41c2-a57a-330279c33e08', true, NULL),
	('856dc6e6-6cdb-42e8-a092-d7e35242ac54', 'Hvilken fører har du et lite, urealistisk håp om at skal utfordre Max? Ta 2 slurker for villmannen.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.968107+00', NULL, false, NULL),
	('7dfb6e82-25d8-4913-96fc-2e66e6470306', 'Fra nå av skal du kun refereres til som Loois! Du må avslutte alle setninger med "man". De som glemmer seg havner i Stroll-fanclub og må ta 1 slurk.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:09.011303+00', 'e8a491c8-dcee-49f7-8a6f-d5e2922357f3', false, NULL),
	('670f7836-3347-46bb-b8de-64d15c8110ff', 'Du trenger ikke å holde kjeft lenger! Si det du har på hjertet og del ut #2 sluker.', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.111546+00', 'e8a491c8-dcee-49f7-8a6f-d5e2922357f3', false, NULL),
	('6c029875-41ad-4068-95ad-d55e9f41f136', '{player-1} orker ikke å ha unge lenger, og selger den på svartebørsen mot 5 slurker og noen magiske bønner. Siden du er en gavmild sjel deler du ut slurkene til {player-2} og gir bønnene til {player-0}.', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.113244+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', true, 'Skitur! ⛷️'),
	('c0aeb379-5846-4e8d-93c9-d3f68ef9b74a', 'Velg mellom {player-1}, {player-2} og {player-3}. Én slurk til den du ville ligget med, to til den du ville giftet deg med og fem til den du ville drept. 😈', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.120258+00', '5f85d9e5-097b-483c-a0f0-d153b37ed454', false, NULL),
	('5590f936-aec4-4948-8e5c-c0cf801cc5ea', 'Skjerp dere, usportslig å bue bare fordi {player-0} er bedre (og penere) dere. På tide å stoppe nå.', '2024-07-20 15:15:00+00', '2024-09-21 13:49:08.880735+00', 'e8a491c8-dcee-49f7-8a6f-d5e2922357f3', true, 'Red Bull'),
	('71cf6974-00a6-4652-bc0b-4b0c38ea5db8', 'Rams opp den nåværende stillingen i årets F1 championship! Del ut 1 slurk for hver du klarer.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:08.958486+00', NULL, false, NULL),
	('0680d884-3d03-4e0f-bd8d-7ab7fd2710ab', 'Trekk kondomen videre over nesa og blås den opp til de andre er fonøyde, og vent på videre instruksjoner. Hold den oppblåst! Hvis luften går ut må du ta 3 slurker og blåse den opp igjen.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:09.027759+00', 'e24d762a-b9db-4af0-b74c-f7f44a926063', false, NULL),
	('146dd1bb-cd9e-4d4a-8c58-852ab2ce4511', 'Den øverste på karakterstigen har slikket alt for mye rumpe! Men nå har smiskingen har sluttet å funke, du rykker ned tre plasser på karakter-stigen og tar tilsvarende antall slurker.', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.077568+00', '9043927d-8a57-4e04-afb8-c6ae9918cfc2', true, NULL),
	('f9eb2cef-6979-46b5-9852-92297fea7a2e', 'Hamilton har kjørt deg av veien og tatt over ledelsen i championshipet, du skal derfor ikke lenger refereres til som Super Max. Drukne sorgene i 4 slurker.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:09.148058+00', 'e8a491c8-dcee-49f7-8a6f-d5e2922357f3', false, NULL),
	('b88f0e4e-d9d6-445d-b714-f0138cfb71f1', 'Trekk en kondom over hodet, som en hatt, og vent på videre instruksjoner. Ta 2 slurker for det nye plagget.', '2024-07-20 10:18:00+00', '2024-09-21 13:49:09.027917+00', 'e24d762a-b9db-4af0-b74c-f7f44a926063', false, NULL),
	('06b5c5bc-b90c-4364-8b4f-2f4393082889', 'Beskriv drømmebryllupet ditt og ta 1 romantisk slurk 💒', '2023-06-30 13:13:00+00', '2024-09-21 13:49:08.985582+00', NULL, false, NULL),
	('fe37dd3e-f943-419c-be1b-c8c049f8557b', 'Beskriv {player-1} med 3 ord og ta en gruppeskål for hver av ordene.', '2023-06-30 13:25:00+00', '2024-09-21 13:49:09.056523+00', NULL, false, NULL),
	('3179092d-9d08-4bfb-8987-75500d06830b', 'Ta 3 slurker og bli litt morsom 🤪 (Ta hintet)', '2023-06-30 13:54:00+00', '2024-09-21 13:49:09.055869+00', 'bdd63b79-f625-4201-9a8d-e2c3d0283d7a', false, NULL),
	('99545642-5a21-4d50-83fd-5b5bdf3c7ad0', 'Foreleseren har blitt syk 🤒 Som beste student i faget må du ta over forelesningen. Forklar noe ingen av de andre kan. Om noen kan det må du ta 5 straffeslurker.', '2023-04-09 19:42:00+00', '2024-09-21 13:49:09.104139+00', NULL, false, NULL),
	('f382c245-34b1-4c8a-8a1c-2cf87e61fb3a', 'Jeg har aldri rotet med noen av samme kjønn.', '2023-06-30 12:56:00+00', '2024-09-21 13:49:09.1493+00', 'b390058c-76f6-497b-a3c5-aeebee9cd6a1', true, NULL);


--
-- Data for Name: card_dependencies; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."card_dependencies" ("child", "parent", "created_at", "modified_at") VALUES
	('165a0c16-5ee3-4d7f-a7af-aabf4a2bcf46', 'd455e81f-205c-437a-987c-db2d41247438', '2024-07-20 15:00:07.75342+00', '2024-07-20 15:00:07.75342+00'),
	('97d663f0-19d7-49e5-8c59-d563e64811f9', '165a0c16-5ee3-4d7f-a7af-aabf4a2bcf46', '2024-07-20 15:00:08.089138+00', '2024-07-20 15:00:08.089138+00'),
	('71746dcb-a6bb-47a9-9f13-15fbec1e01c8', '5e176bcb-3536-4d5a-ae41-cfa95d2c8199', '2024-07-20 16:30:02.076816+00', '2024-07-20 16:30:02.076816+00'),
	('a7b06813-f3e3-4045-b07e-5114468a4321', '4b0fea66-f6ab-4342-a5b3-ef1e9e5c8440', '2024-07-20 15:00:08.108856+00', '2024-07-20 15:00:08.108856+00'),
	('ddded1ba-29ba-406c-b60d-0b922bef63f4', 'c1e90599-9541-4aaf-9917-d6a11b9a5d8b', '2024-07-20 15:00:07.770402+00', '2024-07-20 15:00:07.770402+00'),
	('a1044f1e-cc65-4811-a843-dc26cb12a032', '7055f4eb-0248-4046-a12a-39ff82824ad7', '2024-07-20 16:30:02.062297+00', '2024-07-20 16:30:02.062297+00'),
	('9b584b4d-4c39-48c7-9bee-f89e59e028f3', '41f9db10-76c7-425f-9c35-758b42fcb10c', '2024-07-20 15:00:07.973385+00', '2024-07-20 15:00:07.973385+00'),
	('eac05dae-1668-4f46-a7ae-46845440e06e', 'a6259234-7b6a-4138-8e0d-6a84898fa94e', '2024-07-20 15:00:07.738538+00', '2024-07-20 15:00:07.738538+00'),
	('165a0c16-5ee3-4d7f-a7af-aabf4a2bcf46', 'a6259234-7b6a-4138-8e0d-6a84898fa94e', '2024-07-20 15:00:08.021786+00', '2024-07-20 15:00:08.021786+00'),
	('9b584b4d-4c39-48c7-9bee-f89e59e028f3', 'a6259234-7b6a-4138-8e0d-6a84898fa94e', '2024-07-20 15:00:07.741896+00', '2024-07-20 15:00:07.741896+00'),
	('9b584b4d-4c39-48c7-9bee-f89e59e028f3', '97d663f0-19d7-49e5-8c59-d563e64811f9', '2024-07-20 15:00:07.730034+00', '2024-07-20 15:00:07.730034+00'),
	('9b584b4d-4c39-48c7-9bee-f89e59e028f3', 'a7b06813-f3e3-4045-b07e-5114468a4321', '2024-07-20 15:00:07.769575+00', '2024-07-20 15:00:07.769575+00'),
	('a5f43fda-5d8a-4784-bced-231c426ba3ed', '6405ad45-631a-4cb7-837c-7cf95d4d83a5', '2024-07-20 15:51:56.185067+00', '2024-07-20 15:51:56.185067+00'),
	('165a0c16-5ee3-4d7f-a7af-aabf4a2bcf46', 'eac05dae-1668-4f46-a7ae-46845440e06e', '2024-07-20 15:00:08.088169+00', '2024-07-20 15:00:08.088169+00'),
	('165a0c16-5ee3-4d7f-a7af-aabf4a2bcf46', '3040bc95-471f-475d-a248-cdb82a70aeee', '2024-07-20 15:00:07.9692+00', '2024-07-20 15:00:07.9692+00'),
	('9b584b4d-4c39-48c7-9bee-f89e59e028f3', '4b0fea66-f6ab-4342-a5b3-ef1e9e5c8440', '2024-07-20 15:00:07.978969+00', '2024-07-20 15:00:07.978969+00'),
	('3040bc95-471f-475d-a248-cdb82a70aeee', '4b0fea66-f6ab-4342-a5b3-ef1e9e5c8440', '2024-07-20 15:00:07.783664+00', '2024-07-20 15:00:07.783664+00'),
	('26fd9af3-b31c-4ca4-a59d-f5569dd7e1ca', '97d663f0-19d7-49e5-8c59-d563e64811f9', '2024-07-20 15:00:07.975652+00', '2024-07-20 15:00:07.975652+00'),
	('eac05dae-1668-4f46-a7ae-46845440e06e', '4b0fea66-f6ab-4342-a5b3-ef1e9e5c8440', '2024-07-20 15:00:08.03926+00', '2024-07-20 15:00:08.03926+00'),
	('68e72dce-db8d-45d5-9035-6c8acf635845', 'c1e90599-9541-4aaf-9917-d6a11b9a5d8b', '2024-07-20 15:00:08.965113+00', '2024-07-20 15:00:08.965113+00'),
	('12144298-1f50-4c3b-98de-2dcc3da3409a', '8dd0e3b6-6ef4-485d-b670-0fdbe2fe0aed', '2024-07-20 15:51:56.157131+00', '2024-07-20 15:51:56.157131+00'),
	('a4bb45b6-6509-4334-8c4f-6807abdd5042', 'c1e90599-9541-4aaf-9917-d6a11b9a5d8b', '2024-07-20 15:00:08.709498+00', '2024-07-20 15:00:08.709498+00'),
	('9f2840e6-70b7-4b21-9604-c8174b58ebba', 'a54d8e19-d33b-498d-bde9-502089330474', '2024-07-20 15:00:08.120249+00', '2024-07-20 15:00:08.120249+00'),
	('dd7689bf-89bb-41b7-8f15-46ee3612e427', '5473dd2a-05d6-4a0b-9886-65b280c86384', '2024-07-20 15:00:08.013854+00', '2024-07-20 15:00:08.013854+00'),
	('44a602af-574b-4d32-8975-2ecb48a94e71', '5473dd2a-05d6-4a0b-9886-65b280c86384', '2024-07-20 15:00:07.734945+00', '2024-07-20 15:00:07.734945+00'),
	('d455e81f-205c-437a-987c-db2d41247438', '4b0fea66-f6ab-4342-a5b3-ef1e9e5c8440', '2024-07-20 15:00:08.014746+00', '2024-07-20 15:00:08.014746+00'),
	('12144298-1f50-4c3b-98de-2dcc3da3409a', 'a55ad6f6-fd44-435a-8b6c-4db69fe39c23', '2024-07-20 15:51:56.185977+00', '2024-07-20 15:51:56.185977+00'),
	('97d663f0-19d7-49e5-8c59-d563e64811f9', 'a6259234-7b6a-4138-8e0d-6a84898fa94e', '2024-07-20 15:00:07.985034+00', '2024-07-20 15:00:07.985034+00'),
	('4a3b3ce0-5fc9-4a68-9c1e-e59e957068ee', 'a54d8e19-d33b-498d-bde9-502089330474', '2024-07-20 15:00:08.022464+00', '2024-07-20 15:00:08.022464+00'),
	('26fd9af3-b31c-4ca4-a59d-f5569dd7e1ca', 'a6259234-7b6a-4138-8e0d-6a84898fa94e', '2024-07-20 15:00:08.0338+00', '2024-07-20 15:00:08.0338+00'),
	('12144298-1f50-4c3b-98de-2dcc3da3409a', '4a3b3ce0-5fc9-4a68-9c1e-e59e957068ee', '2024-07-20 15:51:56.165457+00', '2024-07-20 15:51:56.165457+00'),
	('d455e81f-205c-437a-987c-db2d41247438', 'a6259234-7b6a-4138-8e0d-6a84898fa94e', '2024-07-20 15:00:07.888206+00', '2024-07-20 15:00:07.888206+00'),
	('8dd0e3b6-6ef4-485d-b670-0fdbe2fe0aed', 'a54d8e19-d33b-498d-bde9-502089330474', '2024-07-20 15:00:08.706188+00', '2024-07-20 15:00:08.706188+00'),
	('12144298-1f50-4c3b-98de-2dcc3da3409a', '9f2840e6-70b7-4b21-9604-c8174b58ebba', '2024-07-20 15:51:56.295574+00', '2024-07-20 15:51:56.295574+00'),
	('12144298-1f50-4c3b-98de-2dcc3da3409a', 'a54d8e19-d33b-498d-bde9-502089330474', '2024-07-20 15:00:09.402069+00', '2024-07-20 15:00:09.402069+00'),
	('578ff055-66fc-42cc-a212-b33ffad8a936', 'c6c44341-a24d-4ab0-99d6-94b43269a66c', '2024-07-20 16:30:02.010618+00', '2024-07-20 16:30:02.010618+00'),
	('ef09bbfa-5ae0-42f0-81ea-03a6dfa68f95', '5473dd2a-05d6-4a0b-9886-65b280c86384', '2024-07-20 15:00:07.961933+00', '2024-07-20 15:00:07.961933+00'),
	('9b584b4d-4c39-48c7-9bee-f89e59e028f3', '26fd9af3-b31c-4ca4-a59d-f5569dd7e1ca', '2024-07-20 15:00:07.739324+00', '2024-07-20 15:00:07.739324+00'),
	('05616d5e-cefc-4188-818f-e08db9e60d9d', '0680d884-3d03-4e0f-bd8d-7ab7fd2710ab', '2024-07-20 15:51:56.332942+00', '2024-07-20 15:51:56.332942+00'),
	('165a0c16-5ee3-4d7f-a7af-aabf4a2bcf46', 'a7b06813-f3e3-4045-b07e-5114468a4321', '2024-07-20 15:00:07.739208+00', '2024-07-20 15:00:07.739208+00'),
	('6405ad45-631a-4cb7-837c-7cf95d4d83a5', '090a3a8b-8a71-48d9-b6c0-357b84adfb08', '2024-07-20 15:00:08.023857+00', '2024-07-20 15:00:08.023857+00'),
	('9b584b4d-4c39-48c7-9bee-f89e59e028f3', 'eac05dae-1668-4f46-a7ae-46845440e06e', '2024-07-20 15:00:07.738589+00', '2024-07-20 15:00:07.738589+00'),
	('9b584b4d-4c39-48c7-9bee-f89e59e028f3', 'd455e81f-205c-437a-987c-db2d41247438', '2024-07-20 15:00:07.862806+00', '2024-07-20 15:00:07.862806+00'),
	('9b584b4d-4c39-48c7-9bee-f89e59e028f3', '165a0c16-5ee3-4d7f-a7af-aabf4a2bcf46', '2024-07-20 15:00:07.731547+00', '2024-07-20 15:00:07.731547+00'),
	('9b584b4d-4c39-48c7-9bee-f89e59e028f3', '3040bc95-471f-475d-a248-cdb82a70aeee', '2024-07-20 15:00:07.766791+00', '2024-07-20 15:00:07.766791+00'),
	('a7b06813-f3e3-4045-b07e-5114468a4321', 'a6259234-7b6a-4138-8e0d-6a84898fa94e', '2024-07-20 15:00:07.979756+00', '2024-07-20 15:00:07.979756+00'),
	('0004f942-67df-4782-82ef-000015bb4eeb', 'b98c8686-55f4-4113-942c-b53d4d5c43ed', '2024-07-07 19:57:52.505014+00', '2024-07-07 19:57:52.505014+00'),
	('f35ff56a-f4e8-4b8c-b882-dcc040426f46', '8ea198c1-9749-4bca-9eaf-833bee5299f4', '2024-06-20 23:01:51.258625+00', '2024-06-20 23:01:51.258625+00'),
	('71033049-944b-42da-af75-19b022ee58c4', 'c66e1949-f6b4-408d-a721-e959eb5de398', '2024-06-20 23:01:51.360743+00', '2024-06-20 23:01:51.360743+00'),
	('9961c5ef-0de3-4967-bd2f-fbd75cec8f5b', 'c66e1949-f6b4-408d-a721-e959eb5de398', '2024-06-20 23:01:51.39577+00', '2024-06-20 23:01:51.39577+00'),
	('86403d05-88f6-472f-911d-69c7c6b36a32', 'c66e1949-f6b4-408d-a721-e959eb5de398', '2024-06-20 23:01:51.266148+00', '2024-06-20 23:01:51.266148+00'),
	('983f4528-0893-44b2-9160-6c1a33a156ea', '60baa1e3-31a0-4d1e-9c48-d96c1b908dde', '2024-07-20 16:30:02.282695+00', '2024-07-20 16:30:02.282695+00'),
	('f77770f9-b9e1-4d9d-b871-434099e76dc5', 'eac05dae-1668-4f46-a7ae-46845440e06e', '2024-07-20 15:51:56.193909+00', '2024-07-20 15:51:56.193909+00'),
	('670f7836-3347-46bb-b8de-64d15c8110ff', '6d273a83-1d49-4bf3-be05-1b8f853376f7', '2024-06-20 23:01:51.369193+00', '2024-06-20 23:01:51.369193+00'),
	('146dd1bb-cd9e-4d4a-8c58-852ab2ce4511', 'c66e1949-f6b4-408d-a721-e959eb5de398', '2024-06-20 23:01:51.137395+00', '2024-06-20 23:01:51.137395+00'),
	('b628ee86-39a6-4334-ad0c-1d4c65dda890', 'c66e1949-f6b4-408d-a721-e959eb5de398', '2024-06-20 23:01:51.396566+00', '2024-06-20 23:01:51.396566+00'),
	('4cd36d93-3645-4306-947c-c23c72a97da4', 'c66e1949-f6b4-408d-a721-e959eb5de398', '2024-06-20 23:01:51.381214+00', '2024-06-20 23:01:51.381214+00'),
	('a55ad6f6-fd44-435a-8b6c-4db69fe39c23', 'a54d8e19-d33b-498d-bde9-502089330474', '2024-07-20 15:00:08.020368+00', '2024-07-20 15:00:08.020368+00'),
	('d5d55aab-c62e-4962-9310-ce7b05bc3c9b', 'e2e54b0b-ace2-4c46-b92e-22d017569406', '2024-06-20 23:01:51.232428+00', '2024-06-20 23:01:51.232428+00'),
	('3be8c49a-adc4-4e87-bde5-2d9dd7e65358', 'c3e1a7b8-e3be-4c5b-bab9-1df239309c35', '2024-07-20 16:30:01.873533+00', '2024-07-20 16:30:01.873533+00'),
	('0ac66f27-4fca-464a-b8b6-4f399095caf9', '86403d05-88f6-472f-911d-69c7c6b36a32', '2024-06-20 23:01:51.191016+00', '2024-06-20 23:01:51.191016+00'),
	('206bf8db-7c21-4b76-a252-bc40749bc986', 'c66e1949-f6b4-408d-a721-e959eb5de398', '2024-06-20 23:01:51.080761+00', '2024-06-20 23:01:51.080761+00'),
	('b628ee86-39a6-4334-ad0c-1d4c65dda890', 'bedf2b07-ab02-4e84-b9d3-fe527413eeec', '2024-06-20 23:01:51.378094+00', '2024-06-20 23:01:51.378094+00'),
	('d1b6aec6-a657-4d5c-aa99-90edb6f74ad1', 'c9e84530-7f99-437f-be00-eb4c1f11b772', '2024-06-20 23:01:51.451856+00', '2024-06-20 23:01:51.451856+00'),
	('40f07672-fd02-46bf-a44e-6a13c61d2e4d', 'c66e1949-f6b4-408d-a721-e959eb5de398', '2024-06-20 23:01:51.457705+00', '2024-06-20 23:01:51.457705+00'),
	('f9061dc2-0c07-4da4-beb6-e26894a34e70', '7dfb6e82-25d8-4913-96fc-2e66e6470306', '2024-07-20 15:52:04.749576+00', '2024-07-20 15:52:04.749576+00'),
	('0680d884-3d03-4e0f-bd8d-7ab7fd2710ab', 'b88f0e4e-d9d6-445d-b714-f0138cfb71f1', '2024-07-20 15:51:56.174226+00', '2024-07-20 15:51:56.174226+00'),
	('f9eb2cef-6979-46b5-9852-92297fea7a2e', 'f2aa5f60-6fb2-438d-ac30-11594971fd22', '2024-07-20 15:51:57.182087+00', '2024-07-20 15:51:57.182087+00'),
	('0ac66f27-4fca-464a-b8b6-4f399095caf9', 'e2e54b0b-ace2-4c46-b92e-22d017569406', '2024-06-20 23:01:51.127058+00', '2024-06-20 23:01:51.127058+00'),
	('e2e54b0b-ace2-4c46-b92e-22d017569406', 'c66e1949-f6b4-408d-a721-e959eb5de398', '2024-06-20 23:01:51.095078+00', '2024-06-20 23:01:51.095078+00'),
	('0004f942-67df-4782-82ef-000015bb4eeb', 'd5d55aab-c62e-4962-9310-ce7b05bc3c9b', '2024-06-20 23:01:51.406173+00', '2024-06-20 23:01:51.406173+00'),
	('bedf2b07-ab02-4e84-b9d3-fe527413eeec', '2a530997-1ca7-49a1-9b04-0a31e260600c', '2024-06-20 23:01:51.11455+00', '2024-06-20 23:01:51.11455+00'),
	('f99188ab-1181-4c46-9d26-0c6c7c2a28d9', '79147e52-7bf5-4563-b854-8fdc2459662c', '2024-06-20 23:01:51.383819+00', '2024-06-20 23:01:51.383819+00'),
	('b628ee86-39a6-4334-ad0c-1d4c65dda890', '7bc0827d-d093-445a-bfd8-287e00d1e5d5', '2024-06-20 23:01:51.464979+00', '2024-06-20 23:01:51.464979+00'),
	('f77770f9-b9e1-4d9d-b871-434099e76dc5', 'd455e81f-205c-437a-987c-db2d41247438', '2024-07-20 15:51:56.361024+00', '2024-07-20 15:51:56.361024+00'),
	('206bf8db-7c21-4b76-a252-bc40749bc986', '2e32ac4c-fd95-4968-b86b-76d26d181610', '2024-07-07 19:57:52.285781+00', '2024-07-07 19:57:52.285781+00'),
	('e0894a72-978c-4509-838a-df0cc19f3852', 'e2e54b0b-ace2-4c46-b92e-22d017569406', '2024-07-07 19:57:52.378839+00', '2024-07-07 19:57:52.378839+00'),
	('92d65282-58be-4428-9528-074b367631b6', 'c66e1949-f6b4-408d-a721-e959eb5de398', '2024-06-20 23:01:51.354678+00', '2024-06-20 23:01:51.354678+00'),
	('354b997b-e4c0-48ca-b926-31c5d4f73a09', '6ad208cd-811f-4c5d-9623-f408590f29e3', '2024-06-20 23:01:51.188713+00', '2024-06-20 23:01:51.188713+00'),
	('3040bc95-471f-475d-a248-cdb82a70aeee', 'a6259234-7b6a-4138-8e0d-6a84898fa94e', '2024-07-20 15:00:07.966689+00', '2024-07-20 15:00:07.966689+00'),
	('7bc0827d-d093-445a-bfd8-287e00d1e5d5', 'bedf2b07-ab02-4e84-b9d3-fe527413eeec', '2024-07-07 19:57:52.330515+00', '2024-07-07 19:57:52.330515+00'),
	('2a530997-1ca7-49a1-9b04-0a31e260600c', 'c66e1949-f6b4-408d-a721-e959eb5de398', '2024-06-20 23:01:51.185766+00', '2024-06-20 23:01:51.185766+00'),
	('01fce2fd-b683-42dc-9d15-a4553e1534ef', 'b98c8686-55f4-4113-942c-b53d4d5c43ed', '2024-06-20 23:01:51.348968+00', '2024-06-20 23:01:51.348968+00'),
	('c9e84530-7f99-437f-be00-eb4c1f11b772', 'e2e54b0b-ace2-4c46-b92e-22d017569406', '2024-06-20 23:01:51.125945+00', '2024-06-20 23:01:51.125945+00'),
	('40f07672-fd02-46bf-a44e-6a13c61d2e4d', 'e4140bf0-38c8-4c05-8618-54cb1ce659c0', '2024-06-20 23:01:51.456324+00', '2024-06-20 23:01:51.456324+00'),
	('41f9db10-76c7-425f-9c35-758b42fcb10c', 'a6259234-7b6a-4138-8e0d-6a84898fa94e', '2024-07-20 15:00:07.888829+00', '2024-07-20 15:00:07.888829+00'),
	('4b0fea66-f6ab-4342-a5b3-ef1e9e5c8440', 'a6259234-7b6a-4138-8e0d-6a84898fa94e', '2024-07-20 15:00:07.891136+00', '2024-07-20 15:00:07.891136+00'),
	('5590f936-aec4-4948-8e5c-c0cf801cc5ea', 'f77770f9-b9e1-4d9d-b871-434099e76dc5', '2024-07-20 15:51:56.302365+00', '2024-07-20 15:51:56.302365+00'),
	('d31f9ed7-f174-4f96-b377-a9d259515ff0', 'e2e54b0b-ace2-4c46-b92e-22d017569406', '2024-06-20 23:01:51.116232+00', '2024-06-20 23:01:51.116232+00'),
	('faa0b99f-a377-4944-85b3-9d7e5f639ac4', 'e2e54b0b-ace2-4c46-b92e-22d017569406', '2024-06-20 23:01:51.126009+00', '2024-06-20 23:01:51.126009+00'),
	('6c029875-41ad-4068-95ad-d55e9f41f136', 'faa0b99f-a377-4944-85b3-9d7e5f639ac4', '2024-06-20 23:01:51.249334+00', '2024-06-20 23:01:51.249334+00'),
	('9961c5ef-0de3-4967-bd2f-fbd75cec8f5b', '6c029875-41ad-4068-95ad-d55e9f41f136', '2024-06-20 23:01:51.170015+00', '2024-06-20 23:01:51.170015+00'),
	('60baa1e3-31a0-4d1e-9c48-d96c1b908dde', '7dfb6e82-25d8-4913-96fc-2e66e6470306', '2024-07-20 16:30:02.302394+00', '2024-07-20 16:30:02.302394+00'),
	('b98c8686-55f4-4113-942c-b53d4d5c43ed', '2a530997-1ca7-49a1-9b04-0a31e260600c', '2024-06-20 23:01:51.353322+00', '2024-06-20 23:01:51.353322+00'),
	('79147e52-7bf5-4563-b854-8fdc2459662c', '2a530997-1ca7-49a1-9b04-0a31e260600c', '2024-06-20 23:01:51.19324+00', '2024-06-20 23:01:51.19324+00'),
	('d5d55aab-c62e-4962-9310-ce7b05bc3c9b', 'b98c8686-55f4-4113-942c-b53d4d5c43ed', '2024-06-20 23:01:51.363026+00', '2024-06-20 23:01:51.363026+00'),
	('4cd36d93-3645-4306-947c-c23c72a97da4', '2e32ac4c-fd95-4968-b86b-76d26d181610', '2024-06-20 23:01:51.401288+00', '2024-06-20 23:01:51.401288+00'),
	('71033049-944b-42da-af75-19b022ee58c4', '4906b9dd-5393-4c0f-a0ca-a3f8f9e990b9', '2024-06-20 23:01:51.365543+00', '2024-06-20 23:01:51.365543+00'),
	('faa0b99f-a377-4944-85b3-9d7e5f639ac4', 'df7fe87a-8c3c-4217-b4c5-381d202027bf', '2024-06-20 23:01:51.346248+00', '2024-06-20 23:01:51.346248+00'),
	('01fce2fd-b683-42dc-9d15-a4553e1534ef', 'c66e1949-f6b4-408d-a721-e959eb5de398', '2024-06-20 23:01:51.337073+00', '2024-06-20 23:01:51.337073+00'),
	('aa60a3c8-75cf-43b4-bc3a-d23fa83c8672', 'c66e1949-f6b4-408d-a721-e959eb5de398', '2024-06-20 23:01:51.394025+00', '2024-06-20 23:01:51.394025+00'),
	('f77770f9-b9e1-4d9d-b871-434099e76dc5', 'a7b06813-f3e3-4045-b07e-5114468a4321', '2024-07-20 15:51:56.325617+00', '2024-07-20 15:51:56.325617+00'),
	('983f4528-0893-44b2-9160-6c1a33a156ea', '7dfb6e82-25d8-4913-96fc-2e66e6470306', '2024-07-20 16:30:02.311977+00', '2024-07-20 16:30:02.311977+00'),
	('d1b6aec6-a657-4d5c-aa99-90edb6f74ad1', 'c66e1949-f6b4-408d-a721-e959eb5de398', '2024-06-20 23:01:51.398542+00', '2024-06-20 23:01:51.398542+00'),
	('8c524439-33db-4885-8578-d2129f0bbf6e', 'c66e1949-f6b4-408d-a721-e959eb5de398', '2024-06-20 23:01:51.36109+00', '2024-06-20 23:01:51.36109+00'),
	('aa60a3c8-75cf-43b4-bc3a-d23fa83c8672', '2e32ac4c-fd95-4968-b86b-76d26d181610', '2024-06-20 23:01:51.421413+00', '2024-06-20 23:01:51.421413+00'),
	('e4140bf0-38c8-4c05-8618-54cb1ce659c0', 'c9e84530-7f99-437f-be00-eb4c1f11b772', '2024-06-20 23:01:51.422541+00', '2024-06-20 23:01:51.422541+00'),
	('c9e84530-7f99-437f-be00-eb4c1f11b772', '0ac66f27-4fca-464a-b8b6-4f399095caf9', '2024-06-20 23:01:51.341623+00', '2024-06-20 23:01:51.341623+00'),
	('f77770f9-b9e1-4d9d-b871-434099e76dc5', '3040bc95-471f-475d-a248-cdb82a70aeee', '2024-07-20 15:51:56.336272+00', '2024-07-20 15:51:56.336272+00'),
	('ea30a00e-a25c-40b1-a715-0ebd1f67ab8d', '8d3e8063-5d98-410b-9881-6fdafe2dfde5', '2024-07-19 13:19:15.328716+00', '2024-07-19 13:19:15.328716+00'),
	('4906b9dd-5393-4c0f-a0ca-a3f8f9e990b9', 'f99188ab-1181-4c46-9d26-0c6c7c2a28d9', '2024-06-20 23:01:51.418082+00', '2024-06-20 23:01:51.418082+00'),
	('f816dbe9-830f-467d-956d-cca2f1ad16bc', '7cb56afc-5620-44a9-9a9e-6e96ceb24a3f', '2024-07-19 13:19:15.332751+00', '2024-07-19 13:19:15.332751+00'),
	('df7fe87a-8c3c-4217-b4c5-381d202027bf', 'd1b6aec6-a657-4d5c-aa99-90edb6f74ad1', '2024-06-20 23:01:51.360806+00', '2024-06-20 23:01:51.360806+00');


--
-- Data for Name: languages; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."languages" ("id", "name", "created_at", "public", "icon", "modified_at") VALUES
	('en', 'English', '2023-04-09 19:42:00+00', false, '🇬🇧', '2024-09-21 13:49:09.383277+00'),
	('sfw', 'English', '2023-07-03 19:18:00+00', false, '🇺🇸', '2024-09-21 13:49:09.629692+00'),
	('nb', 'Norsk', '2023-04-09 19:42:00+00', true, '🇳🇴', '2024-09-21 13:49:09.630785+00');


--
-- Data for Name: packs; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."packs" ("id", "created_at", "modified_at", "description", "name", "image", "language", "is_free") VALUES
	('37904104-976a-410a-abd7-d47cf4383113', '2024-08-02 14:54:00+00', '2024-09-21 13:49:04.487884+00', 'Get to know new people with smooth introductions and memorable chats! Perfect for breaking the ice and getting to know new people.', 'Meet and Greet', 'artworks/meet_n_greet.jpeg', 'sfw', false),
	('81b8c8f4-0b85-40d5-a98b-a22512c16c0d', '2024-07-16 21:18:00+00', '2024-09-21 13:49:04.496066+00', 'Eneste man kan gjøre når det regner som faen er å sitte inne og pilse…', 'Sommer', 'artworks/summer.jpeg', 'nb', false),
	('689533f4-6c50-456b-84ac-1f04695d587d', '2024-06-12 17:40:00+00', '2024-09-21 13:49:04.505827+00', 'Du er villmann om du spiller denne pakken på gutta-vors.', 'Dristig', 'artworks/eggplant.jpeg', 'nb', false),
	('453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2023-04-12 23:20:00+00', '2024-09-21 13:49:04.579995+00', 'Dårlig råd, rævva karakterer, maktsjuke forelesere, hva mer kan man ønske seg?', 'Studentlivet', 'artworks/student.jpeg', 'nb', true),
	('bc0d7154-1fff-45be-8897-d4111953a547', '2024-07-20 09:56:00+00', '2024-09-21 13:49:04.621345+00', 'Sus gjennom drinken i høyeste gir! Hvem kommer først i mål? (Målet er doskåla)', 'Formel 1', 'artworks/formula1.jpeg', 'nb', false),
	('2af3ad57-7460-438c-9356-dd00be899715', '2024-08-02 15:08:00+00', '2024-09-21 13:49:04.707692+00', 'Bli godt kjent med nye mennesker på 1, 2, 3!', 'Bli kjent', 'artworks/meet_n_greet.jpeg', 'nb', false),
	('9876f988-790e-4b5f-b7d9-8acd75dcf434', '2024-08-02 12:46:00+00', '2024-09-21 13:49:04.991085+00', 'Get to know new people with smooth introductions and memorable chats! Perfect for breaking the ice and getting to know new people.', 'Meet and Greet', 'artworks/meet_n_greet.jpeg', 'en', false);


--
-- Data for Name: card_pack_rel; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."card_pack_rel" ("card", "created_at", "pack", "modified_at") VALUES
	('098c878a-e769-4c86-abdf-f57acdf75143', '2024-08-02 15:04:57.351839+00', '37904104-976a-410a-abd7-d47cf4383113', '2024-09-21 13:49:10.175786+00'),
	('05ed9fb5-d78a-4dda-ba31-9b8ee2bc54bc', '2024-08-08 09:00:06.857928+00', '689533f4-6c50-456b-84ac-1f04695d587d', '2024-09-21 13:49:10.219353+00'),
	('40f07672-fd02-46bf-a44e-6a13c61d2e4d', '2024-06-20 23:01:51.450434+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.498285+00'),
	('b10e9d33-82aa-427b-8298-045c7cbf2501', '2024-06-20 23:01:51.416704+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.518965+00'),
	('3be8c49a-adc4-4e87-bde5-2d9dd7e65358', '2024-07-20 16:30:01.838413+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:09.906738+00'),
	('d88e9b71-98a0-4cf1-8bf7-8ae70da73801', '2024-08-02 15:04:57.356373+00', '37904104-976a-410a-abd7-d47cf4383113', '2024-09-21 13:49:10.504947+00'),
	('f35ff56a-f4e8-4b8c-b882-dcc040426f46', '2024-06-20 23:01:51.233977+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.383945+00'),
	('a0b549d4-2c04-4bb0-89c7-07f223256d2c', '2024-07-19 13:19:15.294794+00', '689533f4-6c50-456b-84ac-1f04695d587d', '2024-09-21 13:49:10.401972+00'),
	('2e32ac4c-fd95-4968-b86b-76d26d181610', '2024-06-20 23:01:51.401633+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.389281+00'),
	('0a795ef6-39b6-480a-82d9-84b3b907505d', '2024-07-19 13:19:15.345138+00', '689533f4-6c50-456b-84ac-1f04695d587d', '2024-09-21 13:49:10.390598+00'),
	('c0aeb379-5846-4e8d-93c9-d3f68ef9b74a', '2024-06-20 23:01:51.391609+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.439286+00'),
	('0ac66f27-4fca-464a-b8b6-4f399095caf9', '2024-06-20 23:01:51.397724+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.437596+00'),
	('9961c5ef-0de3-4967-bd2f-fbd75cec8f5b', '2024-06-20 23:01:51.388798+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.435024+00'),
	('df7fe87a-8c3c-4217-b4c5-381d202027bf', '2024-06-20 23:01:51.389582+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.529963+00'),
	('c82f5dd6-7fb9-4c56-9ba9-368e554cafeb', '2024-08-02 15:04:57.359128+00', '37904104-976a-410a-abd7-d47cf4383113', '2024-09-21 13:49:09.951723+00'),
	('fc0279c0-25f9-4c1d-be9b-925feafa2b56', '2024-07-20 13:00:06.787468+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:09.992779+00'),
	('578ff055-66fc-42cc-a212-b33ffad8a936', '2024-07-20 16:30:02.076707+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.014109+00'),
	('4611af43-244a-4a4f-86d5-e210d008adc8', '2024-07-20 13:00:06.737501+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.050387+00'),
	('12144298-1f50-4c3b-98de-2dcc3da3409a', '2024-07-20 15:51:56.162534+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.056782+00'),
	('9f2840e6-70b7-4b21-9604-c8174b58ebba', '2024-07-20 15:00:08.118014+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.080748+00'),
	('4a3b3ce0-5fc9-4a68-9c1e-e59e957068ee', '2024-07-20 15:00:08.103981+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.086189+00'),
	('76b38291-08c4-4b86-9e06-fdd9cb95ab33', '2024-07-20 13:00:06.720411+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.112733+00'),
	('6405ad45-631a-4cb7-837c-7cf95d4d83a5', '2024-07-20 15:00:07.729426+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.149832+00'),
	('40f03fd5-d3d4-4acd-80aa-25df4122f0c4', '2024-07-20 15:51:56.30779+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.164396+00'),
	('05616d5e-cefc-4188-818f-e08db9e60d9d', '2024-07-20 15:51:56.177077+00', '689533f4-6c50-456b-84ac-1f04695d587d', '2024-09-21 13:49:10.170213+00'),
	('60baa1e3-31a0-4d1e-9c48-d96c1b908dde', '2024-07-20 16:30:02.287169+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.184584+00'),
	('a4bb45b6-6509-4334-8c4f-6807abdd5042', '2024-07-20 16:30:01.805354+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.181574+00'),
	('4d58cda6-4ccf-47ba-aa59-f62b00bccbbf', '2024-07-20 15:51:56.347704+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.188312+00'),
	('02c646f7-d4cf-413e-be42-9f1ad85dca66', '2024-07-20 15:51:56.322356+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.212885+00'),
	('e3cb02ca-2622-4986-909e-f0caa80da94f', '2024-07-19 13:19:15.296685+00', '689533f4-6c50-456b-84ac-1f04695d587d', '2024-09-21 13:49:10.212415+00'),
	('5ad49b6c-bb0d-4852-9d4c-3024e4142762', '2024-06-20 23:01:51.088546+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.217235+00'),
	('0072f5bf-8448-4bc5-b838-0ed92afcc521', '2024-07-19 13:19:15.331507+00', '689533f4-6c50-456b-84ac-1f04695d587d', '2024-09-21 13:49:10.223206+00'),
	('eba88821-c3dd-429c-a64d-dc18a9678212', '2024-07-19 13:19:15.292114+00', '689533f4-6c50-456b-84ac-1f04695d587d', '2024-09-21 13:49:10.227415+00'),
	('bd03f3a0-14dc-4c29-8bd6-328731739d76', '2024-06-20 23:01:50.977721+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.241297+00'),
	('fa275b70-c6d4-4e22-9d2a-a6572c1a9a65', '2024-06-20 23:01:50.994558+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.24355+00'),
	('fe9cdb34-746b-4268-a931-bbff10674d77', '2024-07-19 13:19:15.405544+00', '689533f4-6c50-456b-84ac-1f04695d587d', '2024-09-21 13:49:10.246824+00'),
	('73a197bb-3096-4b0c-b665-9eba43beacd4', '2024-07-19 13:19:15.409255+00', '689533f4-6c50-456b-84ac-1f04695d587d', '2024-09-21 13:49:10.252131+00'),
	('65ef29fd-b1e9-4c83-abd8-1a83a5234178', '2024-07-19 13:19:15.303276+00', '689533f4-6c50-456b-84ac-1f04695d587d', '2024-09-21 13:49:10.261399+00'),
	('ca07fd8d-da13-4d38-885d-0b6777bffbcf', '2024-07-19 13:19:15.345857+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.263298+00'),
	('36037753-af88-4d74-8b01-4fa02283970a', '2024-07-19 13:19:15.31564+00', '689533f4-6c50-456b-84ac-1f04695d587d', '2024-09-21 13:49:10.252032+00'),
	('92d65282-58be-4428-9528-074b367631b6', '2024-06-20 23:01:51.238875+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.302338+00'),
	('cdc2838b-9479-4659-97aa-8d928ef0f0ee', '2024-06-20 23:01:51.141148+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.304699+00'),
	('6aaaa9e5-c736-481d-8d0f-54243af49704', '2024-07-20 15:51:56.329448+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.320002+00'),
	('bedf2b07-ab02-4e84-b9d3-fe527413eeec', '2024-06-20 23:01:51.376211+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.321436+00'),
	('06b5c5bc-b90c-4364-8b4f-2f4393082889', '2024-06-20 23:01:51.170625+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.362504+00'),
	('a5f43fda-5d8a-4784-bced-231c426ba3ed', '2024-07-20 15:51:56.299229+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:09.923475+00'),
	('5e176bcb-3536-4d5a-ae41-cfa95d2c8199', '2024-07-20 13:00:06.705425+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:09.9994+00'),
	('ef09bbfa-5ae0-42f0-81ea-03a6dfa68f95', '2024-07-20 15:00:07.978125+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.101707+00'),
	('dd7689bf-89bb-41b7-8f15-46ee3612e427', '2024-07-20 15:00:08.086571+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.121094+00'),
	('a55ad6f6-fd44-435a-8b6c-4db69fe39c23', '2024-07-20 15:00:08.026604+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.121141+00'),
	('24df8a3b-1442-453d-8e5c-b8d3d7fed660', '2024-08-02 15:04:57.360436+00', '37904104-976a-410a-abd7-d47cf4383113', '2024-09-21 13:49:10.149831+00'),
	('71746dcb-a6bb-47a9-9f13-15fbec1e01c8', '2024-07-20 13:00:06.709932+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.151381+00'),
	('5590f936-aec4-4948-8e5c-c0cf801cc5ea', '2024-07-20 15:51:56.157468+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.157867+00'),
	('c3e1a7b8-e3be-4c5b-bab9-1df239309c35', '2024-07-20 16:30:02.241318+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.165745+00'),
	('050f95cb-6a47-4cef-bf46-a395909f64e6', '2024-07-20 16:30:02.334982+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.216356+00'),
	('d59fedb8-401a-4166-ab46-bf92a17fc21c', '2024-07-20 15:51:56.317445+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.203658+00'),
	('036a98ec-b8a6-4924-8f0f-8df8bb9452d0', '2024-07-19 13:19:15.322441+00', '689533f4-6c50-456b-84ac-1f04695d587d', '2024-09-21 13:49:10.228106+00'),
	('7bc0827d-d093-445a-bfd8-287e00d1e5d5', '2024-07-07 19:57:52.266397+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.280639+00'),
	('595d6188-beb9-4ce4-bc68-670dabe190fa', '2024-07-19 13:19:15.350942+00', '689533f4-6c50-456b-84ac-1f04695d587d', '2024-09-21 13:49:10.293454+00'),
	('d31f9ed7-f174-4f96-b377-a9d259515ff0', '2024-06-20 23:01:51.126103+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.294576+00'),
	('c1fd3cc3-4634-4e94-84b8-3bfb09207d96', '2024-07-07 19:57:52.349603+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.391569+00'),
	('f260d516-b9b1-4725-942b-48ace3a0e6e4', '2024-07-20 15:00:08.137518+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.407067+00'),
	('4906b9dd-5393-4c0f-a0ca-a3f8f9e990b9', '2024-06-20 23:01:51.390322+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.412785+00'),
	('d6254e19-0f12-4ec5-afaf-914f3f62aba4', '2024-06-20 23:01:51.436345+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.519197+00'),
	('9b584b4d-4c39-48c7-9bee-f89e59e028f3', '2024-07-20 15:00:08.086842+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:09.955473+00'),
	('c1e90599-9541-4aaf-9917-d6a11b9a5d8b', '2024-07-20 15:00:08.104416+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.045405+00'),
	('eac05dae-1668-4f46-a7ae-46845440e06e', '2024-07-20 15:00:07.746921+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.045981+00'),
	('5473dd2a-05d6-4a0b-9886-65b280c86384', '2024-07-20 15:00:07.963001+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.072106+00'),
	('090a3a8b-8a71-48d9-b6c0-357b84adfb08', '2024-07-20 15:00:07.866327+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.11043+00'),
	('a6259234-7b6a-4138-8e0d-6a84898fa94e', '2024-07-20 15:00:08.146145+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.121766+00'),
	('f9061dc2-0c07-4da4-beb6-e26894a34e70', '2024-07-20 15:51:56.3098+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.191481+00'),
	('b7b89fd9-a60f-4cfe-9d15-acb3226a4e7e', '2024-06-20 23:01:51.011531+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.209681+00'),
	('47f4a4c8-f100-4582-83f0-d6f0592f92ac', '2024-07-08 16:00:10.561768+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.238024+00'),
	('7dfb6e82-25d8-4913-96fc-2e66e6470306', '2024-07-20 16:30:02.279663+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.251868+00'),
	('438d4e02-b1a2-40f6-8780-03b1733fde06', '2024-06-20 23:01:50.669483+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.267409+00'),
	('d9cb9909-e81c-4081-8451-15b08310b8d0', '2024-06-20 23:01:51.24046+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.303275+00'),
	('d8bdf081-b011-455d-8545-aefbdd455a24', '2024-07-19 13:19:15.331874+00', '689533f4-6c50-456b-84ac-1f04695d587d', '2024-09-21 13:49:10.364313+00'),
	('faa0b99f-a377-4944-85b3-9d7e5f639ac4', '2024-06-20 23:01:51.356154+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.367113+00'),
	('8ea198c1-9749-4bca-9eaf-833bee5299f4', '2024-06-20 23:01:51.378805+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.370875+00'),
	('4d9b90f5-ae2f-456d-bb0b-73af066fb030', '2024-07-20 15:51:56.318844+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.384093+00'),
	('79147e52-7bf5-4563-b854-8fdc2459662c', '2024-06-20 23:01:51.369233+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.442315+00'),
	('354b997b-e4c0-48ca-b926-31c5d4f73a09', '2024-06-20 23:01:51.414733+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.47597+00'),
	('ddded1ba-29ba-406c-b60d-0b922bef63f4', '2024-07-20 15:00:07.777946+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:09.978545+00'),
	('7055f4eb-0248-4046-a12a-39ff82824ad7', '2024-07-20 13:00:06.80495+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:09.995822+00'),
	('a1044f1e-cc65-4811-a843-dc26cb12a032', '2024-07-20 13:00:06.78199+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.015647+00'),
	('8dd0e3b6-6ef4-485d-b670-0fdbe2fe0aed', '2024-07-20 15:51:56.330256+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.163992+00'),
	('76e8be3b-f278-4702-9d3a-3c0a467163b0', '2024-06-20 23:01:51.470243+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.192984+00'),
	('f9eb2cef-6979-46b5-9852-92297fea7a2e', '2024-07-20 15:51:56.200952+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.195337+00'),
	('d30a539e-bef4-479f-bf2d-a20f1faf1797', '2024-07-07 19:57:52.293892+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.201557+00'),
	('f77770f9-b9e1-4d9d-b871-434099e76dc5', '2024-07-20 15:51:56.356136+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.209469+00'),
	('fbd7c330-dd03-458c-9fa4-50ead09d3eb1', '2024-07-20 15:51:56.364047+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.209191+00'),
	('db1c63fa-9966-4b84-a6f0-acd444167bcd', '2024-07-19 13:19:15.294403+00', '689533f4-6c50-456b-84ac-1f04695d587d', '2024-09-21 13:49:10.229671+00'),
	('6956a4a1-5554-4619-94cd-5bcf1bbd9b73', '2024-06-20 23:01:51.082884+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.243977+00'),
	('ca07fd8d-da13-4d38-885d-0b6777bffbcf', '2024-07-19 13:19:15.313502+00', '689533f4-6c50-456b-84ac-1f04695d587d', '2024-09-21 13:49:10.262884+00'),
	('6ad208cd-811f-4c5d-9623-f408590f29e3', '2024-06-20 23:01:51.120727+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.276427+00'),
	('d1b6aec6-a657-4d5c-aa99-90edb6f74ad1', '2024-06-20 23:01:51.352203+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.306431+00'),
	('86403d05-88f6-472f-911d-69c7c6b36a32', '2024-06-20 23:01:51.346511+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.360921+00'),
	('763e6b00-fc87-444e-b5f5-8e368b530107', '2024-07-19 13:19:15.300267+00', '689533f4-6c50-456b-84ac-1f04695d587d', '2024-09-21 13:49:10.390743+00'),
	('0004f942-67df-4782-82ef-000015bb4eeb', '2024-07-07 19:57:52.531684+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.468064+00'),
	('30da396b-ef6a-4d46-9078-6968ac52054c', '2024-07-19 13:19:15.395614+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.47497+00'),
	('a02cbc63-ccd6-4ea7-8da6-c47e9f07eedd', '2024-07-19 13:19:15.355779+00', '689533f4-6c50-456b-84ac-1f04695d587d', '2024-09-21 13:49:10.492363+00'),
	('f99188ab-1181-4c46-9d26-0c6c7c2a28d9', '2024-06-20 23:01:51.431834+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.498507+00'),
	('8dfac1eb-f639-4673-a2d5-4cd3e66ed38d', '2024-07-19 13:19:15.359219+00', '689533f4-6c50-456b-84ac-1f04695d587d', '2024-09-21 13:49:10.495233+00'),
	('b628ee86-39a6-4334-ad0c-1d4c65dda890', '2024-06-20 23:01:51.46464+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.516917+00'),
	('e9bd0ede-181f-4b9a-803a-c37d805b5e88', '2024-07-20 13:00:06.702468+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.020782+00'),
	('3040bc95-471f-475d-a248-cdb82a70aeee', '2024-07-20 15:00:07.981995+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.101033+00'),
	('19dcc662-7d16-4a05-a360-606bcdbbf9c5', '2024-07-20 15:51:56.307883+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.122428+00'),
	('a6e46331-1224-4f60-9a07-a5f15a9be04f', '2024-07-20 15:51:56.182628+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.124083+00'),
	('a54d8e19-d33b-498d-bde9-502089330474', '2024-07-20 15:00:08.035465+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.123425+00'),
	('57ab25ba-a31e-4bbb-bdca-0585b1ca6760', '2024-07-20 15:51:56.203586+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.152398+00'),
	('4b1db3f3-038d-42cf-b7e1-c9a53132fe60', '2024-07-20 15:51:56.350892+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.203136+00'),
	('733d24d0-cc33-464e-b062-5ad259f3f2a8', '2024-06-20 23:01:51.095692+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.227023+00'),
	('1ab5b537-6e31-4a67-ad35-3a1b5a710364', '2024-07-07 19:57:52.389685+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.235755+00'),
	('5c3d3ae7-417f-42f2-87aa-3dac03b51beb', '2024-06-20 23:01:51.015368+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.235321+00'),
	('77a6ea1f-4fa4-4ff1-8c82-d91e66a53506', '2024-07-20 15:51:56.343324+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.239778+00'),
	('a876670f-4d77-440e-8618-f6b5299f6d84', '2024-07-19 13:19:15.324895+00', '689533f4-6c50-456b-84ac-1f04695d587d', '2024-09-21 13:49:10.243287+00'),
	('6d991265-817e-4f14-81d3-5fb0a1dd25f6', '2024-06-20 23:01:51.015723+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.265019+00'),
	('d5d55aab-c62e-4962-9310-ce7b05bc3c9b', '2024-06-20 23:01:51.343515+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.311315+00'),
	('c9a19b18-2cc4-4596-892e-466318fb5fe4', '2024-07-19 13:19:15.433596+00', '689533f4-6c50-456b-84ac-1f04695d587d', '2024-09-21 13:49:10.293701+00'),
	('05ed9fb5-d78a-4dda-ba31-9b8ee2bc54bc', '2024-06-20 23:01:50.965247+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-08-04 11:41:31.816948+00'),
	('6c029875-41ad-4068-95ad-d55e9f41f136', '2024-06-20 23:01:51.373584+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.368411+00'),
	('670f7836-3347-46bb-b8de-64d15c8110ff', '2024-06-20 23:01:51.344937+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.447313+00'),
	('ff10d713-dbce-4a31-8c20-0ea82d65124b', '2024-06-20 23:01:51.347966+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.462841+00'),
	('8d3e8063-5d98-410b-9881-6fdafe2dfde5', '2024-07-19 13:19:15.356176+00', '689533f4-6c50-456b-84ac-1f04695d587d', '2024-09-21 13:49:10.472913+00'),
	('c66e1949-f6b4-408d-a721-e959eb5de398', '2024-06-20 23:01:51.462539+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.519793+00'),
	('97d663f0-19d7-49e5-8c59-d563e64811f9', '2024-07-20 15:00:07.800282+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:09.923848+00'),
	('d842a0ea-16f5-4dd5-9990-b9e66a7123f8', '2024-07-20 15:51:56.329304+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.128882+00'),
	('c2e52925-8636-45e7-ad18-3d93fa8df8b7', '2024-07-20 15:51:56.324949+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.142006+00'),
	('e0664756-3584-413f-b65f-571370323e8b', '2024-07-20 15:51:56.322894+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.155161+00'),
	('d90d0f1e-0f3b-4204-bedc-e2631e7b228d', '2024-07-20 15:51:56.327809+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.179222+00'),
	('f2aa5f60-6fb2-438d-ac30-11594971fd22', '2024-07-20 16:30:02.31797+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.200684+00'),
	('3179092d-9d08-4bfb-8987-75500d06830b', '2024-06-20 23:01:51.474064+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.220732+00'),
	('b88f0e4e-d9d6-445d-b714-f0138cfb71f1', '2024-07-20 15:51:56.339722+00', '81b8c8f4-0b85-40d5-a98b-a22512c16c0d', '2024-09-21 13:49:10.221058+00'),
	('cfa78c80-9e0b-4773-9ff4-6f911e2cad9f', '2024-07-19 13:19:15.323853+00', '689533f4-6c50-456b-84ac-1f04695d587d', '2024-09-21 13:49:10.24221+00'),
	('8c524439-33db-4885-8578-d2129f0bbf6e', '2024-07-07 19:57:52.474775+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.275963+00'),
	('4cd36d93-3645-4306-947c-c23c72a97da4', '2024-07-07 19:57:52.275877+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.282186+00'),
	('e2e54b0b-ace2-4c46-b92e-22d017569406', '2024-06-20 23:01:51.174071+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.290662+00'),
	('99545642-5a21-4d50-83fd-5b5bdf3c7ad0', '2024-06-20 23:01:51.075969+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.298158+00'),
	('2e8fc7af-8d8e-438a-8b45-9fe5028d17cf', '2024-06-20 23:01:51.383746+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.318963+00'),
	('6d273a83-1d49-4bf3-be05-1b8f853376f7', '2024-06-20 23:01:51.346243+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.463884+00'),
	('e4140bf0-38c8-4c05-8618-54cb1ce659c0', '2024-06-20 23:01:51.461633+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.5271+00'),
	('44a602af-574b-4d32-8975-2ecb48a94e71', '2024-07-20 15:00:08.11683+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:09.930172+00'),
	('d9ca79bd-c00f-4e11-b241-a38a86282412', '2024-07-20 13:00:06.812516+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.037719+00'),
	('41f9db10-76c7-425f-9c35-758b42fcb10c', '2024-07-20 15:00:07.961224+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.086364+00'),
	('26fd9af3-b31c-4ca4-a59d-f5569dd7e1ca', '2024-07-20 15:00:08.134322+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.127342+00'),
	('856dc6e6-6cdb-42e8-a092-d7e35242ac54', '2024-07-20 15:51:56.292644+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.157387+00'),
	('21abde2d-3558-4a7c-b229-ade45f5253d2', '2024-07-20 15:51:56.203324+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.16729+00'),
	('7b7d485d-8380-4acf-9bd9-82cfbfff9fe6', '2024-07-20 16:30:02.326459+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.242889+00'),
	('0a795ef6-39b6-480a-82d9-84b3b907505d', '2024-07-19 13:19:15.306463+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.251973+00'),
	('30da396b-ef6a-4d46-9078-6968ac52054c', '2024-07-19 13:19:15.368111+00', '689533f4-6c50-456b-84ac-1f04695d587d', '2024-09-21 13:49:10.268009+00'),
	('65ef29fd-b1e9-4c83-abd8-1a83a5234178', '2024-07-19 13:19:15.363073+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.281723+00'),
	('3c253e01-0070-4a90-b151-a30e01c7ee2c', '2024-07-08 16:00:10.559135+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.264169+00'),
	('f816dbe9-830f-467d-956d-cca2f1ad16bc', '2024-07-19 13:19:15.423364+00', '689533f4-6c50-456b-84ac-1f04695d587d', '2024-09-21 13:49:10.358309+00'),
	('f382c245-34b1-4c8a-8a1c-2cf87e61fb3a', '2024-06-20 23:01:51.065272+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.39274+00'),
	('ff619161-07f9-42c2-8271-c8cc4566b7eb', '2024-06-20 23:01:51.397434+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.459779+00'),
	('aa60a3c8-75cf-43b4-bc3a-d23fa83c8672', '2024-06-20 23:01:51.421911+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.506266+00'),
	('041c7051-828a-4458-a652-1274ddad425f', '2024-07-20 13:00:06.789807+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.067545+00'),
	('0680d884-3d03-4e0f-bd8d-7ab7fd2710ab', '2024-07-20 15:51:56.350031+00', '81b8c8f4-0b85-40d5-a98b-a22512c16c0d', '2024-09-21 13:49:10.158787+00'),
	('d455e81f-205c-437a-987c-db2d41247438', '2024-07-20 15:00:08.097897+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.159582+00'),
	('0680d884-3d03-4e0f-bd8d-7ab7fd2710ab', '2024-07-20 15:51:56.337766+00', '689533f4-6c50-456b-84ac-1f04695d587d', '2024-09-21 13:49:10.167985+00'),
	('fbf0a8b6-fed8-47b7-ad18-865ed5ead6fc', '2024-07-20 15:51:56.35276+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.192181+00'),
	('d0c4b72c-ba97-421c-bd9a-2e95547862ef', '2024-07-20 15:51:56.322901+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.199903+00'),
	('bbf67c98-2e27-420e-8f8e-917026e6cb9c', '2024-07-19 13:19:15.314848+00', '689533f4-6c50-456b-84ac-1f04695d587d', '2024-09-21 13:49:10.218421+00'),
	('0230d8e5-7c4b-4148-833a-eb3781733ca2', '2024-06-20 23:01:51.452947+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.24768+00'),
	('fe37dd3e-f943-419c-be1b-c8c049f8557b', '2024-07-07 19:57:52.279771+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.36532+00'),
	('01fce2fd-b683-42dc-9d15-a4553e1534ef', '2024-06-20 23:01:51.26004+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.412417+00'),
	('71033049-944b-42da-af75-19b022ee58c4', '2024-06-20 23:01:51.389774+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.43339+00'),
	('a61d17b9-7653-4b5d-a864-3af3d9e6183c', '2024-06-20 23:01:51.430747+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.499763+00'),
	('165a0c16-5ee3-4d7f-a7af-aabf4a2bcf46', '2024-07-20 15:00:07.749892+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:09.989208+00'),
	('c6c44341-a24d-4ab0-99d6-94b43269a66c', '2024-07-20 13:00:06.722909+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.014583+00'),
	('a7b06813-f3e3-4045-b07e-5114468a4321', '2024-07-20 15:00:07.985863+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.04656+00'),
	('68e72dce-db8d-45d5-9035-6c8acf635845', '2024-07-20 16:30:01.823277+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.08214+00'),
	('4b0fea66-f6ab-4342-a5b3-ef1e9e5c8440', '2024-07-20 15:00:08.12846+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.133965+00'),
	('05616d5e-cefc-4188-818f-e08db9e60d9d', '2024-07-20 15:51:56.295403+00', '81b8c8f4-0b85-40d5-a98b-a22512c16c0d', '2024-09-21 13:49:10.142598+00'),
	('b88f0e4e-d9d6-445d-b714-f0138cfb71f1', '2024-07-20 15:51:56.351223+00', '689533f4-6c50-456b-84ac-1f04695d587d', '2024-09-21 13:49:10.155761+00'),
	('983f4528-0893-44b2-9160-6c1a33a156ea', '2024-07-20 16:30:02.253788+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.183316+00'),
	('71cf6974-00a6-4652-bc0b-4b0c38ea5db8', '2024-07-20 15:51:56.342013+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.198228+00'),
	('10750be6-6081-4d93-9c98-34dfe004c55f', '2024-06-20 23:01:50.913732+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.197084+00'),
	('fa3dbca0-38f9-4c4b-b8ae-ab2e95466260', '2024-07-20 15:51:56.280299+00', 'bc0d7154-1fff-45be-8897-d4111953a547', '2024-09-21 13:49:10.245698+00'),
	('206bf8db-7c21-4b76-a252-bc40749bc986', '2024-06-20 23:01:51.129441+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.275288+00'),
	('146dd1bb-cd9e-4d4a-8c58-852ab2ce4511', '2024-06-20 23:01:51.38595+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.283772+00'),
	('67c1aa79-34ec-4c90-aafd-e9a71ed9ff21', '2024-06-20 23:01:51.234212+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.307718+00'),
	('e0894a72-978c-4509-838a-df0cc19f3852', '2024-07-07 19:57:52.527009+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.312328+00'),
	('ea30a00e-a25c-40b1-a715-0ebd1f67ab8d', '2024-07-19 13:19:15.342181+00', '689533f4-6c50-456b-84ac-1f04695d587d', '2024-09-21 13:49:10.356685+00'),
	('f437d8ff-8c5e-4d89-8f28-23b9c64a0880', '2024-06-20 23:01:51.173384+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.362629+00'),
	('2a530997-1ca7-49a1-9b04-0a31e260600c', '2024-06-20 23:01:51.23391+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.436474+00'),
	('b98c8686-55f4-4113-942c-b53d4d5c43ed', '2024-06-20 23:01:51.360264+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.449997+00'),
	('c9e84530-7f99-437f-be00-eb4c1f11b772', '2024-06-20 23:01:51.452108+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.507628+00'),
	('0a6ae451-c873-48ae-9871-1e79a0aa2e76', '2024-06-20 23:01:51.402436+00', '453b9a6e-aeb6-46dc-b9ec-bc0625105399', '2024-09-21 13:49:10.519476+00'),
	('7cb56afc-5620-44a9-9a9e-6e96ceb24a3f', '2024-07-19 13:19:15.316344+00', '689533f4-6c50-456b-84ac-1f04695d587d', '2024-09-21 13:49:10.520408+00');


--
-- Data for Name: configurations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."configurations" ("id", "data_type", "string", "list", "number", "bool", "created_at", "modified_at") VALUES
	('default_gradient', 'list', NULL, '{#370A00,#a14316,#f3a000,#ffffff}', NULL, false, '2024-07-29 13:14:00+00', '2024-08-02 15:18:00+00'),
	('max_unclosed_card_age', 'number', NULL, NULL, 30, false, '2024-07-29 13:04:00+00', '2024-08-02 15:20:00+00'),
	('bottom_sheet_min_position', 'number', NULL, NULL, 64, false, '2024-08-03 17:48:00+00', '2024-08-03 18:02:00+00'),
	('default_language', 'string', 'nb', NULL, NULL, false, '2024-08-02 13:44:00+00', '2024-08-02 15:21:00+00'),
	('app_store_url', 'string', 'https://apps.apple.com/us/app/100-questions/id1439829997', NULL, NULL, false, '2024-09-17 11:44:00+00', '2024-09-17 11:48:00+00'),
	('brisen_plus_id', 'string', 'no.kallerud.brisen.plus', NULL, NULL, false, '2024-08-27 17:39:00+00', '2024-08-31 10:31:00+00'),
	('sfw_language', 'string', 'sfw', NULL, NULL, false, '2024-08-02 14:09:00+00', '2024-08-02 15:28:00+00'),
	('play_store_url', 'string', 'https://play.google.com/store/apps/details?id=com.downhill.race.league', NULL, NULL, false, '2024-09-17 11:44:00+00', '2024-09-17 12:14:00+00'),
	('use_sfw_content', 'bool', NULL, NULL, NULL, false, '2024-07-30 13:16:00+00', '2024-08-04 13:04:00+00');


--
-- Data for Name: localizations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."localizations" ("id", "value", "created_at", "language", "modified_at") VALUES
	('categories_5f85d9e5097b483ca0f0d153b37ed454_description', 'Which of these would you sleep with, marry, or kill? 🪦', '2024-08-02 14:26:00+00', 'sfw', '2024-09-21 13:49:08.188391+00'),
	('packs', 'Packs', '2024-08-02 14:13:00+00', 'sfw', '2024-09-21 13:49:08.199407+00'),
	('out_of_cards', 'Det var alt for denne gang 🤷🏽‍♂️
Velg en ny pakke for å fortsette!
eller…', '2024-07-02 18:52:00+00', 'nb', '2024-09-21 13:49:08.2218+00'),
	('categories_2c4c66398cf64028aff46ac52d6a0833_title', 'Truth', '2024-08-02 14:46:00+00', 'sfw', '2024-09-21 13:49:08.221209+00'),
	('categories_b390058c76f6497ba3c5aeebee9cd6a1_title', 'Jeg har aldri', '2024-07-07 23:05:00+00', 'nb', '2024-09-21 13:49:08.259611+00'),
	('packs_subtitle', 'Velg en eller flere pakker for å starte et spill!', '2024-07-02 18:56:00+00', 'nb', '2024-09-21 13:49:08.174627+00'),
	('categories_e8a491c8dcee49f78a6fd5e2922357f3_title', 'Rule', '2024-08-02 14:37:00+00', 'sfw', '2024-09-21 13:49:08.177816+00'),
	('packs', 'Pakker', '2024-07-02 18:54:00+00', 'nb', '2024-09-21 13:49:08.25205+00'),
	('categories_b390058c76f6497ba3c5aeebee9cd6a1_description', 'If you have done the action or had the experience, you get a point 😏 If only one person has had the experience in question, have them elaborate on it in detail.', '2024-08-02 14:33:00+00', 'sfw', '2024-09-21 13:49:08.355368+00'),
	('categories_2c4c66398cf64028aff46ac52d6a0833_title', 'Sannhet', '2024-07-07 23:25:00+00', 'nb', '2024-09-21 13:49:08.615878+00'),
	('categories_f5833f6374b64000bee9bbc3948ef41d_title', 'Dilemma', '2024-07-20 13:29:00+00', 'nb', '2024-09-21 13:49:08.6837+00'),
	('category', 'Category', '2024-08-02 14:13:00+00', 'sfw', '2024-09-21 13:49:09.177455+00'),
	('categories_5ef92b9f4b1f4474815da2b05d3dcb7a_title', 'Veddemål', '2024-07-07 23:23:00+00', 'nb', '2024-09-21 13:49:09.464237+00'),
	('categories_4b25eee2c4704527a3cfbbad6929d5a8_description', 'Velg den i rommet som passer beskrivelsen best. Den valgte personen må ta to slurker.

Splash Damage:
Dersom dere vil sprite opp kvelden enda mer kan personene ved siden av den som blir valgt drikke halvparten.', '2024-07-07 23:21:00+00', 'nb', '2024-09-21 13:49:09.668084+00'),
	('categories_bdd63b79f62542019a8de2c3d0283d7a_title', 'Partybooster', '2024-08-02 14:20:00+00', 'sfw', '2024-09-21 13:49:07.898856+00'),
	('categories_5f85d9e5097b483ca0f0d153b37ed454_title', 'Fuck, marry, kill', '2024-07-07 20:49:00+00', 'nb', '2024-09-21 13:49:08.18283+00'),
	('categories_5f85d9e5097b483ca0f0d153b37ed454_description', 'Hvem av disse ville du ligget med, giftet deg med eller drept? 🪦', '2024-07-07 22:07:00+00', 'nb', '2024-09-21 13:49:08.212859+00'),
	('categories_202b389eddf441c2a57a330279c33e08_title', 'Pekelek', '2024-07-07 23:24:00+00', 'nb', '2024-09-21 13:49:08.25163+00'),
	('categories_9043927d8a574e04afb8c6ae9918cfc2_title', 'Storytime', '2024-07-07 23:25:00+00', 'nb', '2024-09-21 13:49:08.262547+00'),
	('packs_subtitle', 'Select one or more packs to start a game!', '2024-08-02 14:13:00+00', 'sfw', '2024-09-21 13:49:08.278392+00'),
	('categories_01f0c6d871d941328788ffdc92a716ce_description', 'One by one, clockwise, say things that fit the given category. If you take too long or repeat something someone else has said, you lose point.', '2024-08-02 14:22:00+00', 'sfw', '2024-09-21 13:49:08.283691+00'),
	('categories_e24d762ab9db4af0b74cf7f44a926063_description', 'Gjennomfør oppgaven… eller ta en shot 😈', '2024-07-08 15:43:00+00', 'nb', '2024-09-21 13:49:08.403532+00'),
	('categories_bdd63b79f62542019a8de2c3d0283d7a_title', 'Partybooster', '2024-07-07 23:23:00+00', 'nb', '2024-09-21 13:49:08.423199+00'),
	('copied_to_clipboard', 'Kopiert', '2024-09-16 14:09:00+00', 'nb', '2024-09-21 13:49:07.848858+00'),
	('categories_8405fd175800460baf593430911cf217_description', 'Count down from 3, and all players show a thumbs up or down. The majority wins, and the losers lose a point each. 👍🏼👎🏼', '2024-08-02 14:51:00+00', 'sfw', '2024-09-21 13:49:08.011045+00'),
	('categories_e24d762ab9db4af0b74cf7f44a926063_title', 'Nødt', '2024-07-07 23:23:00+00', 'nb', '2024-09-21 13:49:08.092297+00'),
	('categories_01f0c6d871d941328788ffdc92a716ce_description', 'Én etter én, med klokka sier man ting som passer inn i den oppgitte kategorien. Hvis man bruker for lang tid eller sier noe en annen har sagt må man drikke.

Alternativ:
Man sier tingen som passer og navnet på en annen i rommet som må fortsette. Man kan også spille med at spillere går ut til det står én vinner igjen som kan dele ut 5 slurker.', '2024-07-08 15:33:00+00', 'nb', '2024-09-21 13:49:08.176265+00'),
	('copied_to_clipboard', 'Copied to clipboard', '2024-09-16 14:09:00+00', 'en', '2024-09-21 13:49:08.194924+00'),
	('select_pack', 'Legg til spillere og velg en pakke for å starte festen! 🎉', '2024-07-02 18:54:00+00', 'nb', '2024-09-21 13:49:08.197125+00'),
	('copied_to_clipboard', 'Copied to clipboard', '2024-09-16 14:10:00+00', 'sfw', '2024-09-21 13:49:08.203931+00'),
	('categories_b390058c76f6497ba3c5aeebee9cd6a1_description', 'Drikk hvis du har gjort det 😏 Hvis kun én person drikker må man fortelle historien bak.', '2024-07-07 23:05:00+00', 'nb', '2024-09-21 13:49:08.220547+00'),
	('version', 'Version', '2024-09-16 14:10:00+00', 'sfw', '2024-09-21 13:49:08.229394+00'),
	('add_players', 'Legg til spillere', '2024-07-02 17:21:00+00', 'nb', '2024-09-21 13:49:08.432499+00'),
	('category', 'Kategori', '2024-07-30 13:21:00+00', 'nb', '2024-09-21 13:49:08.440908+00'),
	('players_subtitle', 'Add players to personalize the experience!', '2024-08-02 14:13:00+00', 'sfw', '2024-09-21 13:49:08.44904+00'),
	('categories_5ef92b9f4b1f4474815da2b05d3dcb7a_description', 'Vedd slurker på den du tror kommer til å vinne! Du må drikke alle slurkene du vedder før konkurransen begynner, og du får dele ut det dobbelte om den du vedder på vinner konkurransen! 🏆', '2024-07-08 14:46:00+00', 'nb', '2024-09-21 13:49:08.472073+00'),
	('categories_01f0c6d871d941328788ffdc92a716ce_title', 'Kategori', '2024-07-07 23:24:00+00', 'nb', '2024-09-21 13:49:08.675334+00'),
	('categories_01f0c6d871d941328788ffdc92a716ce_title', 'Category', '2024-08-02 14:22:00+00', 'sfw', '2024-09-21 13:49:09.155096+00'),
	('categories_5ef92b9f4b1f4474815da2b05d3dcb7a_description', 'Bet points on the person you think are going to win! You lose all your points if your player loses, but if your player wins, you recieve double the amount of points you bet. 🏆', '2024-08-02 14:15:00+00', 'sfw', '2024-09-21 13:49:09.665166+00'),
	('categories_e24d762ab9db4af0b74cf7f44a926063_description', 'Perform the task… or lose 5 points 😈', '2024-08-02 13:43:00+00', 'sfw', '2024-09-21 13:49:08.162196+00'),
	('categories_2c4c66398cf64028aff46ac52d6a0833_description', 'Show your honesty and reveal your deepest secrets… or lose 5 points 😈', '2024-08-02 14:46:00+00', 'sfw', '2024-09-21 13:49:08.172004+00'),
	('version', 'Versjon', '2024-09-16 14:09:00+00', 'nb', '2024-09-21 13:49:08.223399+00'),
	('categories_b390058c76f6497ba3c5aeebee9cd6a1_title', 'Never have I ever', '2024-08-02 14:33:00+00', 'sfw', '2024-09-21 13:49:08.282669+00'),
	('version', 'Version', '2024-09-16 14:10:00+00', 'en', '2024-09-21 13:49:08.356392+00'),
	('restart_game', 'Start på nytt', '2024-07-02 18:54:00+00', 'nb', '2024-09-21 13:49:08.357562+00'),
	('categories_4b25eee2c4704527a3cfbbad6929d5a8_title', 'Hvem i rommet?', '2024-07-07 23:21:00+00', 'nb', '2024-09-21 13:49:08.425117+00'),
	('categories_bdd63b79f62542019a8de2c3d0283d7a_description', 'You get points, you get points, everyone gets points! 🤑', '2024-08-02 14:20:00+00', 'sfw', '2024-09-21 13:49:08.535584+00'),
	('categories_e8a491c8dcee49f78a6fd5e2922357f3_description', 'En ny regel innføres! Ta en slurk hver gang du bryter regelen. Slapp av, regler varer ikke for alltid.', '2024-07-08 15:40:00+00', 'nb', '2024-09-21 13:49:08.724102+00'),
	('share_message', 'Sjekk ut Brisen! 🍻', '2024-09-17 11:53:00+00', 'nb', '2024-09-21 13:49:07.881146+00'),
	('categories_202b389eddf441c2a57a330279c33e08_title', 'Point & Choose', '2024-08-02 14:36:00+00', 'sfw', '2024-09-21 13:49:07.959655+00'),
	('categories_e8a491c8dcee49f78a6fd5e2922357f3_description', 'A new rule is introduced! Players lose a point every time you break the rule. Don’t worry, rules don’t last forever.', '2024-08-02 14:37:00+00', 'sfw', '2024-09-21 13:49:07.991376+00'),
	('categories_8405fd175800460baf593430911cf217_title', 'Thumbs up or down', '2024-08-02 14:51:00+00', 'sfw', '2024-09-21 13:49:08.013276+00'),
	('categories_e8a491c8dcee49f78a6fd5e2922357f3_title', 'Regel', '2024-07-07 23:24:00+00', 'nb', '2024-09-21 13:49:08.343132+00'),
	('categories_2c4c66398cf64028aff46ac52d6a0833_description', 'Vær ærlig og fortell dine innerste hemmeligheter… eller ta en shot 😈', '2024-07-08 15:42:00+00', 'nb', '2024-09-21 13:49:08.359468+00'),
	('categories_202b389eddf441c2a57a330279c33e08_description', 'Everyone points to the person they think fits the description best. The one with the most votes gets the corresponding number of points.', '2024-08-02 14:37:00+00', 'sfw', '2024-09-21 13:49:08.686239+00'),
	('categories_5f85d9e5097b483ca0f0d153b37ed454_title', 'Fuck, marry, kill', '2024-08-02 14:27:00+00', 'en', '2024-09-21 13:49:08.801614+00'),
	('categories_8405fd175800460baf593430911cf217_title', 'Tommel opp eller ned', '2024-07-20 13:30:00+00', 'nb', '2024-09-21 13:49:08.060238+00'),
	('categories_f5833f6374b64000bee9bbc3948ef41d_title', 'Dilemma', '2024-08-02 14:48:00+00', 'sfw', '2024-09-21 13:49:08.176662+00'),
	('categories_5f85d9e5097b483ca0f0d153b37ed454_description', 'Which of these would you sleep with, marry, or kill? 🪦', '2024-08-02 14:27:00+00', 'en', '2024-09-21 13:49:08.260756+00'),
	('categories_e24d762ab9db4af0b74cf7f44a926063_title', 'Dare', '2024-08-02 13:38:00+00', 'sfw', '2024-09-21 13:49:08.345693+00'),
	('categories_9043927d8a574e04afb8c6ae9918cfc2_description', 'A series of cards that tell an engaging story full of excitement, thrills, and intrigue.', '2024-08-02 14:44:00+00', 'sfw', '2024-09-21 13:49:08.401517+00'),
	('categories_5f85d9e5097b483ca0f0d153b37ed454_title', 'Love, marry, kill', '2024-08-02 14:26:00+00', 'sfw', '2024-09-21 13:49:08.51376+00'),
	('out_of_cards', 'That’s all folks! 🤷🏽‍♂️
Select a new pack to keep playing!', '2024-08-02 14:13:00+00', 'sfw', '2024-09-21 13:49:07.988788+00'),
	('select_pack', 'Add players and select a pack to get the party started! 🎉', '2024-08-02 14:13:00+00', 'sfw', '2024-09-21 13:49:07.995259+00'),
	('categories_4b25eee2c4704527a3cfbbad6929d5a8_title', 'Who fits the bill?', '2024-08-02 14:42:00+00', 'sfw', '2024-09-21 13:49:08.204214+00'),
	('categories_5ef92b9f4b1f4474815da2b05d3dcb7a_title', 'Bet', '2024-08-02 14:15:00+00', 'sfw', '2024-09-21 13:49:08.2146+00'),
	('categories_subtitle', 'Enable or disable categories.', '2024-08-02 14:13:00+00', 'sfw', '2024-09-21 13:49:08.264921+00'),
	('app_name', 'Brisen', '2024-09-17 11:59:00+00', 'nb', '2024-09-21 13:49:08.301949+00'),
	('categories', 'Kategorier', '2024-08-01 12:56:00+00', 'nb', '2024-09-21 13:49:08.382069+00'),
	('categories_4b25eee2c4704527a3cfbbad6929d5a8_description', 'Choose the person in the room who best fits the description. The chosen person must give you two of their points, or as much as they have…', '2024-08-02 14:43:00+00', 'sfw', '2024-09-21 13:49:08.655031+00'),
	('categories_f5833f6374b64000bee9bbc3948ef41d_description', 'It’s one or the other, nothing in between.', '2024-08-02 14:48:00+00', 'sfw', '2024-09-21 13:49:08.005359+00'),
	('add_players', 'Add players', '2024-08-02 14:13:00+00', 'sfw', '2024-09-21 13:49:08.285144+00'),
	('categories', 'Categories', '2024-08-02 14:13:00+00', 'sfw', '2024-09-21 13:49:08.415091+00'),
	('categories_9043927d8a574e04afb8c6ae9918cfc2_title', 'Storytime', '2024-08-02 14:44:00+00', 'sfw', '2024-09-21 13:49:08.05814+00'),
	('categories_e24d762ab9db4af0b74cf7f44a926063_description', 'Perform the task… or take a shot 😈', '2024-08-02 13:37:00+00', 'en', '2024-09-21 13:49:08.249997+00'),
	('restart_game', 'Restart', '2024-08-02 14:13:00+00', 'sfw', '2024-09-21 13:49:08.56764+00'),
	('error_alert_title', 'Oops 😨', '2024-09-17 08:00:00+00', 'nb', '2024-09-21 13:49:08.157915+00'),
	('restore_completed_msg_fail', 'Fant ingen aktive abonnementer å gjenopprette 🤔 Kontakt @kalleruud på instagram om dette er feil.', '2024-09-17 08:20:00+00', 'nb', '2024-09-21 13:49:08.184205+00'),
	('categories_e24d762ab9db4af0b74cf7f44a926063_title', 'Dare', '2024-08-02 13:37:00+00', 'en', '2024-09-21 13:49:08.011375+00'),
	('restore_completed_title', '✅ Gjenoppretting fullført', '2024-09-17 08:20:00+00', 'nb', '2024-09-21 13:49:08.272891+00'),
	('players_subtitle', 'Legg til spillere for en mer personlig spillopplevelse 😉', '2024-08-01 12:53:00+00', 'nb', '2024-09-21 13:49:08.281895+00'),
	('purchase_complete_title', '🎉 Wohoo! 🎉', '2024-09-17 08:00:00+00', 'nb', '2024-09-21 13:49:08.554004+00'),
	('categories_2c4c66398cf64028aff46ac52d6a0833_description', 'Show your honesty and reveal your deepest secrets… or take a shot 😈', '2024-08-02 14:46:00+00', 'en', '2024-09-21 13:49:08.066226+00'),
	('restore_completed_msg_success', 'Abonnementet ditt ble gjenopprettet! 🎉', '2024-09-17 08:20:00+00', 'nb', '2024-09-21 13:49:08.202079+00'),
	('categories_4b25eee2c4704527a3cfbbad6929d5a8_description', 'Choose the person in the room who best fits the description. The chosen person must take two sips.

Splash Damage:
If you want to spice up the evening even more, the people next to the chosen one can drink half.', '2024-08-02 14:42:00+00', 'en', '2024-09-21 13:49:08.231128+00'),
	('purchase_complete_msg', 'Tusen takk! 🤩 Kos dere med full tilgang til alt innhold! 🥳', '2024-09-17 08:00:00+00', 'nb', '2024-09-21 13:49:08.254287+00'),
	('categories_subtitle', 'Hvis det er noen kategorier du ikke liker kan du fjerne dem her.', '2024-08-01 12:56:00+00', 'nb', '2024-09-21 13:49:08.350178+00'),
	('categories_f5833f6374b64000bee9bbc3948ef41d_description', 'It’s one or the other, nothing in between.', '2024-08-02 14:48:00+00', 'en', '2024-09-21 13:49:08.018443+00'),
	('categories_8405fd175800460baf593430911cf217_description', 'Tell ned fra 3 og alle spillerne holder fram en tommel opp eller ned. Flertallet vinner og taperne må ta en slurk hver. 👍🏼👎🏼', '2024-08-02 14:49:00+00', 'nb', '2024-09-21 13:49:08.147865+00'),
	('categories_bdd63b79f62542019a8de2c3d0283d7a_description', 'You get sips, you get sips, everyone gets sips! 🍻', '2024-08-02 14:20:00+00', 'en', '2024-09-21 13:49:08.180804+00'),
	('categories_9043927d8a574e04afb8c6ae9918cfc2_title', 'Storytime', '2024-08-02 14:45:00+00', 'en', '2024-09-21 13:49:08.233765+00'),
	('categories_8405fd175800460baf593430911cf217_description', 'Count down from 3, and all players show a thumbs up or down. The majority wins, and the losers must take a sip each. 👍🏼👎🏼', '2024-08-02 14:50:00+00', 'en', '2024-09-21 13:49:08.264646+00'),
	('categories_e8a491c8dcee49f78a6fd5e2922357f3_title', 'Rule', '2024-08-02 14:37:00+00', 'en', '2024-09-21 13:49:08.277046+00'),
	('categories_01f0c6d871d941328788ffdc92a716ce_title', 'Category', '2024-08-02 14:22:00+00', 'en', '2024-09-21 13:49:08.337023+00'),
	('categories_2c4c66398cf64028aff46ac52d6a0833_title', 'Truth', '2024-08-02 14:46:00+00', 'en', '2024-09-21 13:49:08.437932+00'),
	('change_language', 'Bytt språk', '2024-09-17 11:06:00+00', 'nb', '2024-09-21 13:49:07.85993+00'),
	('categories_202b389eddf441c2a57a330279c33e08_description', 'Everyone points to the person they think fits the description best. The one with the most votes drinks the corresponding number of sips.', '2024-08-02 14:36:00+00', 'en', '2024-09-21 13:49:08.012822+00'),
	('categories_b390058c76f6497ba3c5aeebee9cd6a1_title', 'Never have I ever', '2024-08-02 14:29:00+00', 'en', '2024-09-21 13:49:08.362328+00'),
	('categories_9043927d8a574e04afb8c6ae9918cfc2_description', 'A series of cards that tell an engaging story full of excitement, thrills, and intrigue.', '2024-08-02 14:45:00+00', 'en', '2024-09-21 13:49:08.363884+00'),
	('select_pack', 'Add players and select a pack to get the party started! 🎉', '2024-08-02 12:32:00+00', 'en', '2024-09-21 13:49:07.895129+00'),
	('categories_5ef92b9f4b1f4474815da2b05d3dcb7a_title', 'Bet', '2024-08-02 12:37:00+00', 'en', '2024-09-21 13:49:07.931591+00'),
	('manage_subscriptions', 'Mitt abonnement', '2024-09-17 11:06:00+00', 'nb', '2024-09-21 13:49:08.106628+00'),
	('categories_e8a491c8dcee49f78a6fd5e2922357f3_description', 'A new rule is introduced! Take a sip every time you break the rule. Don’t worry, rules don’t last forever.', '2024-08-02 14:37:00+00', 'en', '2024-09-21 13:49:08.208544+00'),
	('categories_f5833f6374b64000bee9bbc3948ef41d_title', 'Dilemma', '2024-08-02 14:48:00+00', 'en', '2024-09-21 13:49:08.21242+00'),
	('categories', 'Categories', '2024-08-02 12:32:00+00', 'en', '2024-09-21 13:49:08.278646+00'),
	('categories_subtitle', 'Enable or disable categories.', '2024-08-02 12:32:00+00', 'en', '2024-09-21 13:49:08.45314+00'),
	('categories_8405fd175800460baf593430911cf217_title', 'Thumbs up or down', '2024-08-02 14:50:00+00', 'en', '2024-09-21 13:49:08.150781+00'),
	('categories_01f0c6d871d941328788ffdc92a716ce_description', 'One by one, clockwise, say things that fit the given category. If you take too long or repeat something someone else has said, you have to drink.

Alternative:
You say your thing and the name of another person in the room who must keep the game going. You can also play with players being eliminated until only one winner remains who can hand out 5 sips.', '2024-08-02 14:22:00+00', 'en', '2024-09-21 13:49:08.228319+00'),
	('categories_4b25eee2c4704527a3cfbbad6929d5a8_title', 'Who fits the bill?', '2024-08-02 14:39:00+00', 'en', '2024-09-21 13:49:08.283765+00'),
	('players_subtitle', 'Add players to personalize the experience!', '2024-08-02 12:32:00+00', 'en', '2024-09-21 13:49:08.361002+00'),
	('packs', 'Packs', '2024-08-02 12:32:00+00', 'en', '2024-09-21 13:49:09.420073+00'),
	('categories_b390058c76f6497ba3c5aeebee9cd6a1_description', 'If you have done the action or had the experience, you have to drink 😏 If only one person is drinking, have them elaborate on it in detail. The juicier, the better!', '2024-08-02 14:30:00+00', 'en', '2024-09-21 13:49:08.060717+00'),
	('categories_bdd63b79f62542019a8de2c3d0283d7a_description', 'Hold festen gående med noen gode slurker 🍻', '2024-08-02 14:18:00+00', 'nb', '2024-09-21 13:49:08.131451+00'),
	('share_app', 'Del appen', '2024-09-17 11:05:00+00', 'nb', '2024-09-21 13:49:08.169245+00'),
	('out_of_cards', 'That’s all folks! 🤷🏽‍♂️
Select a new pack to keep playing!', '2024-08-02 12:32:00+00', 'en', '2024-09-21 13:49:08.6567+00'),
	('categories_9043927d8a574e04afb8c6ae9918cfc2_description', 'En rekke kort som forteller en engasjerende historie med fart, spenning og intriger.', '2024-08-02 14:44:00+00', 'nb', '2024-09-21 13:49:08.012692+00'),
	('categories_bdd63b79f62542019a8de2c3d0283d7a_title', 'Partybooster', '2024-08-02 12:44:00+00', 'en', '2024-09-21 13:49:08.084749+00'),
	('categories_f5833f6374b64000bee9bbc3948ef41d_description', 'Velg den ene eller den andre… her slipper du ikke lett unna.', '2024-08-02 14:47:00+00', 'nb', '2024-09-21 13:49:08.131325+00'),
	('categories_5ef92b9f4b1f4474815da2b05d3dcb7a_description', 'Bet sips on the person you think are going to win! You have to drink the amount of sips you’re betting before the competition begins. If your player wins, you can hand out twice as much as you bet. 🏆', '2024-08-02 12:38:00+00', 'en', '2024-09-21 13:49:08.262651+00'),
	('restart_game', 'Restart', '2024-08-02 12:32:00+00', 'en', '2024-09-21 13:49:08.291+00'),
	('categories_202b389eddf441c2a57a330279c33e08_title', 'Point & Choose', '2024-08-02 14:34:00+00', 'en', '2024-09-21 13:49:08.439621+00'),
	('category', 'Category', '2024-08-02 12:32:00+00', 'en', '2024-09-21 13:49:08.289767+00'),
	('packs_subtitle', 'Select one or more packs to start a game!', '2024-08-02 12:32:00+00', 'en', '2024-09-21 13:49:08.00699+00'),
	('categories_202b389eddf441c2a57a330279c33e08_description', 'Alle peker samtidig på personen i rommet de føler passer best til beksrivelsen. Den som får flest pek må drikke antallet.', '2024-07-08 15:39:00+00', 'nb', '2024-09-21 13:49:08.221876+00'),
	('add_players', 'Add players', '2024-08-02 12:32:00+00', 'en', '2024-09-21 13:49:08.553334+00');


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id") VALUES
	('packs', 'packs', NULL, '2024-03-25 21:37:26.369738+00', '2024-03-25 21:37:26.369738+00', true, false, 1048576, '{image/*}', NULL);


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata") VALUES
	('8ca665f0-f821-488b-80ca-db4b82b69633', 'packs', 'artworks/summer.jpeg', NULL, '2024-07-07 22:17:50.161296+00', '2024-07-07 22:17:50.161296+00', '2024-07-07 22:17:50.161296+00', '{"eTag": "\"66d9ea3a5f7f726d7006f4e4a8193d70\"", "size": 687553, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2024-07-07T22:17:51.000Z", "contentLength": 687553, "httpStatusCode": 200}', '6e562db0-7450-49e5-8dc0-8c10e1d4a7b4', NULL, NULL),
	('8d647c49-c82f-4f38-a81a-ea3474271f2a', 'packs', 'artworks/eggplant.jpeg', NULL, '2024-07-07 22:17:50.103715+00', '2024-07-07 22:17:50.103715+00', '2024-07-07 22:17:50.103715+00', '{"eTag": "\"d5b7225a994066afb975e0382756eb50\"", "size": 569385, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2024-07-07T22:17:51.000Z", "contentLength": 569385, "httpStatusCode": 200}', '10e5af25-f3a0-4c5b-aadf-b17bc129a09f', NULL, NULL),
	('96d1e5bd-d068-47e8-9924-e5f1c915c239', 'packs', 'artworks/student.jpeg', NULL, '2024-07-07 22:17:50.375655+00', '2024-07-07 22:17:50.375655+00', '2024-07-07 22:17:50.375655+00', '{"eTag": "\"e802c1921aeb1dfcc060224caef10212\"", "size": 755852, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2024-07-07T22:17:51.000Z", "contentLength": 755852, "httpStatusCode": 200}', '9ba484c1-0dde-43ca-ab93-47f35822f6fa', NULL, NULL),
	('a5dc481d-a2f2-4e53-b0fc-8847e676138b', 'packs', 'artworks/formula1.jpeg', NULL, '2024-07-20 10:02:22.474759+00', '2024-07-20 10:02:22.474759+00', '2024-07-20 10:02:22.474759+00', '{"eTag": "\"78ec9c381de5759e9186fa23b3495d20-1\"", "size": 716063, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2024-07-20T10:02:23.000Z", "contentLength": 716063, "httpStatusCode": 200}', '014e97e5-beb9-4553-a8bf-a2dbfc88c25e', NULL, NULL),
	('0acca410-a86f-4cfb-b33b-bb53e6268dbe', 'packs', 'artworks/meet_n_greet.jpeg', NULL, '2024-08-02 13:00:16.080196+00', '2024-08-02 13:00:16.080196+00', '2024-08-02 13:00:16.080196+00', '{"eTag": "\"541378bd6fbc2eac57b28a4ecc55139e-1\"", "size": 645143, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2024-08-02T13:00:16.000Z", "contentLength": 645143, "httpStatusCode": 200}', '9b292387-90fb-4b50-befa-a73f5f89cd4b', NULL, NULL),
	('2feb3248-375c-4316-b159-18a9af93a6a6', 'packs', 'artworks/work.jpeg', NULL, '2024-08-03 12:05:06.06676+00', '2024-08-03 12:05:06.06676+00', '2024-08-03 12:05:06.06676+00', '{"eTag": "\"df18908701414e7979e2c25e5648b5bf-1\"", "size": 687085, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2024-08-03T12:05:06.000Z", "contentLength": 687085, "httpStatusCode": 200}', 'f22f962d-3799-4a07-a1e4-eed94be2fa3a', NULL, NULL),
	('7002f054-f8ec-4217-96ef-23d9a7032000', 'packs', 'artworks/festival.jpeg', NULL, '2024-08-03 12:05:06.574427+00', '2024-08-03 12:05:06.574427+00', '2024-08-03 12:05:06.574427+00', '{"eTag": "\"d60400d8f6882a569867f91eeba97cd9-1\"", "size": 1045257, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2024-08-03T12:05:07.000Z", "contentLength": 1045257, "httpStatusCode": 200}', 'c2f08c35-0030-4039-a8e9-86f32aaf8f25', NULL, NULL);


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
