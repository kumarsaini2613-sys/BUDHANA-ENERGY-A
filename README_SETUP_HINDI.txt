SUBSTATION ENERGY AUDIT PRO — SHARED MOBILE WEB APP

What's preserved:
- Existing 29 substations and the existing transformer/incomer/feeder workflow
- Meter numbers, MF, previous/current readings and dates
- Energy balance, CSV export, PDF print, local backup/restore
- Local browser saving remains available

What's added:
- PWA install support (Android/iPhone compatible browser-based app)
- Optional Supabase shared cloud sync, one row per substation
- Cloud setup panel inside the app

IMPORTANT:
The cloud is NOT active until a Supabase project is created and its URL + anon/public key are entered in the app.
The supplied SQL creates a shared-link database: anyone who has the app URL and public key can read/edit all station records.
Do not use this shared mode for confidential data. Do not put a Supabase service_role key in the app.

Setup:
1. Create a Supabase project.
2. Open SQL Editor and run supabase_setup.sql.
3. In Project Settings > API, copy Project URL and anon/public key.
4. Deploy this folder to HTTPS hosting (GitHub Pages/Netlify).
5. Open the app, enter URL and anon/public key in "साझा ऑनलाइन सेविंग", tap connect.
6. Repeat opening same deployed URL on other phones. Install from browser menu/Add to Home Screen.

Current local records are NOT automatically uploaded until each station is opened and saved after cloud connection. Before cloud setup, download a backup from the app. For initial migration, open each station and press Save after connecting.

Offline note:
Local saves work offline on the same browser/device. Cross-device sync requires internet.
