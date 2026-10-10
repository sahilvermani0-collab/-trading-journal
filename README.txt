TRADING JOURNAL — CLOUD SYNC SETUP

What this package does:
- Same journal data on iPhone + PC
- Email/password sign-in
- Trades, account, deposits and withdrawals stored in Supabase
- Row Level Security so each signed-in user can access only their own rows

1. Create a Supabase project.
2. Open SQL Editor and run schema.sql.
3. In Supabase Auth, enable Email/Password.
4. Get Project URL and Publishable/anon key from the project API/Connect settings.
5. Upload index.html to your GitHub Pages repository, replacing the old index.html.
6. Open the website. Enter Project URL + Publishable/anon key.
7. Sign in/create the journal account.
8. Use the same login on PC and iPhone.

SECURITY:
- Only use the browser-safe Publishable/anon key.
- NEVER put a service_role/secret key in index.html or send it to anyone.
