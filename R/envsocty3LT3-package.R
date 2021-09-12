#' @keywords internal
"_PACKAGE"

# The following block is used by usethis to automatically manage
# roxygen namespace tags. Modify with care!
## usethis namespace: start
## usethis namespace: end
NULL

#' Energy and emissions data for world countries.
#'
#' A dataset containing information about 188 world countries, including
#' population estimates, GDP per capita, energy consumption estimates,
#' and CO_2 emissions.
#'
#' @format A data frame with 188 rows and 11 variables:
#' \describe{
#'   \item{Country}{Names of countries as factor}
#'   \item{Area}{Surface land area of country in sq.km}
#'   \item{Population}{Population estimates}
#'   \item{PYear}{Year of the population estimate}
#'   \item{GDPPC}{Nominal GDP per capita in US dollars}
#'   \item{bblpd}{Estimated energy consumption in barrels of oil per day}
#'   \item{EYear}{Year of the energy consumption estimate}
#'   \item{CO2_1995}{CO_2 emissions in kilotonnes per year - 1995 estimates}
#'   \item{CO2_2005}{CO_2 emissions in kilotonnes per year - 2005 estimates}
#'   \item{CO2_2015}{CO_2 emissions in kilotonnes per year - 2015 estimates}
#' }
#'
#' @docType data
#' @keywords datasets
#' @name energy_and_emissions
#' @usage data(energy_and_emissions)
#' @source Energy Consumption Data Source: CIA Factbook, Refined Oil Products Consumption (\url{https://www.cia.gov/library/publications/the-world-factbook/rankorder/2246rank.html}) Accessed: September 5, 2017
#' @source CO2 Emissions Data Source: EC Emissions Database for Global Atmospheric Research (\url{http://edgar.jrc.ec.europa.eu/overview.php?v=CO2ts1990-2015}) Accessed: September 5, 2017
#' @source GDP Data Source: Wikipedia (\url{https://en.wikipedia.org/wiki/List_of_countries_by_GDP_(nominal)_per_capita}) Accessed: September 5, 2017
#' @examples
#'  data(energy_and_emissions)
#'  GDPPC <- energy_and_emissions$GDPPC
"energy_and_emissions"

#' Road network in and around the Hamilton CMA.
#'
#' A tbl_graph object with the road network in and around the Hamilton CMA. The network was
#' obtained from OpenStreetMap and includes highway links of type: motorway, motorway_link,
#' primary, primary_link, residential, secondary, secondary_link, tertiary, and tertiary_link.
#' The tbl_graph object consists of two tables: one table with the edges of the network and
#' and one table with the nodes of the network. The object is projected as UTM Zone 17N.
#'
#' @format A large tbl_graph object consisting of two tables, one for nodes and one for edges (links)
#' @format edges is simple features object with 35,142 rows and 6 variables:
#' \describe{
#'   \item{from}{Unique identifier of origin node in the network}
#'   \item{to}{Unique identifier of destination node in the network}
#'   \item{highway}{OpenStreetMap classification of the link. For defintions, see: \url{https://wiki.openstreetmap.org/wiki/Key:highway}}
#'   \item{geometry}{Geometry column}
#'   \item{EdgeID}{Unique identifier of the edge}
#'   \item{length}{Length of edge in meters}
#' }
#'
#' @format nodes is simple features object with 25,816 rows and 3 variables. The geometry is :
#' \describe{
#'   \item{nodeID}{Unique identifier of node}
#'   \item{geometry}{Geometry column}
#'   \item{GTA06}{}
#' }
#'
#' @docType data
#' @keywords datasets
#' @keywords transportation
#' @name hamilton_graph
#' @usage data(hamilton_graph)
#' @source OpenStreetMaps (\url{https://www.openstreetmap.org/#map=3/71.34/-96.82})
#' @examples
#'  data(hamilton_graph)
#'  summary(hamilton_graph)
"hamilton_graph"

#' Hamilton neighborhoods.
#'
#' A table with traditional neighborhoods in the City of Hamilton. These data were
#' obtained from Hamilton Open Data. The object is projected as UTM Zone 17N.
#'
#' @format A simple features object with 137 rows and 4 variables:
#' \describe{
#'   \item{OBJECTID}{Unique identifier for the neighborhood polygon}
#'   \item{Name}{Name of neighborhood}
#'   \item{Number}{Neighborhood number}
#'   \item{geometry}{Geometry column}
#' }
#'
#' @docType data
#' @keywords datasets
#' @keywords transportation
#' @keywords land uses
#' @name hamilton_neighborhoods
#' @usage data(hamilton_neighborhoods)
#' @source OpenStreetMaps (\url{https://www.openstreetmap.org/#map=3/71.34/-96.82})
#' @examples
#'  data(hamilton_neighborhoods)
#'  summary(hamilton_neighborhoods)
"hamilton_neighborhoods"

