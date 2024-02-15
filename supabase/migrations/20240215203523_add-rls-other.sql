create policy "Enable read access for all users"
on "public"."cards"
as permissive
for select
to public
using (true);


create policy "Enable read access for all users"
on "public"."pack_card_rel"
as permissive
for select
to public
using (true);



