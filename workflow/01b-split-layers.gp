StartLog(LogFile="results/01b-split-layers.gp.log")
# Split full layer into layers by district.
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
WebGet(URL="https://data.openwaterfoundation.org/state/co/dwr/districts/co-dwr-district-4.geojson",OutputFile="downloads/co-dwr-district-4.geojson")
ReadGeoLayerFromGeoJSON(InputFile="downloads/co-dwr-district-4.geojson",GeoLayerID="co-dwr-district-4")
WebGet(URL="https://data.openwaterfoundation.org/state/co/dwr/districts/co-dwr-district-5.geojson",OutputFile="downloads/co-dwr-district-5.geojson")
ReadGeoLayerFromGeoJSON(InputFile="downloads/co-dwr-district-5.geojson",GeoLayerID="co-dwr-district-5")
WebGet(URL="https://data.openwaterfoundation.org/state/co/dwr/districts/co-dwr-district-6.geojson",OutputFile="downloads/co-dwr-district-6.geojson")
ReadGeoLayerFromGeoJSON(InputFile="downloads/co-dwr-district-6.geojson",GeoLayerID="co-dwr-district-6")
WebGet(URL="https://data.openwaterfoundation.org/state/co/dwr/districts/co-dwr-district-7.geojson",OutputFile="downloads/co-dwr-district-7.geojson")
ReadGeoLayerFromGeoJSON(InputFile="downloads/co-dwr-district-7.geojson",GeoLayerID="co-dwr-district-7")
#
# Extract fire protection district features using the water district for intersection:
# - allow extending outside of the district so that fire protection district areas are complete
ExtractGeoLayer(GeoLayerID="co-fire-protection-districts",IntersectGeoLayerID="co-dwr-district-3",SelectionCondition="Intersects",OutputGeoLayerID="co-fire-protection-districts-waterdistrict3")
WriteGeoLayerToGeoJSON(GeoLayerID="co-fire-protection-districts-waterdistrict3",OutputFile="../data/latest/co-fire-protection-districts-waterdistrict3.geojson")
ExtractGeoLayer(GeoLayerID="co-fire-protection-districts",IntersectGeoLayerID="co-dwr-district-4",SelectionCondition="Intersects",OutputGeoLayerID="co-fire-protection-districts-waterdistrict4")
WriteGeoLayerToGeoJSON(GeoLayerID="co-fire-protection-districts-waterdistrict4",OutputFile="../data/latest/co-fire-protection-districts-waterdistrict4.geojson")
ExtractGeoLayer(GeoLayerID="co-fire-protection-districts",IntersectGeoLayerID="co-dwr-district-5",SelectionCondition="Intersects",OutputGeoLayerID="co-fire-protection-districts-waterdistrict5")
WriteGeoLayerToGeoJSON(GeoLayerID="co-fire-protection-districts-waterdistrict5",OutputFile="../data/latest/co-fire-protection-districts-waterdistrict5.geojson")
ExtractGeoLayer(GeoLayerID="co-fire-protection-districts",IntersectGeoLayerID="co-dwr-district-6",SelectionCondition="Intersects",OutputGeoLayerID="co-fire-protection-districts-waterdistrict6")
WriteGeoLayerToGeoJSON(GeoLayerID="co-fire-protection-districts-waterdistrict6",OutputFile="../data/latest/co-fire-protection-districts-waterdistrict6.geojson")
ExtractGeoLayer(GeoLayerID="co-fire-protection-districts",IntersectGeoLayerID="co-dwr-district-7",SelectionCondition="Intersects",OutputGeoLayerID="co-fire-protection-districts-waterdistrict7")
WriteGeoLayerToGeoJSON(GeoLayerID="co-fire-protection-districts-waterdistrict7",OutputFile="../data/latest/co-fire-protection-districts-waterdistrict7.geojson")
#
# Extract metropolitan district features using the water district for intersection:
# - allow extending outside of the district so that metropolitan district areas are complete
ExtractGeoLayer(GeoLayerID="co-metropolitan-districts",IntersectGeoLayerID="co-dwr-district-3",SelectionCondition="Intersects",OutputGeoLayerID="co-metropolitan-districts-waterdistrict3")
WriteGeoLayerToGeoJSON(GeoLayerID="co-metropolitan-districts-waterdistrict3",OutputFile="../data/latest/co-metropolitan-districts-waterdistrict3.geojson")
ExtractGeoLayer(GeoLayerID="co-metropolitan-districts",IntersectGeoLayerID="co-dwr-district-4",SelectionCondition="Intersects",OutputGeoLayerID="co-metropolitan-districts-waterdistrict4")
WriteGeoLayerToGeoJSON(GeoLayerID="co-metropolitan-districts-waterdistrict4",OutputFile="../data/latest/co-metropolitan-districts-waterdistrict4.geojson")
ExtractGeoLayer(GeoLayerID="co-metropolitan-districts",IntersectGeoLayerID="co-dwr-district-5",SelectionCondition="Intersects",OutputGeoLayerID="co-metropolitan-districts-waterdistrict5")
WriteGeoLayerToGeoJSON(GeoLayerID="co-metropolitan-districts-waterdistrict5",OutputFile="../data/latest/co-metropolitan-districts-waterdistrict5.geojson")
ExtractGeoLayer(GeoLayerID="co-metropolitan-districts",IntersectGeoLayerID="co-dwr-district-6",SelectionCondition="Intersects",OutputGeoLayerID="co-metropolitan-districts-waterdistrict6")
WriteGeoLayerToGeoJSON(GeoLayerID="co-metropolitan-districts-waterdistrict6",OutputFile="../data/latest/co-metropolitan-districts-waterdistrict6.geojson")
ExtractGeoLayer(GeoLayerID="co-metropolitan-districts",IntersectGeoLayerID="co-dwr-district-7",SelectionCondition="Intersects",OutputGeoLayerID="co-metropolitan-districts-waterdistrict7")
WriteGeoLayerToGeoJSON(GeoLayerID="co-metropolitan-districts-waterdistrict7",OutputFile="../data/latest/co-metropolitan-districts-waterdistrict7.geojson")
#
# Extract soil conservation district features using the water district for intersection:
# - allow extending outside of the district so that soil conservation district areas are complete
ExtractGeoLayer(GeoLayerID="co-soil-conservation-districts",IntersectGeoLayerID="co-dwr-district-3",SelectionCondition="Intersects",OutputGeoLayerID="co-soil-conservation-districts-waterdistrict3")
WriteGeoLayerToGeoJSON(GeoLayerID="co-soil-conservation-districts-waterdistrict3",OutputFile="../data/latest/co-soil-conservation-districts-waterdistrict3.geojson")
ExtractGeoLayer(GeoLayerID="co-soil-conservation-districts",IntersectGeoLayerID="co-dwr-district-4",SelectionCondition="Intersects",OutputGeoLayerID="co-soil-conservation-districts-waterdistrict4")
WriteGeoLayerToGeoJSON(GeoLayerID="co-soil-conservation-districts-waterdistrict4",OutputFile="../data/latest/co-soil-conservation-districts-waterdistrict4.geojson")
ExtractGeoLayer(GeoLayerID="co-soil-conservation-districts",IntersectGeoLayerID="co-dwr-district-5",SelectionCondition="Intersects",OutputGeoLayerID="co-soil-conservation-districts-waterdistrict5")
WriteGeoLayerToGeoJSON(GeoLayerID="co-soil-conservation-districts-waterdistrict5",OutputFile="../data/latest/co-soil-conservation-districts-waterdistrict5.geojson")
ExtractGeoLayer(GeoLayerID="co-soil-conservation-districts",IntersectGeoLayerID="co-dwr-district-6",SelectionCondition="Intersects",OutputGeoLayerID="co-soil-conservation-districts-waterdistrict6")
WriteGeoLayerToGeoJSON(GeoLayerID="co-soil-conservation-districts-waterdistrict6",OutputFile="../data/latest/co-soil-conservation-districts-waterdistrict6.geojson")
ExtractGeoLayer(GeoLayerID="co-soil-conservation-districts",IntersectGeoLayerID="co-dwr-district-7",SelectionCondition="Intersects",OutputGeoLayerID="co-soil-conservation-districts-waterdistrict7")
WriteGeoLayerToGeoJSON(GeoLayerID="co-soil-conservation-districts-waterdistrict7",OutputFile="../data/latest/co-soil-conservation-districts-waterdistrict7.geojson")
#
# Extract water and sanitation features using the water district for intersection:
# - allow extending outside of the district so that water and sanitation district areas are complete
ExtractGeoLayer(GeoLayerID="co-water-and-sanitation-districts",IntersectGeoLayerID="co-dwr-district-3",SelectionCondition="Intersects",OutputGeoLayerID="co-water-and-sanitation-districts-waterdistrict3")
WriteGeoLayerToGeoJSON(GeoLayerID="co-water-and-sanitation-districts-waterdistrict3",OutputFile="../data/latest/co-water-and-sanitation-districts-waterdistrict3.geojson")
ExtractGeoLayer(GeoLayerID="co-water-and-sanitation-districts",IntersectGeoLayerID="co-dwr-district-4",SelectionCondition="Intersects",OutputGeoLayerID="co-water-and-sanitation-districts-waterdistrict4")
WriteGeoLayerToGeoJSON(GeoLayerID="co-water-and-sanitation-districts-waterdistrict4",OutputFile="../data/latest/co-water-and-sanitation-districts-waterdistrict4.geojson")
ExtractGeoLayer(GeoLayerID="co-water-and-sanitation-districts",IntersectGeoLayerID="co-dwr-district-5",SelectionCondition="Intersects",OutputGeoLayerID="co-water-and-sanitation-districts-waterdistrict5")
WriteGeoLayerToGeoJSON(GeoLayerID="co-water-and-sanitation-districts-waterdistrict5",OutputFile="../data/latest/co-water-and-sanitation-districts-waterdistrict5.geojson")
ExtractGeoLayer(GeoLayerID="co-water-and-sanitation-districts",IntersectGeoLayerID="co-dwr-district-6",SelectionCondition="Intersects",OutputGeoLayerID="co-water-and-sanitation-districts-waterdistrict6")
WriteGeoLayerToGeoJSON(GeoLayerID="co-water-and-sanitation-districts-waterdistrict6",OutputFile="../data/latest/co-water-and-sanitation-districts-waterdistrict6.geojson")
ExtractGeoLayer(GeoLayerID="co-water-and-sanitation-districts",IntersectGeoLayerID="co-dwr-district-7",SelectionCondition="Intersects",OutputGeoLayerID="co-water-and-sanitation-districts-waterdistrict7")
WriteGeoLayerToGeoJSON(GeoLayerID="co-water-and-sanitation-districts-waterdistrict7",OutputFile="../data/latest/co-water-and-sanitation-districts-waterdistrict7.geojson")