#!/bin/bash

set -e

echo "Creating policy files..."

files=(
profiles.sql
shops.sql
requests.sql
offers.sql
deals.sql
messages.sql
notifications.sql
storage.sql
)

for file in "${files[@]}"; do
    touch "database/policies/$file"
done

echo "Done."
