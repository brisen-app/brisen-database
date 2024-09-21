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
