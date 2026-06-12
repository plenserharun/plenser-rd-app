Plenser R&D App - Vercel + Supabase

This package is ready for Vercel static deployment.

Files:
- index.html
- plenser-logo.png
- vercel.json
- supabase-schema.sql

Before deploying:
1. Create a Supabase project.
2. Open Supabase SQL Editor.
3. Run the contents of supabase-schema.sql.
4. Open index.html.
5. Find:
   const SUPABASE_URL = 'PASTE_SUPABASE_PROJECT_URL_HERE';
   const SUPABASE_ANON_KEY = 'PASTE_SUPABASE_ANON_OR_PUBLISHABLE_KEY_HERE';
6. Replace those placeholders with your Supabase Project URL and anon/publishable key.

Deploy on Vercel:
1. Go to Vercel.
2. Create a new project.
3. Import/upload this folder.
4. Framework preset: Other.
5. Build command: leave empty.
6. Output directory: leave empty.
7. Deploy.

Notes:
- Data is stored online in Supabase.
- This transitional version keeps the app's existing login model inside the Supabase data row.
- For stronger production security, move login to Supabase Auth and large uploads to Supabase Storage.
