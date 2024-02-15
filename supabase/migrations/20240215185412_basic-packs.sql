create table "public"."pack_card_rel" (
    "card" uuid not null,
    "pack" text not null,
    "created_at" timestamp with time zone not null default now(),
    "modified_at" timestamp with time zone not null default now()
);


alter table "public"."pack_card_rel" enable row level security;

create table "public"."packs" (
    "id" text not null,
    "created_at" timestamp with time zone not null default now(),
    "modified_at" timestamp with time zone not null default now()
);


alter table "public"."packs" enable row level security;

CREATE UNIQUE INDEX pack_card_rel_pkey ON public.pack_card_rel USING btree (card, pack);

CREATE UNIQUE INDEX packs_pkey ON public.packs USING btree (id);

alter table "public"."pack_card_rel" add constraint "pack_card_rel_pkey" PRIMARY KEY using index "pack_card_rel_pkey";

alter table "public"."packs" add constraint "packs_pkey" PRIMARY KEY using index "packs_pkey";

alter table "public"."pack_card_rel" add constraint "public_pack_card_rel_card_fkey" FOREIGN KEY (card) REFERENCES cards(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."pack_card_rel" validate constraint "public_pack_card_rel_card_fkey";

alter table "public"."pack_card_rel" add constraint "public_pack_card_rel_pack_fkey" FOREIGN KEY (pack) REFERENCES packs(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."pack_card_rel" validate constraint "public_pack_card_rel_pack_fkey";

alter table "public"."packs" add constraint "packs_id_check" CHECK ((length(id) = 4)) not valid;

alter table "public"."packs" validate constraint "packs_id_check";

grant delete on table "public"."pack_card_rel" to "anon";

grant insert on table "public"."pack_card_rel" to "anon";

grant references on table "public"."pack_card_rel" to "anon";

grant select on table "public"."pack_card_rel" to "anon";

grant trigger on table "public"."pack_card_rel" to "anon";

grant truncate on table "public"."pack_card_rel" to "anon";

grant update on table "public"."pack_card_rel" to "anon";

grant delete on table "public"."pack_card_rel" to "authenticated";

grant insert on table "public"."pack_card_rel" to "authenticated";

grant references on table "public"."pack_card_rel" to "authenticated";

grant select on table "public"."pack_card_rel" to "authenticated";

grant trigger on table "public"."pack_card_rel" to "authenticated";

grant truncate on table "public"."pack_card_rel" to "authenticated";

grant update on table "public"."pack_card_rel" to "authenticated";

grant delete on table "public"."pack_card_rel" to "service_role";

grant insert on table "public"."pack_card_rel" to "service_role";

grant references on table "public"."pack_card_rel" to "service_role";

grant select on table "public"."pack_card_rel" to "service_role";

grant trigger on table "public"."pack_card_rel" to "service_role";

grant truncate on table "public"."pack_card_rel" to "service_role";

grant update on table "public"."pack_card_rel" to "service_role";

grant delete on table "public"."packs" to "anon";

grant insert on table "public"."packs" to "anon";

grant references on table "public"."packs" to "anon";

grant select on table "public"."packs" to "anon";

grant trigger on table "public"."packs" to "anon";

grant truncate on table "public"."packs" to "anon";

grant update on table "public"."packs" to "anon";

grant delete on table "public"."packs" to "authenticated";

grant insert on table "public"."packs" to "authenticated";

grant references on table "public"."packs" to "authenticated";

grant select on table "public"."packs" to "authenticated";

grant trigger on table "public"."packs" to "authenticated";

grant truncate on table "public"."packs" to "authenticated";

grant update on table "public"."packs" to "authenticated";

grant delete on table "public"."packs" to "service_role";

grant insert on table "public"."packs" to "service_role";

grant references on table "public"."packs" to "service_role";

grant select on table "public"."packs" to "service_role";

grant trigger on table "public"."packs" to "service_role";

grant truncate on table "public"."packs" to "service_role";

grant update on table "public"."packs" to "service_role";


