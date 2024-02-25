
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

CREATE SCHEMA IF NOT EXISTS "public";

ALTER SCHEMA "public" OWNER TO "pg_database_owner";

SET default_tablespace = '';

SET default_table_access_method = "heap";

CREATE TABLE IF NOT EXISTS "public"."card_pack_rel" (
    "card" "uuid" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "pack" "uuid" NOT NULL,
    "modified_at" timestamp with time zone DEFAULT "now"() NOT NULL
);

ALTER TABLE "public"."card_pack_rel" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."cards" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "content" "text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "modified_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "category" "uuid"
);

ALTER TABLE "public"."cards" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."categories" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "icon" "text" NOT NULL,
    "color" "text",
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "modified_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    CONSTRAINT "categories_color_check" CHECK ("regexp_like"("color", '^#(?:[\da-fA-F]{3,4}){1,2}$'::"text"))
);

ALTER TABLE "public"."categories" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."languages" (
    "id" "text" NOT NULL,
    "name" "text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "public" boolean DEFAULT false NOT NULL,
    "icon" "text" NOT NULL,
    "modified_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    CONSTRAINT "languages_id_check" CHECK (("length"("id") = 2))
);

ALTER TABLE "public"."languages" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."localizations" (
    "id" "text" NOT NULL,
    "value" "text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "language" "text" NOT NULL,
    "modified_at" timestamp with time zone DEFAULT "now"() NOT NULL
);

ALTER TABLE "public"."localizations" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."packs" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "modified_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "description" "text",
    "name" "text" DEFAULT 'fix'::"text" NOT NULL,
    CONSTRAINT "packs_description_check" CHECK (("length"("description") > 0)),
    CONSTRAINT "packs_name_check" CHECK (("length"("name") > 0))
);

ALTER TABLE "public"."packs" OWNER TO "postgres";

ALTER TABLE ONLY "public"."card_pack_rel"
    ADD CONSTRAINT "card_pack_rel_pkey" PRIMARY KEY ("card", "pack");

ALTER TABLE ONLY "public"."cards"
    ADD CONSTRAINT "cards_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."categories"
    ADD CONSTRAINT "categories_icon_key" UNIQUE ("icon");

ALTER TABLE ONLY "public"."categories"
    ADD CONSTRAINT "categories_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."languages"
    ADD CONSTRAINT "language_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."localizations"
    ADD CONSTRAINT "localizations_pkey" PRIMARY KEY ("id", "language");

ALTER TABLE ONLY "public"."packs"
    ADD CONSTRAINT "packs_pkey" PRIMARY KEY ("id");

CREATE OR REPLACE TRIGGER "handle_modify_card_pack_rel" BEFORE UPDATE ON "public"."card_pack_rel" FOR EACH ROW EXECUTE FUNCTION "extensions"."moddatetime"('modified_at');

CREATE OR REPLACE TRIGGER "handle_modify_cards" BEFORE UPDATE ON "public"."cards" FOR EACH ROW EXECUTE FUNCTION "extensions"."moddatetime"('modified_at');

CREATE OR REPLACE TRIGGER "handle_modify_categories" BEFORE UPDATE ON "public"."categories" FOR EACH ROW EXECUTE FUNCTION "extensions"."moddatetime"('modified_at');

CREATE OR REPLACE TRIGGER "handle_modify_languages" BEFORE UPDATE ON "public"."languages" FOR EACH ROW EXECUTE FUNCTION "extensions"."moddatetime"('modified_at');

CREATE OR REPLACE TRIGGER "handle_modify_localizations" BEFORE UPDATE ON "public"."localizations" FOR EACH ROW EXECUTE FUNCTION "extensions"."moddatetime"('modified_at');

CREATE OR REPLACE TRIGGER "handle_modify_packs" BEFORE UPDATE ON "public"."packs" FOR EACH ROW EXECUTE FUNCTION "extensions"."moddatetime"('modified_at');

ALTER TABLE ONLY "public"."card_pack_rel"
    ADD CONSTRAINT "public_card_pack_rel_card_fkey" FOREIGN KEY ("card") REFERENCES "public"."cards"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."card_pack_rel"
    ADD CONSTRAINT "public_card_pack_rel_pack_fkey" FOREIGN KEY ("pack") REFERENCES "public"."packs"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE ONLY "public"."cards"
    ADD CONSTRAINT "public_cards_category_fkey" FOREIGN KEY ("category") REFERENCES "public"."categories"("id") ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE ONLY "public"."localizations"
    ADD CONSTRAINT "public_localizations_language_fkey" FOREIGN KEY ("language") REFERENCES "public"."languages"("id") ON UPDATE CASCADE ON DELETE CASCADE;

CREATE POLICY "Enable read access for all users" ON "public"."card_pack_rel" FOR SELECT USING (true);

CREATE POLICY "Enable read access for all users" ON "public"."cards" FOR SELECT USING (true);

CREATE POLICY "Enable read access for all users" ON "public"."categories" FOR SELECT USING (true);

CREATE POLICY "Enable read access for all users" ON "public"."languages" FOR SELECT USING (true);

CREATE POLICY "Enable read access for all users" ON "public"."localizations" FOR SELECT USING (true);

CREATE POLICY "Enable read access for all users" ON "public"."packs" FOR SELECT USING (true);

ALTER TABLE "public"."card_pack_rel" ENABLE ROW LEVEL SECURITY;

ALTER TABLE "public"."cards" ENABLE ROW LEVEL SECURITY;

ALTER TABLE "public"."categories" ENABLE ROW LEVEL SECURITY;

ALTER TABLE "public"."languages" ENABLE ROW LEVEL SECURITY;

ALTER TABLE "public"."localizations" ENABLE ROW LEVEL SECURITY;

ALTER TABLE "public"."packs" ENABLE ROW LEVEL SECURITY;

GRANT USAGE ON SCHEMA "public" TO "postgres";
GRANT USAGE ON SCHEMA "public" TO "anon";
GRANT USAGE ON SCHEMA "public" TO "authenticated";
GRANT USAGE ON SCHEMA "public" TO "service_role";

GRANT ALL ON TABLE "public"."card_pack_rel" TO "anon";
GRANT ALL ON TABLE "public"."card_pack_rel" TO "authenticated";
GRANT ALL ON TABLE "public"."card_pack_rel" TO "service_role";

GRANT ALL ON TABLE "public"."cards" TO "anon";
GRANT ALL ON TABLE "public"."cards" TO "authenticated";
GRANT ALL ON TABLE "public"."cards" TO "service_role";

GRANT ALL ON TABLE "public"."categories" TO "anon";
GRANT ALL ON TABLE "public"."categories" TO "authenticated";
GRANT ALL ON TABLE "public"."categories" TO "service_role";

GRANT ALL ON TABLE "public"."languages" TO "anon";
GRANT ALL ON TABLE "public"."languages" TO "authenticated";
GRANT ALL ON TABLE "public"."languages" TO "service_role";

GRANT ALL ON TABLE "public"."localizations" TO "anon";
GRANT ALL ON TABLE "public"."localizations" TO "authenticated";
GRANT ALL ON TABLE "public"."localizations" TO "service_role";

GRANT ALL ON TABLE "public"."packs" TO "anon";
GRANT ALL ON TABLE "public"."packs" TO "authenticated";
GRANT ALL ON TABLE "public"."packs" TO "service_role";

ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "service_role";

ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "service_role";

ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "service_role";

RESET ALL;
