# GEW Sri Lanka Campaign Studio: setup

Files: index.html (the site), schema.sql (database table), vercel.json (hosting config).

## 1. Database (Supabase, free)
1. Create a project at supabase.com.
2. SQL Editor -> New query -> paste schema.sql -> Run.
3. Project Settings -> API -> copy "Project URL" and the "anon public" key.
4. Open index.html, find SUPABASE_URL and SUPABASE_ANON_KEY near the top of the script, paste both values between the quotes. Save.
   (Never use the service_role key.)

## 2. Host (Vercel, free)
Option A: push this folder to GitHub, then vercel.com/new -> import the repo -> Deploy.
Option B: in this folder run `npx vercel` and follow the prompts.
You get a link like gew-campaign.vercel.app.

## 3. First use
Open the site and click "Load the starter plan" once. Then add, edit and claim posts; everyone sees changes live.

## Keep it private
- vercel.json already tells search engines not to index it.
- Vercel project -> Settings -> Deployment Protection lets you add a password or login (some options need a paid plan).
- The default database policy lets anyone with the link edit. For real login, enable Supabase Auth and change the policy in schema.sql to: using (auth.role() = 'authenticated').

## No database yet?
Leave the two config lines empty: the site still works, saving only in each person's own browser.

## Change event dates
Edit the EVENTS list in index.html (Launch, Expo, Marathon).
