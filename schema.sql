-- Run this once in Supabase: SQL Editor -> New query -> paste -> Run
create table if not exists posts (
  id text primary key,
  data jsonb not null
);
alter table posts enable row level security;
create policy "team access" on posts for all using (true) with check (true);
alter publication supabase_realtime add table posts;