#' Establishments in and around the Hamilton CMA that serve food.
#'
#' A table with establishments that serve food in and around the Hamilton CMA. These data were
#' obtained from OpenStreetMap and includes the following types of establishments: Bar, Cafe,
#' Fast Food, Food Court, Pub, and Restaurant. The object is projected as UTM Zone 17N.
#'
#' @format A simple features object with 3,772 rows and 5 variables:
#' \describe{
#'   \item{osm_id}{Unique identifier for the point in OpenStreetMap}
#'   \item{name}{Name of establishment (when available)}
#'   \item{amenity}{Amenity category (when available). See: \url{https://wiki.openstreetmap.org/wiki/Key:amenity}}
#'   \item{type}{Type of establishment: Bar, Cafe, Fast Food, Food Court, Pub, Restaurant}
#'   \item{geometry}{Geometry column}
#' }
#'
#' @docType data
#' @keywords datasets
#' @keywords transportation
#' @keywords land uses
#' @name hamilton_sustenance
#' @usage data(hamilton_sustenance)
#' @source OpenStreetMaps (\url{https://www.openstreetmap.org/#map=3/71.34/-96.82})
#' @examples
#'  data(hamilton_sustenance)
#'  summary(hamilton_sustenance)
"hamilton_sustenance"

#' Employment statistics by place of employment for traffic analysis zones in the Hamilton CMA.
#'
#' A table with statistics about jobs by traffic analysis zones in the Hamilton CMA.
#' The zoning system is GTA06, and employment statistics are number of jobs in the
#' traffic analysis zone. This file is a portion of the system used by the Transportation
#' Tomorrow Survey in the Greater Toronto and Hamilton Area.
#'
#' @format A simple features object with 297 rows and 5 variables:
#' \describe{
#'   \item{GTA06}{Unique identifier of zone in the GTA06 system}
#'   \item{Jobs_Manufacturing_Construction_Trades}{Number of jobs in the traffic analysis zone of type Manufacturing/Construction/Trades}
#'   \item{Jobs_Retail}{Number of jobs in the traffic analysis zone of type Retail, Sales and Service}
#'   \item{Jobs_Office_Clerical}{Number of jobs in the traffic analysis zone of type Manufacturing/Construction/Trades}
#'   \item{Jobs_Professional}{Number of jobs in the traffic analysis zone of type Professional/Management/Technical}
#' }
#'
#' @docType data
#' @keywords datasets
#' @keywords transportation
#' @name hamilton_taz_employment
#' @usage data(hamilton_taz_employment)
#' @source Transportation Tomorrow Survey (\url{http://dmg.utoronto.ca/transportation-tomorrow-survey/tts-introduction})
#' @source Data Guide available (\url{http://dmg.utoronto.ca/pdf/tts/2016/2016TTS_DataGuide.pdf})
#' @examples
#'  data(hamilton_taz_employment)
#'  summary(hamilton_taz_employment)
"hamilton_taz_employment"

