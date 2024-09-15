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

INSERT INTO "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") VALUES
	('00000000-0000-0000-0000-000000000000', '79540046-6973-4eb6-852e-997620c581ff', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"user1@email.com","user_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","user_phone":""}}', '2024-08-31 14:17:12.889609+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c7b2b818-d6eb-4d24-84c7-e4594a51f54d', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"user2@email.com","user_id":"34c5a8b6-5b6c-4be9-9683-330be64ba27a","user_phone":""}}', '2024-08-31 14:19:03.429872+00', ''),
	('00000000-0000-0000-0000-000000000000', '6d68cac1-ec08-41ff-887c-a31076e3289f', '{"action":"login","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-31 16:54:27.667675+00', ''),
	('00000000-0000-0000-0000-000000000000', '2e4797ed-db5b-4e84-8576-7c92063030b9', '{"action":"login","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-31 17:03:21.901307+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a59a9b8c-1991-453e-a786-2da6fbc53119', '{"action":"token_refreshed","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"token"}', '2024-08-31 18:57:28.02043+00', ''),
	('00000000-0000-0000-0000-000000000000', '0dfa11f3-a14f-48ab-aad1-6a746f257052', '{"action":"token_revoked","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"token"}', '2024-08-31 18:57:28.021413+00', ''),
	('00000000-0000-0000-0000-000000000000', '207e8496-02b2-482a-9aab-d1b39c71b3f5', '{"action":"login","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-01 11:15:32.154895+00', ''),
	('00000000-0000-0000-0000-000000000000', '8db6bcec-869e-47a7-a75c-6f29af8ded99', '{"action":"login","actor_id":"34c5a8b6-5b6c-4be9-9683-330be64ba27a","actor_username":"user2@email.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-01 11:22:02.092145+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fcd1a08a-9e9d-4939-abb9-a3f35b619a06', '{"action":"login","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-01 11:52:08.942351+00', ''),
	('00000000-0000-0000-0000-000000000000', '3d7008ff-8b39-4764-abf0-3bb99560223c', '{"action":"login","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-01 11:53:38.830479+00', ''),
	('00000000-0000-0000-0000-000000000000', '20f3a115-86b9-40fa-9d02-936c991ea68b', '{"action":"logout","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account"}', '2024-09-01 12:07:08.183659+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f5c24427-8e75-4640-95be-102634a95113', '{"action":"login","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-01 12:55:17.153275+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b6994094-2ebf-4a81-8312-0a8fad8de5ab', '{"action":"logout","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account"}', '2024-09-01 12:56:07.042618+00', ''),
	('00000000-0000-0000-0000-000000000000', '4b9b01f4-13e3-4ef4-af57-922f6a38269e', '{"action":"login","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-01 13:01:35.76113+00', ''),
	('00000000-0000-0000-0000-000000000000', '74f89996-e103-46a0-9549-58b77e92b209', '{"action":"logout","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account"}', '2024-09-01 13:01:38.078317+00', ''),
	('00000000-0000-0000-0000-000000000000', '8534795e-19c2-4600-8928-9619ad0ea23d', '{"action":"login","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-01 13:01:56.242451+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cbd7ff5f-503b-4a0c-b73c-78c8c80f14ac', '{"action":"logout","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account"}', '2024-09-01 13:03:32.396199+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd67cc718-5061-4f45-af76-3bebecf0b43c', '{"action":"login","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-01 13:03:40.269884+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b2a38a5c-cff2-45c9-8224-cdf87f2f6930', '{"action":"logout","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account"}', '2024-09-01 13:03:45.198668+00', ''),
	('00000000-0000-0000-0000-000000000000', '6b5deae0-0eee-472a-8f3f-0d8ee77e3dce', '{"action":"login","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-01 13:04:28.137603+00', ''),
	('00000000-0000-0000-0000-000000000000', '5ae45aa1-7dcd-4cc2-bbc8-0262f27d23ca', '{"action":"logout","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account"}', '2024-09-01 13:04:29.673651+00', ''),
	('00000000-0000-0000-0000-000000000000', '1074f0c3-0770-4228-83f7-d36898bcc00f', '{"action":"login","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-01 21:13:05.359442+00', ''),
	('00000000-0000-0000-0000-000000000000', '1d66bf05-83b2-4d8b-9d13-b8283a85eea9', '{"action":"logout","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account"}', '2024-09-01 21:13:25.145758+00', ''),
	('00000000-0000-0000-0000-000000000000', '0ae44cab-121a-405d-980e-97909eba882a', '{"action":"login","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-01 21:25:59.289803+00', ''),
	('00000000-0000-0000-0000-000000000000', '8c871365-9dae-4b82-9547-1dd725479234', '{"action":"login","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-01 21:26:01.650938+00', ''),
	('00000000-0000-0000-0000-000000000000', '02e10836-f4ed-4e91-abdb-14554d9e5548', '{"action":"logout","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account"}', '2024-09-01 21:26:03.402981+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b03d76ab-a4b1-4cb9-bd2e-c56274b55d51', '{"action":"login","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-01 21:29:19.0009+00', ''),
	('00000000-0000-0000-0000-000000000000', '3500abe9-db56-47ed-ac57-0fab73a4839e', '{"action":"logout","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account"}', '2024-09-01 21:29:23.725401+00', ''),
	('00000000-0000-0000-0000-000000000000', '7ae76c53-d437-402b-bf05-05135cc28cf6', '{"action":"login","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-14 10:07:43.80711+00', ''),
	('00000000-0000-0000-0000-000000000000', '1a4d6569-49b7-4f49-9fea-536180f28c94', '{"action":"logout","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account"}', '2024-09-14 10:07:46.729934+00', ''),
	('00000000-0000-0000-0000-000000000000', '739adfab-b4ff-4a23-8580-b87cba6dfca2', '{"action":"user_recovery_requested","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"user"}', '2024-09-14 12:43:32.461346+00', ''),
	('00000000-0000-0000-0000-000000000000', '7ccc4c49-5815-4b70-83f1-09d596ef0d8c', '{"action":"login","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account"}', '2024-09-14 12:45:46.197404+00', ''),
	('00000000-0000-0000-0000-000000000000', '30c0a73e-8a7c-4655-b68c-32307edc4776', '{"action":"user_recovery_requested","actor_id":"34c5a8b6-5b6c-4be9-9683-330be64ba27a","actor_username":"user2@email.com","actor_via_sso":false,"log_type":"user"}', '2024-09-14 12:47:29.771431+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f51a918b-1cdc-4ac5-8db7-db0694debd69', '{"action":"login","actor_id":"34c5a8b6-5b6c-4be9-9683-330be64ba27a","actor_username":"user2@email.com","actor_via_sso":false,"log_type":"account"}', '2024-09-14 12:47:35.745428+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f0d6049f-0363-4d4f-a5cb-3d0da40748c3', '{"action":"login","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-14 12:50:50.192411+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aa9abcc9-a91e-410e-a56d-122d5eb286ed', '{"action":"logout","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account"}', '2024-09-14 12:51:08.204775+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c3dfc728-5c6c-4e61-ad52-9ed864c057ef', '{"action":"user_recovery_requested","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"user"}', '2024-09-14 12:51:14.898955+00', ''),
	('00000000-0000-0000-0000-000000000000', '9e19cb82-ab97-4e42-b885-5bffaa962a2c', '{"action":"login","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account"}', '2024-09-14 12:51:20.839065+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b1fe4ab0-1a0a-438d-b1d3-c48660f575bb', '{"action":"login","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-14 12:52:00.517673+00', ''),
	('00000000-0000-0000-0000-000000000000', '7fc5225e-1a2c-46a4-9257-0d92d6b89d54', '{"action":"logout","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account"}', '2024-09-14 12:52:03.34599+00', ''),
	('00000000-0000-0000-0000-000000000000', '4f2494e0-6fd8-437a-af7f-dd0a2b6dbee7', '{"action":"user_recovery_requested","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"user"}', '2024-09-14 12:52:12.429648+00', ''),
	('00000000-0000-0000-0000-000000000000', '1889bc1a-3b5e-4d6f-8568-a4310d31fa65', '{"action":"login","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account"}', '2024-09-14 12:52:25.518931+00', ''),
	('00000000-0000-0000-0000-000000000000', '8470df74-54ae-487b-81a9-d5e4f07e8e3b', '{"action":"login","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}', '2024-09-14 12:52:25.786445+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f8c0764b-9564-4f3e-9c11-1a6c19785bab', '{"action":"token_refreshed","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"token"}', '2024-09-14 13:50:32.729292+00', ''),
	('00000000-0000-0000-0000-000000000000', '6486b284-b6f6-43f2-b5f9-2435650326e4', '{"action":"token_revoked","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"token"}', '2024-09-14 13:50:32.729749+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f9b1ea5d-e39f-494a-9a5c-6be398bca64f', '{"action":"logout","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account"}', '2024-09-14 14:20:17.822422+00', ''),
	('00000000-0000-0000-0000-000000000000', '4ae58934-dda6-4cf0-b1eb-9d724cc2e2cd', '{"action":"user_recovery_requested","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"user"}', '2024-09-14 14:26:59.833882+00', ''),
	('00000000-0000-0000-0000-000000000000', '31b389be-2231-433b-9a69-d3166b3b57fa', '{"action":"login","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account"}', '2024-09-14 14:27:19.566725+00', ''),
	('00000000-0000-0000-0000-000000000000', '2f83235b-957e-4c8c-b403-1f1837588411', '{"action":"logout","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account"}', '2024-09-14 15:22:14.935961+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a7abaab5-6767-4cb6-b4d2-8b1d89c90b72', '{"action":"user_recovery_requested","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"user"}', '2024-09-14 15:22:28.810408+00', ''),
	('00000000-0000-0000-0000-000000000000', '59f29272-d617-4c2e-99e5-6b42d071353d', '{"action":"login","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account"}', '2024-09-14 15:22:44.111022+00', ''),
	('00000000-0000-0000-0000-000000000000', '4ee7d59a-34ed-4f67-a943-49655b26d8ac', '{"action":"user_updated_password","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"user"}', '2024-09-14 15:23:48.131284+00', ''),
	('00000000-0000-0000-0000-000000000000', '8dc51ad0-3765-49e4-af73-d451d9acfdbb', '{"action":"user_modified","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"user"}', '2024-09-14 15:23:48.131594+00', ''),
	('00000000-0000-0000-0000-000000000000', '718a68fa-78c3-4513-a91c-26cceb929841', '{"action":"logout","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account"}', '2024-09-14 15:23:51.024517+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c8dec3a2-14b2-4e24-a1c5-3bbbb97ca0a5', '{"action":"login","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-14 15:23:57.656796+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e42cefed-80c0-44b4-803a-9c6327db877b', '{"action":"token_refreshed","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"token"}', '2024-09-15 16:23:43.967645+00', ''),
	('00000000-0000-0000-0000-000000000000', '7303ee96-2202-449d-af17-9a67794df03e', '{"action":"token_revoked","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"token"}', '2024-09-15 16:23:43.970584+00', ''),
	('00000000-0000-0000-0000-000000000000', '720aecac-ca00-45ee-b82b-5748465e0467', '{"action":"token_refreshed","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"token"}', '2024-09-15 16:23:54.425723+00', ''),
	('00000000-0000-0000-0000-000000000000', '6c548f2e-fda7-448b-916c-5c92b8db6e04', '{"action":"logout","actor_id":"b0201926-59c0-4a8f-9a3e-2e73dfd1c734","actor_username":"user1@email.com","actor_via_sso":false,"log_type":"account"}', '2024-09-15 16:24:05.721562+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at") VALUES
	('2bc894fd-2058-4835-84ac-a7df4dac2c7a', 'b0201926-59c0-4a8f-9a3e-2e73dfd1c734', '4ba0860a-3202-4919-bc1f-6b5e124bb557', 's256', 'fXnmzZp7dwebw9nljir_aLf3GII3phTJ3iRjQTp15zs', 'magiclink', '', '', '2024-09-14 12:43:32.45497+00', '2024-09-14 12:45:46.200082+00', 'magiclink', '2024-09-14 12:45:46.200064+00'),
	('efe2bb91-0e27-4f1b-905a-b940679d1792', '34c5a8b6-5b6c-4be9-9683-330be64ba27a', '1c3f9b75-f605-40e3-8a67-ff5863e674e4', 's256', 'dWuJ0E2mt_ilDf1ZNACeKeaw8ijGLOja-7wWzqgMd4k', 'magiclink', '', '', '2024-09-14 12:47:29.770435+00', '2024-09-14 12:47:35.746692+00', 'magiclink', '2024-09-14 12:47:35.746675+00'),
	('e754ff0e-7e3e-4877-aa50-72411cb6648f', 'b0201926-59c0-4a8f-9a3e-2e73dfd1c734', '9648c676-a654-4f11-99f5-127e89cc833f', 's256', 'F1Ln0aOxmfW6NT6gQW_NNjDhVsHiToguTn0uuKa8mwU', 'magiclink', '', '', '2024-09-14 12:51:14.894364+00', '2024-09-14 12:51:20.840379+00', 'magiclink', '2024-09-14 12:51:20.840337+00');


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', '34c5a8b6-5b6c-4be9-9683-330be64ba27a', 'authenticated', 'authenticated', 'user2@email.com', '$2a$10$Z6YjFFyuFzj.Kmt2zdqUjO8fG38ZYdrkB0w1VAqMs4Fayh.hjkjVy', '2024-08-31 14:19:03.430496+00', NULL, '', NULL, '', '2024-09-14 12:47:29.772187+00', '', '', NULL, '2024-09-01 11:22:02.092687+00', '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2024-08-31 14:19:03.4288+00', '2024-09-14 12:47:35.745888+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', 'b0201926-59c0-4a8f-9a3e-2e73dfd1c734', 'authenticated', 'authenticated', 'user1@email.com', '$2a$10$sAun2Uju2h2i0qkjniF53Oy4tGRMzY6xn1cXwJFbVnfe3CSKS2VSW', '2024-08-31 14:17:12.890719+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-09-14 15:23:57.657146+00', '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2024-08-31 14:17:12.885506+00', '2024-09-15 16:23:43.973166+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('b0201926-59c0-4a8f-9a3e-2e73dfd1c734', 'b0201926-59c0-4a8f-9a3e-2e73dfd1c734', '{"sub": "b0201926-59c0-4a8f-9a3e-2e73dfd1c734", "email": "user1@email.com", "email_verified": false, "phone_verified": false}', 'email', '2024-08-31 14:17:12.889007+00', '2024-08-31 14:17:12.889036+00', '2024-08-31 14:17:12.889036+00', 'a7e589dd-f4cf-41e8-94e4-8f961bcb1074'),
	('34c5a8b6-5b6c-4be9-9683-330be64ba27a', '34c5a8b6-5b6c-4be9-9683-330be64ba27a', '{"sub": "34c5a8b6-5b6c-4be9-9683-330be64ba27a", "email": "user2@email.com", "email_verified": false, "phone_verified": false}', 'email', '2024-08-31 14:19:03.429436+00', '2024-08-31 14:19:03.429456+00', '2024-08-31 14:19:03.429456+00', '2995c621-feef-45d1-a6c4-32005bd2c705');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") VALUES
	('8ae91cf7-e39f-4cf9-a2de-bc6a4c0cad17', '34c5a8b6-5b6c-4be9-9683-330be64ba27a', '2024-09-01 11:22:02.092732+00', '2024-09-01 11:22:02.092732+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '192.168.65.1', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('8ae91cf7-e39f-4cf9-a2de-bc6a4c0cad17', '2024-09-01 11:22:02.093941+00', '2024-09-01 11:22:02.093941+00', 'password', 'c3497f84-2a70-4706-a9e0-ce35777dbe45');


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

INSERT INTO "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") VALUES
	('00000000-0000-0000-0000-000000000000', 5, '36HIECrzU_-KzLK_BYP1Eg', '34c5a8b6-5b6c-4be9-9683-330be64ba27a', false, '2024-09-01 11:22:02.093124+00', '2024-09-01 11:22:02.093124+00', NULL, '8ae91cf7-e39f-4cf9-a2de-bc6a4c0cad17');


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
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--



--
-- Data for Name: service_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."service_users" ("id", "created_at", "full_name", "supabase_user") VALUES
	(1, '2024-09-15 18:23:51.569343+00', 'Viktor Lenard', 'b0201926-59c0-4a8f-9a3e-2e73dfd1c734');


--
-- Data for Name: tenants; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tenants" ("id", "created_at", "name", "domain") VALUES
	('packt', '2024-09-15 18:06:37.41978+00', 'Packt Publishing', 'packt.local'),
	('activenode', '2024-09-15 18:06:58.622325+00', 'activenode Education', 'activenode.learn'),
	('oddmonkey', '2024-09-15 18:07:12.572184+00', 'OddMonkey Inc', 'oddmonkey.inc');


--
-- Data for Name: tenant_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tenant_permissions" ("id", "created_at", "service_user", "tenant") VALUES
	(1, '2024-09-15 19:15:19.150568+00', 1, 'packt'),
	(2, '2024-09-15 19:15:26.846086+00', 1, 'oddmonkey');


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--



--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 25, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: service_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."service_users_id_seq"', 1, true);


--
-- Name: tenant_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."tenant_permissions_id_seq"', 2, true);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
