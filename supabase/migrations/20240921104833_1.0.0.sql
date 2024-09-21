drop policy "Enable read access for all users" on "public"."card_dependencies";

drop policy "Enable read access for all users" on "public"."card_pack_rel";

drop policy "Enable read access for all users" on "public"."cards";

drop policy "Enable read access for all users" on "public"."categories";

drop policy "Enable read access for all users" on "public"."languages";

drop policy "Enable read access for all users" on "public"."localizations";

drop policy "Enable read access for all users" on "public"."packs";

alter table "public"."languages" drop constraint "languages_id_check";

alter table "public"."localizations" drop constraint "localizations_language_fkey";

create table "public"."configurations" (
    "id" text not null,
    "data_type" text not null,
    "string" text,
    "list" text[],
    "number" numeric,
    "bool" boolean,
    "created_at" timestamp with time zone not null default now(),
    "modified_at" timestamp with time zone not null default now()
);


alter table "public"."configurations" enable row level security;

alter table "public"."cards" add column "header" text;

alter table "public"."packs" add column "is_free" boolean not null default false;

alter table "public"."packs" add column "language" text;

CREATE UNIQUE INDEX configurations_pkey ON public.configurations USING btree (id);

alter table "public"."configurations" add constraint "configurations_pkey" PRIMARY KEY using index "configurations_pkey";

alter table "public"."packs" add constraint "packs_language_fkey" FOREIGN KEY (language) REFERENCES languages(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."packs" validate constraint "packs_language_fkey";

alter table "public"."localizations" add constraint "localizations_language_fkey" FOREIGN KEY (language) REFERENCES languages(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."localizations" validate constraint "localizations_language_fkey";

grant delete on table "public"."configurations" to "anon";

grant insert on table "public"."configurations" to "anon";

grant references on table "public"."configurations" to "anon";

grant select on table "public"."configurations" to "anon";

grant trigger on table "public"."configurations" to "anon";

grant truncate on table "public"."configurations" to "anon";

grant update on table "public"."configurations" to "anon";

grant delete on table "public"."configurations" to "authenticated";

grant insert on table "public"."configurations" to "authenticated";

grant references on table "public"."configurations" to "authenticated";

grant select on table "public"."configurations" to "authenticated";

grant trigger on table "public"."configurations" to "authenticated";

grant truncate on table "public"."configurations" to "authenticated";

grant update on table "public"."configurations" to "authenticated";

grant delete on table "public"."configurations" to "service_role";

grant insert on table "public"."configurations" to "service_role";

grant references on table "public"."configurations" to "service_role";

grant select on table "public"."configurations" to "service_role";

grant trigger on table "public"."configurations" to "service_role";

grant truncate on table "public"."configurations" to "service_role";

grant update on table "public"."configurations" to "service_role";

create policy "Enable read access for all users"
on "public"."configurations"
as permissive
for select
to anon
using (true);


create policy "Enable read access for all users"
on "public"."card_dependencies"
as permissive
for select
to anon
using (true);


create policy "Enable read access for all users"
on "public"."card_pack_rel"
as permissive
for select
to anon
using (true);


create policy "Enable read access for all users"
on "public"."cards"
as permissive
for select
to anon
using (true);


create policy "Enable read access for all users"
on "public"."categories"
as permissive
for select
to anon
using (true);


create policy "Enable read access for all users"
on "public"."languages"
as permissive
for select
to anon
using (true);


create policy "Enable read access for all users"
on "public"."localizations"
as permissive
for select
to anon
using (true);


create policy "Enable read access for all users"
on "public"."packs"
as permissive
for select
to anon
using (true);



