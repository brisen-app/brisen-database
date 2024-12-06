create type "public"."card_order" as enum ('starting', 'ending');

alter table "public"."cards" add column "order" card_order;


