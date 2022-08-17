StartLog(LogFile="results/01-download-districts-from-dola.gp.log")
# Download statewide district boundaries polygon layers from DOLA.
# - this version uses the dataset on the DOLA website
# - this should only need to be done periodically
# - save the results to the '..data/' folder
#

# Download the full DOLA special districts layer and convert to GeoJSON.
CreateFolder(Folder="downloads/special-districts",CreateParentFolders="True",IfFolderExists="Ignore")
WebGet(URL="https://storage.googleapis.com/co-publicdata/dlall.zip",OutputFile="downloads/special-districts/dlall.zip")
# Unzip the shapefile, read, and save to a GeoJSON file
UnzipFile(File="downloads/special-districts/dlall.zip",OutputFolder="downloads/special-districts",IfFolderDoesNotExist="Create")
ReadGeoLayerFromShapefile(InputFile="downloads/special-districts/dlall.shp",GeoLayerID="co-special-districts",Name="Special Districts",Description="Special Districts (all districts), from DOLA")
WriteGeoLayerToGeoJSON(GeoLayerID="co-special-districts",OutputFile="../data/latest/co-special-districts.geojson",OutputPrecision="5")

# Download metropolitan districts and convert to GeoJSON.
CreateFolder(Folder="downloads/metropolitan-districts",CreateParentFolders="True",IfFolderExists="Ignore")
WebGet(URL="https://storage.googleapis.com/co-publicdata/dlmetro.zip",OutputFile="downloads/metropolitan-districts/dlmetro.zip")
# Unzip the shapefile, read, and save to a GeoJSON file
UnzipFile(File="downloads/metropolitan-districts/dlmetro.zip",OutputFolder="downloads/metropolitan-districts",IfFolderDoesNotExist="Create")
ReadGeoLayerFromShapefile(InputFile="downloads/metropolitan-districts/dlmetro.shp",GeoLayerID="co-metropolitan-districts",Name="Metropolitan Districts",Description="Metropolitan (metro) districts, from DOLA")
WriteGeoLayerToGeoJSON(GeoLayerID="co-metropolitan-districts",OutputFile="../data/latest/co-metropolitan-districts.geojson",OutputPrecision="5")

# Download fire protection districts and convert to GeoJSON.
CreateFolder(Folder="downloads/fire-protection-districts",CreateParentFolders="True",IfFolderExists="Ignore")
WebGet(URL="https://storage.googleapis.com/co-publicdata/dlfire.zip",OutputFile="downloads/fire-protection-districts/dlfire.zip")
# Unzip the shapefile, read, and save to a GeoJSON file
UnzipFile(File="downloads/fire-protection-districts/dlfire.zip",OutputFolder="downloads/fire-protection-districts",IfFolderDoesNotExist="Create")
ReadGeoLayerFromShapefile(InputFile="downloads/fire-protection-districts/dlfire.shp",GeoLayerID="co-fire-protection-districts",Name="Fire Protection Districts",Description="Fire protection districts, from DOLA")
WriteGeoLayerToGeoJSON(GeoLayerID="co-fire-protection-districts",OutputFile="../data/latest/co-fire-protection-districts.geojson",OutputPrecision="5")

# Water and sanitation districts and convert to GeoJSON.
CreateFolder(Folder="downloads/water-and-sanitation-districts",CreateParentFolders="True",IfFolderExists="Ignore")
WebGet(URL="https://storage.googleapis.com/co-publicdata/dlwatersan.zip",OutputFile="downloads/water-and-sanitation-districts/dlwatersan.zip")
# Unzip the shapefile, read, and save to a GeoJSON file
UnzipFile(File="downloads/water-and-sanitation-districts/dlwatersan.zip",OutputFolder="downloads/water-and-sanitation-districts",IfFolderDoesNotExist="Create")
ReadGeoLayerFromShapefile(InputFile="downloads/water-and-sanitation-districts/dlwatersan.shp",GeoLayerID="co-water-and-sanitation-districts",Name="Water and Sanitation Districts",Description="Water and sanitation districts, from DOLA")
WriteGeoLayerToGeoJSON(GeoLayerID="co-water-and-sanitation-districts",OutputFile="../data/latest/co-water-and-sanitation-districts.geojson",OutputPrecision="5")

# Soil conservation districts and convert to GeoJSON.
CreateFolder(Folder="downloads/soil-conservation-districts",CreateParentFolders="True",IfFolderExists="Ignore")
WebGet(URL="https://storage.googleapis.com/co-publicdata/dlsoil.zip",OutputFile="downloads/soil-conservation-districts/dlsoil.zip")
# Unzip the shapefile, read, and save to a GeoJSON file
UnzipFile(File="downloads/soil-conservation-districts/dlsoil.zip",OutputFolder="downloads/soil-conservation-districts",IfFolderDoesNotExist="Create")
ReadGeoLayerFromShapefile(InputFile="downloads/soil-conservation-districts/dlsoil.shp",GeoLayerID="co-soil-conservation-districts",Name="Soil Conservation Districts",Description="Soil conservation districts, from DOLA")
WriteGeoLayerToGeoJSON(GeoLayerID="co-soil-conservation-districts",OutputFile="../data/latest/co-soil-conservation-districts.geojson",OutputPrecision="5")
