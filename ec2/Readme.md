Internet
   |
   | 80
   ▼
Nginx
   ├── /        → React static files
   └── /api     → Django (gunicorn)
                       |
                       ▼
                  PostgreSQL

