# Plenser R&D App - Minimal Vercel Deployment

Use this folder if Vercel shows `404: NOT_FOUND`.

Push the contents of this folder directly to the GitHub repository root.

The GitHub repo root should contain:

- `index.html`
- `plenser-logo.png`
- `supabase-schema.sql`
- `README.md`

Do not put these files inside another folder.

Vercel settings:

- Framework Preset: `Other`
- Build Command: leave empty
- Output Directory: leave empty
- Install Command: leave default/empty

If Vercel has old settings:

1. Go to Project Settings.
2. Clear the Build Command.
3. Clear the Output Directory.
4. Redeploy from GitHub.

Supabase:

Run `supabase-schema.sql` in Supabase SQL Editor before using the app.

Project workflow:

- New projects start at `Design Stage`.
- Move them to `Approval` after design review.
- Upload an `Approved Budget` in Project Budgets.
- Only then can the project move to `Planning`.
