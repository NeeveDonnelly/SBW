#!/bin/bash

echo "Creating clean virtual environment..."
python -m venv landsat_env

source landsat_env/bin/activate

echo "Installing compatible packages..."
pip install --upgrade pip

pip install \
  pystac-client \
  stackstac \
  geopandas \
  rioxarray \
  rasterio \
  xarray \
  numpy==1.26.4 \
  shapely==1.8.5.post1 \
  click==8.1.7 \
  tqdm \
  pandas \
  scikit-learn \
  joblib \
  ruptures \
  rasterstats \
  -q

echo "Environment ready!"
echo "Activate with: source landsat_env/bin/activate"
