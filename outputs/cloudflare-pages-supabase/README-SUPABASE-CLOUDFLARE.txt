Plenser R&D App - Supabase + Cloudflare Pages

This package stores app data online in Supabase instead of browser localStorage.

Files:
- index.html
- plenser-logo.png
- supabase-schema.sql

Setup:
1. Create a Supabase project.
2. Open Supabase SQL Editor.
3. Run the contents of supabase-schema.sql.
4. Open index.html.
5. Find:
   const SUPABASE_URL = 'PASTE_SUPABASE_PROJECT_URL_HERE';
   const SUPABASE_ANON_KEY = 'PASTE_SUPABASE_ANON_OR_PUBLISHABLE_KEY_HERE';
6. Replace those placeholders with your Supabase Project URL and anon/publishable key.
7. Upload index.html and plenser-logo.png to Cloudflare Pages.

Data stored online:
- users
- login details from the existing app data
- teams
- projects
- budgets
- uploaded file metadata/data URLs
- reports
- activity logs
- settings

Security note:
This is a transitional online database setup for the current single-file app. It keeps the app working with your existing login model, but production-grade security should move login to Supabase Auth and store large files in Supabase Storage instead of JSON.
