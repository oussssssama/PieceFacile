#!/bin/bash

set -e

echo "Creating schema files..."

files=(
vehicle_categories.sql
vehicle_brands.sql
vehicle_families.sql
vehicle_models.sql
vehicle_generations.sql
vehicle_engines.sql

part_categories.sql
parts.sql
part_aliases.sql

profiles.sql
shops.sql

requests.sql
request_items.sql

offers.sql
offer_items.sql

deals.sql
ratings.sql

conversations.sql
messages.sql

notifications.sql
)

for file in "${files[@]}"; do
    touch "database/schema/$file"
    echo "Created: $file"
done

echo "Done."
