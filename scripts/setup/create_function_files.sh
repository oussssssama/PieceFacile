#!/bin/bash

set -e

echo "Creating function files..."

files=(
common.sql
triggers.sql
helpers.sql
)

for file in "${files[@]}"; do
    touch "database/functions/$file"
done

echo "Done."
