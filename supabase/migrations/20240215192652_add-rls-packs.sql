create policy "Enable read access for all users"
on "public"."packs"
as permissive
for select
to public
using (true);