#' Person and households statistics for traffic analysis zones in the Hamilton CMA.
#'
#' A table with statistics about persons and households by traffic analysis zones in
#' the Hamilton CMA. The zoning system is GTA06. This file is a portion of the system
#' used by the Transportation Tomorrow Survey in the Greater Toronto and Hamilton Area.
#'
#' @format A simple features object with 297 rows and 20 variables:
#' \describe{
#'   \item{GTA06}{Unique identifier of zone in the GTA06 system}
#'   \item{population}{Number of people in the traffic analysis zone by place of residence}
#'   \item{drivers}{Number of drivers (people who have a driver license) in the traffic analysis zone by place of residence}
#'   \item{vehicles}{Number of privately owned vehicles owned by households in the traffic analysis zone by place of residence}
#'   \item{ft_workers}{Number of people employed full-time in the traffic analysis zone by place of residence}
#'   \item{pt_workers}{Number of people employed part-time in the traffic analysis zone by place of residence}
#'   \item{median_age}{Median age of population in the traffic analysis zone}
#'   \item{House}{Number of households in the traffic analysis zone who live in dwelling of type House}
#'   \item{Apartment}{Number of households in the traffic analysis zone who live in dwelling of type Apartment}
#'   \item{Townhouse}{Number of households in the traffic analysis zone who live in dwelling of type Townhouse}
#'   \item{total_dwellings}{Total number of households in the traffic analysis zone}
#'   \item{median_household_size}{Median number of people per households in the traffic analysis zone}
#'   \item{Inc_less_15k}{Number of households in the traffic analysis zone with before-tax household income from all sources $14,999 or less}
#'   \item{Inc_15k_to_40k}{Number of households in the traffic analysis zone with before-tax household income from all sources between $15,000 and $39,999}
#'   \item{Inc_40k_to_60k}{Number of households in the traffic analysis zone with before-tax household income from all sources between $40,000 and $59,999}
#'   \item{Inc_60k_to_100k}{Number of households in the traffic analysis zone with before-tax household income from all sources between $60,000 and $99,999}
#'   \item{Inc_100k_to_125k}{Number of households in the traffic analysis zone with before-tax household income from all sources between $100,000 and $124,999}
#'   \item{Inc_15k_to_40k}{Number of households in the traffic analysis zone with before-tax household income from all sources $125,000 and greater}
#'   \item{Inc_decline_dk}{Number of households in the traffic analysis zone who declined to respond or did not know their before-tax household income from all sources}
#' }
#' @docType data
#' @keywords datasets
#' @keywords transportation
#' @name hamilton_taz_ph
#' @usage data(hamilton_taz_ph)
#' @source Transportation Tomorrow Survey (\url{http://dmg.utoronto.ca/transportation-tomorrow-survey/tts-introduction})
#' @source Data Guide available (\url{http://dmg.utoronto.ca/pdf/tts/2016/2016TTS_DataGuide.pdf})
#' @examples
#'  data(hamilton_taz_ph)
#'  summary(hamilton_taz_ph)
"hamilton_taz_ph"

#' Travel-related statistics for traffic analysis zones in the Hamilton CMA.
#'
#' A table with statistics about trips and travel by traffic analysis zones in
#' the Hamilton CMA. The zoning system is GTA06. This file is a portion of the system
#' used by the Transportation Tomorrow Survey in the Greater Toronto and Hamilton Area.
#'
#' @format A simple features object with 297 rows and 17 variables:
#' \describe{
#'   \item{GTA06}{Unique identifier of zone in the GTA06 system}
#'   \item{work_trips_produced}{Number of trips produced by residents of the traffic analysis zone for work purposes (first work trip of day)}
#'   \item{work_trips_attracted}{Number of trips attracted by employers in the traffic analysis zone for work purposes (first work trip of day)}
#'   \item{shop_trips_produced}{Number of trips produced by residents of the traffic analysis zone for shopping purposes (Marketin/Shopping)}
#'   \item{shop_trips_attracted}{Number of trips attracted by businesses in the traffic analysis zone for shopping purposes (Marketin/Shopping)}
#'   \item{Walk}{Number of trips made by residents of the traffic analysis zone for all purposes by mode Walk}
#'   \item{Cycle}{Number of trips made by residents of the traffic analysis zone for all purposes by mode Cycle}
#'   \item{Walk}{Number of trips made by residents of the traffic analysis zone for all purposes by mode Walk}
#'   \item{Auto_driver}{Number of trips made by residents of the traffic analysis zone for all purposes by mode Auto Driver}
#'   \item{Auto_passenger}{Number of trips made by residents of the traffic analysis zone for all purposes by mode Auto Passenger}
#'   \item{Motorcycle}{Number of trips made by residents of the traffic analysis zone for all purposes by mode Motorcycle}
#'   \item{Taxi_passenger}{Number of trips made by residents of the traffic analysis zone for all purposes by mode Taxi Passenger}
#'   \item{Paid_rideshare}{Number of trips made by residents of the traffic analysis zone for all purposes by mode Paid Rideshare (Uber, Lyft, DriverHer, or other paid rideshare app)}
#'   \item{School_bus}{Number of trips made by residents of the traffic analysis zone for all purposes by mode Schoolbus}
#'   \item{Transit_excluding_GO_rail}{Number of trips made by residents of the traffic analysis zone for all purposes by Transit excluding GO rail}
#'   \item{GO_rail_and_transit}{Number of trips made by residents of the traffic analysis zone for all purposes by a combination of GO rail and local transit services}
#'   \item{GO_rail}{Number of trips made by residents of the traffic analysis zone for all purposes by GO rail exclusively}
#'   \item{Other}{Number of trips made by residents of the traffic analysis zone for all purposes by any other mode}
#' }
#' @docType data
#' @keywords datasets
#' @keywords transportation
#' @name hamilton_taz_travel
#' @usage data(hamilton_taz_travel)
#' @source Transportation Tomorrow Survey (\url{http://dmg.utoronto.ca/transportation-tomorrow-survey/tts-introduction})
#' @source Data Guide available (\url{http://dmg.utoronto.ca/pdf/tts/2016/2016TTS_DataGuide.pdf})
#' @examples
#'  data(hamilton_taz_travel)
#'  summary(hamilton_taz_travel)
"hamilton_taz_travel"

