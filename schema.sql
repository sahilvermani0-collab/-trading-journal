-- Trading Journal cloud database for Supabase
-- Run this in Supabase SQL Editor.
create table if not exists public.journal_data (
  user_id uuid not null references auth.users(id) on delete cascade,
  kind text not null check (kind in ('trade','account','deposit','withdrawal')),
  item_id text not null,
  payload jsonb not null,
  updated_at timestamptz not null default now(),
  primary key (user_id, kind, item_id)
);

alter table public.journal_data enable row level security;

drop policy if exists "journal_select_own" on public.journal_data;
create policy "journal_select_own" on public.journal_data
for select to authenticated
using (auth.uid() = user_id);

drop policy if exists "journal_insert_own" on public.journal_data;
create policy "journal_insert_own" on public.journal_data
for insert to authenticated
with check (auth.uid() = user_id);

drop policy if exists "journal_update_own" on public.journal_data;
create policy "journal_update_own" on public.journal_data
for update to authenticated
using (auth.uid() = user_id)
with check (auth.uid() = user_id);

drop policy if exists "journal_delete_own" on public.journal_data;
create policy "journal_delete_own" on public.journal_data
for delete to authenticated
using (auth.uid() = user_id);
