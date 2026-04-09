# IXCOIN Node - Railway Deployment

  ## Upload ke GitHub

  Extract ZIP ini, lalu upload SEMUA file ke ROOT GitHub repo:

  ```
  repo/
  ├── Dockerfile
  ├── railway.toml
  ├── package.json
  ├── index.mjs          ← file utama (3MB, sudah di-build)
  ├── pino-file.mjs
  ├── pino-pretty.mjs
  ├── pino-worker.mjs
  └── thread-stream-worker.mjs
  ```

  Tidak ada subfolder yang perlu dibuat!

  ## Environment Variables di Railway

  | Variable | Nilai |
  |---|---|
  | PORT | 8080 |
  | NODE_ENV | production |
  | DATABASE_URL | Otomatis dari PostgreSQL Railway |
  | GENESIS_MNEMONIC | 12 kata seed phrase |
  | API_KEY | Kunci API kamu |
  | ADMIN_KEY | Kunci admin kamu |
  | ALLOWED_ORIGINS | https://nama-app.up.railway.app |
  