#' Traffic analysis zones in the Hamilton CMA.
#'
#' A table with the traffic analysis zones in the Hamilton CMA, using the GTA06 system.
#' Traffic analysis zones are zoning systems designed for transportation studies. This
#' file is a portion of the system used by the Transportation Tomorrow Survey in the
#' Greater Toronto and Hamilton Area. The object is projected as UTM Zone 17N.
#'
#' @format A simple features object with 297 rows and 4 variables:
#' \describe{
#'   \item{ID}{Unique identifier for traffic analysis zone}
#'   \item{Area}{Surface area of zone in sq.km}
#'   \item{GTA06}{Unique identifier of zone in the GTA06 system}
#'   \item{geometry}{Geometry column}
#' }
#'
#' @docType data
#' @keywords datasets
#' @keywords transportation
#' @name hamilton_taz
#' @usage data(hamilton_taz)
#' @source Transportation Tomorrow Survey (\url{http://dmg.utoronto.ca/transportation-tomorrow-survey/tts-introduction})
#' @source Data Guide available (\url{http://dmg.utoronto.ca/pdf/tts/2016/2016TTS_DataGuide.pdf})
#' @examples
#'  data(hamilton_taz)
#'  summary(hamilton_taz)
"hamilton_taz"

#' Origin-destination matrix for the Hamilton CMA.
#'
#' A table with information about trips that originated in the Hamilton CMA and concluded in
#' the Hamilton CMA. This excludes trips that originated outside of the Hamilton CMA even if
#' they concluded in the Hamilton CMA. Similarly, it excludes trips that originated in the
#' Hamilton CMA but concluded outside of the Hamilton CMA. The zoning system is GTA06. This
#' file is a portion of the system used by the Transportation Tomorrow Survey in the Greater
#' Toronto and Hamilton Area. Origins and destinations are connected using straight line distances.
#' The object is projected as UTM Zone 17N.
#'
#'
#' @format A simple features with 87,912 rows and 10 variables:
#' \describe{
#'   \item{Origin}{Unique identifier of zone of origin of trips in the GTA06 system}
#'   \item{Destination}{Unique identifier of zone of destination of trips in the GTA06 system}
#'   \item{x_origin}{X coordinate of the centroid of the zone of origin of trips}
#'   \item{y_origin}{Y coordinate of the centroid of the zone of origin of trips}
#'   \item{x_destination}{X coordinate of the centroid of the zone of destination of trips}
#'   \item{y_destination}{Y coordinate of the centroid of the zone of destination of trips}
#'   \item{PairID}{Unique identifier for origin-destination pair}
#'   \item{Trips_work}{Number of trips for work purposes between origin-destination}
#'   \item{Trips_shop}{Number of trips for shop purposes between origin-destination}
#'   \item{geometry}{Geometry column}
#' }
#'
#' @docType data
#' @keywords datasets
#' @keywords transportation
#' @name od_full
#' @usage data(od_full)
#' @source Transportation Tomorrow Survey (\url{http://dmg.utoronto.ca/transportation-tomorrow-survey/tts-introduction})
#' @source Data Guide available (\url{http://dmg.utoronto.ca/pdf/tts/2016/2016TTS_DataGuide.pdf})
#' @examples
#'  data(od_full)
#'  summary(od_full)
"od_full"

#' Travel cost by car in the Hamilton CMA.
#'
#' A table with information about the estimated cost of travel from each traffic analysis zone
#' to downtown Hamilton (Jackson Square).
#'
#' @format A data frame with 297 rows and 6 variables:
#' \describe{
#'   \item{GTA06}{Unique identifier of zone in the GTA06 system}
#'   \item{from}{Address in the traffic analysis zone used for routing}
#'   \item{to}{Address of destination}
#'   \item{km}{Distance of trip in km}
#'   \item{minutes}{Duration of trip in minutes}
#'   \item{hours}{Duration of trip in hours}
#' }
#'
#' @docType data
#' @keywords datasets
#' @keywords transportation
#' @name travel_cost_car
#' @usage data(travel_cost_car)
#' @source Estimated travel distances and durations obtained from Google Maps Routing API
#' @examples
#'  data(travel_cost_car)
#'  summary(travel_cost_car)
"travel_cost_car"
