#!/bin/bash

echo "🚀 Démarrage de Odoo avec nettoyage cache + dev mode"

# Nettoyage des fichiers cache/filestore cassés
rm -rf /var/lib/odoo/filestore/* /var/lib/odoo/.local/share/Odoo/filestore/* || true
rm -rf /var/lib/odoo/.local/share/Odoo/web/assets/* || true

exec odoo \
  -d railway \
  -i base \
  --dev=all \
  --db_host=dpg-postgres.railway.internal \
  --db_port=5432 \
  --db_user=admin \
  --db_password=NSmKccDkFElZmmiKnstQAIYTQeFYOotk \
  --http-port=8069 \
  --without-demo=all \
  --log-level=info \
