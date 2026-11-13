-- Substation Energy Audit Pro: shared cloud table
-- Run this in Supabase Dashboard > SQL Editor.
create table if not exists public.station_data (
  station_id text primary key,
  data jsonb not null,
  updated_at timestamptz not null default now()
);
alter table public.station_data enable row level security;
-- Shared-link mode: anyone with the app's public anon key can read/write all station rows.
-- Use only if you intentionally want all users of the shared app to see/edit every station.
create policy "shared read station data" on public.station_data
for select to anon, authenticated using (true);
create policy "shared insert station data" on public.station_data
for insert to anon, authenticated with check (true);
create policy "shared update station data" on public.station_data
for update to anon, authenticated using (true) with check (true);
