create policy "Enable read access for all users"
on "storage"."buckets"
as permissive
for select
to public
using (true);


create policy "Enable read access for all users"
on "storage"."objects"
as permissive
for select
to public
using (true);



grant select on table "cron"."job" to "postgres";

grant delete on table "cron"."job_run_details" to "postgres";

grant insert on table "cron"."job_run_details" to "postgres";

grant references on table "cron"."job_run_details" to "postgres";

grant select on table "cron"."job_run_details" to "postgres";

grant trigger on table "cron"."job_run_details" to "postgres";

grant truncate on table "cron"."job_run_details" to "postgres";

grant update on table "cron"."job_run_details" to "postgres";

create policy "cron_job_policy"
on "cron"."job"
as permissive
for all
to public
using ((username = CURRENT_USER));


create policy "cron_job_run_details_policy"
on "cron"."job_run_details"
as permissive
for all
to public
using ((username = CURRENT_USER));


CREATE TRIGGER cron_job_cache_invalidate AFTER INSERT OR DELETE OR UPDATE OR TRUNCATE ON cron.job FOR EACH STATEMENT EXECUTE FUNCTION cron.job_cache_invalidate();


