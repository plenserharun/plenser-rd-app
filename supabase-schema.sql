-- Plenser R&D App - Supabase setup
-- Run this in Supabase SQL Editor before deploying the Supabase version of the app.

create table if not exists public.plenser_app_state (
  id text primary key,
  data jsonb not null,
  updated_at timestamptz not null default now()
);

alter table public.plenser_app_state enable row level security;

grant usage on schema public to anon, authenticated;
grant select, insert, update on public.plenser_app_state to anon, authenticated;

drop policy if exists "plenser_app_state_read" on public.plenser_app_state;
drop policy if exists "plenser_app_state_insert" on public.plenser_app_state;
drop policy if exists "plenser_app_state_update" on public.plenser_app_state;

-- Transitional policy for the current static single-file app.
-- Anyone with the deployed app's anon key can read/update this row.
-- For production-grade security, move login to Supabase Auth and tighten these policies.
create policy "plenser_app_state_read"
on public.plenser_app_state
for select
to anon
using (true);

create policy "plenser_app_state_insert"
on public.plenser_app_state
for insert
to anon
with check (id = 'main');

create policy "plenser_app_state_update"
on public.plenser_app_state
for update
to anon
using (id = 'main')
with check (id = 'main');
