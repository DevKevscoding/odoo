#!/bin/bash

echo "🚀 Démarrage de Odoo avec nettoyage cache + dev mode"

# Nettoyage des fichiers cache/filestore cassés
rm -rf /var/lib/odoo/filestore/* /var/lib/odoo/.local/share/Odoo/filestore/* || true
rm -rf /var/lib/odoo/.local/share/Odoo/web/assets/* || true

exec odoo \
  -d railway \
  -i base \
  --dev=all \
  --db_host=${DB_HOST} \
  --db_port=${DB_PORT} \
  --db_password=${DB_PASSWORD} \
  --http-port=8069 \
  --without-demo=all \
  --log-level=info \
