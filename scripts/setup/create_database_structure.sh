#!/bin/bash

set -e

echo "Creating database structure..."

mkdir -p database/{schema,functions,policies,seeds,views,migrations}

touch database/README.md

echo "Database structure created successfully."
