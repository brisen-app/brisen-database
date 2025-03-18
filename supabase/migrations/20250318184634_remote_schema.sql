alter type "public"."card_order" rename to "card_order__old_version_to_be_dropped";

create type "public"."card_order" as enum ('starting', 'next', 'ending');

alter table "public"."cards" alter column order type "public"."card_order" using order::text::"public"."card_order";

drop type "public"."card_order__old_version_to_be_dropped";


