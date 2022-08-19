## Overview ##

This dataset contains GeoJSON polygon features for Colorado Department of Local Affairs (DOLA) district boundaries
that are relevant to water, including:

* fire protection districts
* metropolitan districts
* soil conservation districts
* water and sanitation districts

The layers are provided for the entire state and split by Colorado Divsion of Water Resources water districts
to simplify use in applications and additional analysis.

Note that districts are entities that are created by statute and are not the same as service areas
associated with municipal government.
Therefore these layers do not provide a complete picture of services.
Other datasets provide merged data, for example for treated water providers that include
special districts and municipal utilities.
The service areas for water, wastewater, and stormwater may be different within the same utility
and therefore boundaries for each require separate processing.

## Downloads ##

The following files can be downloaded or used directly.
Files are available for various district types.

### All Special Districts ###

| **Layer File** | **Description** | **View** |
| -- | -- | -- |
| [`co-special-districts.geojson`](latest/co-special-districts.geojson) | Colorado special district boundaries (GeoJSON). | [View](https://gavinr.github.io/geojson-viewer/?url=https://data.openwaterfoundation.org/state/co/dola/district-boundaries/latest/co-special-districts.geojson) |

### Fire Protection Districts ###

| **Layer File** | **Description** | **View** |
| -- | -- | -- |
| [`co-fire-protection-districts.geojson`](latest/co-fire-protection-districts.geojson) | Colorado fire protection district boundaries for the entire state. | [View](https://gavinr.github.io/geojson-viewer/?url=https://data.openwaterfoundation.org/state/co/dola/district-boundaries/latest/co-fire-protection-districts.geojson) |
| [`co-fire-protection-districts-waterdistrict3.geojson`](latest/co-fire-protection-districts-waterdistrict3.geojson) | Colorado fire protection district boundaries for Water District 3 (Poudre). | [View](https://gavinr.github.io/geojson-viewer/?url=https://data.openwaterfoundation.org/state/co/dola/district-boundaries/latest/co-fire-protection-districts-waterdistrict3.geojson) |

### Metropolitan Districts ###

| **Layer File** | **Description** | **View** |
| -- | -- | -- |
| [`co-metropolitan-districts.geojson`](latest/co-metropolitan-districts.geojson) | Colorado metropolitan district boundaries for the entire state. | [View](https://gavinr.github.io/geojson-viewer/?url=https://data.openwaterfoundation.org/state/co/dola/district-boundaries/latest/co-metropolitan-districts.geojson) |
| [`co-metropolitan-districts-waterdistrict3.geojson`](latest/co-metropolitan-districts-waterdistrict3.geojson) | Colorado metropolitan district boundaries for Water District 3 (Poudre). | [View](https://gavinr.github.io/geojson-viewer/?url=https://data.openwaterfoundation.org/state/co/dola/district-boundaries/latest/co-metropolitan-districts-waterdistrict3.geojson) |

### Soil Conservation Districts ###

| **Layer File** | **Description** | **View** |
| -- | -- | -- |
| [`co-soil-conservation-districts.geojson`](latest/co-soil-conservation-districts.geojson) | Colorado soil conservation district boundaries for the entire state. | [View](https://gavinr.github.io/geojson-viewer/?url=https://data.openwaterfoundation.org/state/co/dola/district-boundaries/latest/co-soil-conservation-districts.geojson) |
| [`co-soil-conservation-districts-waterdistrict3.geojson`](latest/co-soil-conservation-districts-waterdistrict3.geojson) | Colorado soil conservation district boundaries for Water District 3 (Poudre). | [View](https://gavinr.github.io/geojson-viewer/?url=https://data.openwaterfoundation.org/state/co/dola/district-boundaries/latest/co-soil-conservation-districts-waterdistrict3.geojson) |

### Water and Sanitation Districts ###

| **Layer File** | **Description** | **View** |
| -- | -- | -- |
| [`co-water-and-sanitation-districts.geojson`](latest/co-water-and-sanitation-districts.geojson) | Colorado water and sanitation district boundaries for the entire state. | [View](https://gavinr.github.io/geojson-viewer/?url=https://data.openwaterfoundation.org/state/co/dola/district-boundaries/latest/co-water-and-sanitation-districts.geojson) |
| [`co-water-and-sanitation-districts-waterdistrict3.geojson`](latest/co-water-and-sanitation-districts-waterdistrict3.geojson) | Colorado water and sanitation district boundaries for Water District 3 (Poudre). | [View](https://gavinr.github.io/geojson-viewer/?url=https://data.openwaterfoundation.org/state/co/dola/district-boundaries/latest/co-water-and-sanitation-districts-waterdistrict3.geojson) |

## Workflow ##

See the [`owf-data-co-dola-district-boundaries`](https://github.com/OpenWaterFoundation/owf-data-co-dola-district-boundaries)
GitHub repository for information.

## Update Frequency and Versions ##

The dataset is updated periodically from the State Department of Local Affairs Office and a single `latest` version is published.
In the future, dated snapshots may be published to help archive data to understand growth.

## Credits ##

* The original datasets are downloaded from the [DOLA GIS shapefile](https://demography.dola.colorado.gov/assets/html/gis.html) data. 
* The Open Water Foundation created and maintains this derived dataset.

## License ##

[Attribution-ShareAlike 4.0 International](https://creativecommons.org/licenses/by-sa/4.0/)

## See Also ##

* [Colorado Municipal Boundaries](https://data.openwaterfoundation.org/state/co/dola/municipal-boundaries) dataset,
* [Colorado Water Provider Boundaries](https://data.openwaterfoundation.org/state/co/owf/water-provider-boundaries) dataset, which includes a subset of the DOLA districts.
