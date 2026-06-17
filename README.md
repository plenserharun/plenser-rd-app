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
- Give selected users approval rights in Teams & Users.
- Upload an `Approved Budget` in Project Budgets.
- An authorized user must approve that budget.
- Only an authorized user can move the project from `Approval` to `Planning`.
- The app logs who approved the phase move.
- Before a project moves to `Testing`, testing forms must be uploaded in Testing Forms.
