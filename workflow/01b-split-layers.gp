# Split full layer into layers by district:
# - TODO smalers 2022-08-19 the complete workflow gives errors,
#   perhaps due to file locking, and therefore must be run in parts by selecting commands
#
# Read the previously-created DOLA district layers.
ReadGeoLayerFromGeoJSON(InputFile="../data/latest/co-fire-protection-districts.geojson",GeoLayerID="co-fire-protection-districts")
FixGeoLayer(GeoLayerID="co-fire-protection-districts",OutputGeoLayerID="co-fire-protection-districts")
#
ReadGeoLayerFromGeoJSON(InputFile="../data/latest/co-metropolitan-districts.geojson",GeoLayerID="co-metropolitan-districts")
FixGeoLayer(GeoLayerID="co-metropolitan-districts",OutputGeoLayerID="co-metropolitan-districts")
#
ReadGeoLayerFromGeoJSON(InputFile="../data/latest/co-soil-conservation-districts.geojson",GeoLayerID="co-soil-conservation-districts")
FixGeoLayer(GeoLayerID="co-soil-conservation-districts",OutputGeoLayerID="co-soil-conservation-districts")
#
ReadGeoLayerFromGeoJSON(InputFile="../data/latest/co-water-and-sanitation-districts.geojson",GeoLayerID="co-water-and-sanitation-districts")
FixGeoLayer(GeoLayerID="co-water-and-sanitation-districts",OutputGeoLayerID="co-water-and-sanitation-districts")
#
# Download and read the water districts used to split the DOLA district layers.
WebGet(URL="https://data.openwaterfoundation.org/state/co/dwr/districts/co-dwr-district-3.geojson",OutputFile="downloads/co-dwr-district-3.geojson")
ReadGeoLayerFromGeoJSON(InputFile="downloads/co-dwr-district-3.geojson",GeoLayerID="co-dwr-district-3")
#
# Extract fire protection district features using the water district for intersection:
# - allow extending outside of the district so that fire protection district areas are complete
ExtractGeoLayer(GeoLayerID="co-fire-protection-districts",IntersectGeoLayerID="co-dwr-district-3",SelectionCondition="Intersects",OutputGeoLayerID="co-fire-protection-districts-waterdistrict3")
WriteGeoLayerToGeoJSON(GeoLayerID="co-fire-protection-districts-waterdistrict3",OutputFile="../data/latest/co-fire-protection-districts-waterdistrict3.geojson")
#
# Extract metropolitan district features using the water district for intersection:
# - allow extending outside of the district so that metropolitan district areas are complete
ExtractGeoLayer(GeoLayerID="co-metropolitan-districts",IntersectGeoLayerID="co-dwr-district-3",SelectionCondition="Intersects",OutputGeoLayerID="co-metropolitan-districts-waterdistrict3")
WriteGeoLayerToGeoJSON(GeoLayerID="co-metropolitan-districts-waterdistrict3",OutputFile="../data/latest/co-metropolitan-districts-waterdistrict3.geojson")
#
# Extract soil conservation district features using the water district for intersection:
# - allow extending outside of the district so that soil conservation district areas are complete
ExtractGeoLayer(GeoLayerID="co-soil-conservation-districts",IntersectGeoLayerID="co-dwr-district-3",SelectionCondition="Intersects",OutputGeoLayerID="co-soil-conservation-districts-waterdistrict3")
WriteGeoLayerToGeoJSON(GeoLayerID="co-soil-conservation-districts-waterdistrict3",OutputFile="../data/latest/co-soil-conservation-districts-waterdistrict3.geojson")
#
# Extract water and sanitation features using the water district for intersection:
# - allow extending outside of the district so that water and sanitation district areas are complete
ExtractGeoLayer(GeoLayerID="co-water-and-sanitation-districts",IntersectGeoLayerID="co-dwr-district-3",SelectionCondition="Intersects",OutputGeoLayerID="co-water-and-sanitation-districts-waterdistrict3")
WriteGeoLayerToGeoJSON(GeoLayerID="co-water-and-sanitation-districts-waterdistrict3",OutputFile="../data/latest/co-water-and-sanitation-districts-waterdistrict3.geojson")
