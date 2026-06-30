#!/bin/bash

set -e

echo "======================================"
echo " PieceFacile Repository Bootstrap"
echo "======================================"

mkdir -p \
database/{schema,functions,policies,seeds,views,migrations} \
datasets/{passenger_cars,light_commercial,heavy_trucks,buses,motorcycles,agricultural,construction} \
archive/{docs,sql,datasets,experiments}

echo "Repository structure verified."

echo "Done."
