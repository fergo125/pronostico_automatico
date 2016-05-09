#!/bin/bash

#http://thredds.ucar.edu/thredds/ncss/grib/NCEP/WW3/Global/Best
#?var=Significant_height_of_combined_wind_waves_and_swell_surface
#&north=30
#&west=-120
#&east=-60
#&south=0
#&disableProjSubset=on
#&horizStride=1
#&time_start="$START_DATE"T00%3A00%3A00Z
#&time_end="$END_DATE"T00%3A00%3A00Z
#&timeStride=1
#&vertCoord=
#&accept=netcdf

START_DATE=$(date +"%Y-%m-%d")
END_DATE=$(date +"%Y-%m-%d" -d "+7 days")
DATA_DIR="http://thredds.ucar.edu/thredds/ncss/grib/NCEP/WW3/Global/Best?var=Significant_height_of_combined_wind_waves_and_swell_surface&north=30&west=-120&east=-60&south=0&disableProjSubset=on&horizStride=1&time_start="$START_DATE"T00%3A00%3A00Z&time_end="$END_DATE"T00%3A00%3A00Z&timeStride=1&vertCoord=&accept=netcdf"
wget -O data/oleaje/data.nc $DATA_DIR
DATE=$(date +"%d-%m-%Y")
cp data/oleaje/data.nc data/oleaje/datos_oleaje_$DATE.nc
exit
