Plenser R&D App - Cloudflare Pages Upload

Upload this folder to Cloudflare Pages using Direct Upload.

Files included:
- index.html
- plenser-logo.png

Cloudflare dashboard steps:
1. Go to Cloudflare Dashboard.
2. Open Workers & Pages.
3. Create application.
4. Choose Pages.
5. Choose Direct Upload / Drag and drop.
6. Upload this entire cloudflare-pages folder, or upload the zip file created beside it.
7. Deploy site.

Important:
- This is still a browser localStorage app.
- Uploaded files, users, budgets, and records are stored in each browser's local storage.
- Cloudflare Pages will host the app, but it will not automatically synchronize data between different users or computers until a backend is added.
- No _redirects or Netlify-style redirect file is included, to avoid redirect loops on Cloudflare Pages.
