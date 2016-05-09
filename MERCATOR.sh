#!/bin/bash
time=$(date +"%Y%m%d")
time1=$(date +"%Y-%m-%d")
time2=$(date +"%Y-%m-%d" -d "6 days")
FILE_NAME="temperatura_corrientes_"$time1".nc"

#MERCATOR OCEAN
python "./motu-client-python/motu-client.py" -u fmata -p 1gGjkdDl -m http://nrtcmems.mercator-ocean.fr/mis-gateway-servlet/Motu -s http://purl.org/myocean/ontology/service/database#GLOBAL_ANALYSIS_FORECAST_PHYS_001_002-TDS -d global-analysis-forecast-phys-001-002 -x -100 -X -73.5 -y 0 -Y 18 -t "$time1 12:00:00" -T "$time2 12:00:00" -z 0.49 -Z 0.50 -v v -v u -v salinity -v ssh -v temperature -o data/temperatura_corrientes/ --out-name $FILE_NAME

cp data/temperatura_corrientes/$FILE_NAME data/temperatura_corrientes/data.nc
exit #  The right and proper method of "exiting" from a script.
