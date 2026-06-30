#!/bin/bash

set -e

echo "Creating seed files..."

files=(
vehicle_categories.sql
part_categories.sql
wilayas.sql
)

for file in "${files[@]}"; do
    touch "database/seeds/$file"
done

echo "Done."
