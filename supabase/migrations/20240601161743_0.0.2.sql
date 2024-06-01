alter table "public"."localizations" drop constraint "public_localizations_language_fkey";

alter table "public"."localizations" add constraint "localizations_language_fkey" FOREIGN KEY (language) REFERENCES languages(id) ON UPDATE CASCADE not valid;

alter table "public"."localizations" validate constraint "localizations_language_fkey";


