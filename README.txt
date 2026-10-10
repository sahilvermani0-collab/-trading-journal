TRADING JOURNAL — DIRECT APP PACKAGE

This package is the cloud-synced Trading Journal configured for the existing Supabase project.

For a simple public link without GitHub:
1. Open Netlify Drop: https://app.netlify.com/drop
2. Unzip this package first.
3. Upload the extracted Trading_Journal_Direct_App folder.
4. Netlify gives you a live netlify.app URL to share.

IMPORTANT FOR LOGIN REDIRECT:
Add your new Netlify URL in Supabase:
Authentication -> URL Configuration -> Redirect URLs
Example:
https://YOUR-SITE.netlify.app/**

The app already contains the Supabase Project URL and browser-safe publishable key.
Never put a Supabase secret/service_role key in this app.

Each person creates their own journal login. Their data is separated by their Supabase user account and can sync across their phone/PC when they use the same login.
