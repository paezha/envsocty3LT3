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
#' @source Energy Consumption Data Source: CIA Factbook, Refined Oil Products Consumption (https://www.cia.gov/library/publications/the-world-factbook/rankorder/2246rank.html) Accessed: September 5, 2017
#' @source CO2 Emissions Data Source: EC Emissions Database for Global Atmospheric Research (http://edgar.jrc.ec.europa.eu/overview.php?v=CO2ts1990-2015) Accessed: September 5, 2017
#' @source GDP Data Source: Wikipedia (https://en.wikipedia.org/wiki/List_of_countries_by_GDP_(nominal)_per_capita) Accessed: September 5, 2017
#' @examples
#'  data(energy_and_emissions)
#'  GDPPC <- energy_and_emissions$GDPPC
"energy_and_emissions"

#' Traffic analysis zones in the Hamilton CMA.
#'
#' A table with the traffic analysis zones in the Hamilton CMA, using the GTA06 system.
#' Traffic analysis zones are zoning systems designed for transportation studies. This
#' file is a portion of the system used by the Transportation Tomorrow Survey in the
#' Greater Toronto and Hamilton Area. The object is projected as UTM Zone 17N.
#'
#' @format A simple features object with 297 rows and 8 variables:
#' \describe{
#'   \item{ID}{Unique identifier for traffic analysis zones}
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
#' @source Transportation Tomorrow Survey (http://dmg.utoronto.ca/transportation-tomorrow-survey/tts-introduction)
#' @examples
#'  data(hamilton_taz)
#'  summary(hamilton_taz)
"hamilton_taz"

#' Socio-demographic information in the Hamilton CMA.
#'
#' A table with socio-demographicinformation from the Transportation Tomorrow Survey
#' by traffic analysis zone. These data are for 2016.
#'
#' @format A data frame with 297 rows and 15 variables:
#' \describe{
#'   \item{GTA06}{Unique identifier of zone in the GTA06 system}
#'   \item{Population}{Population in traffic analysis zone}
#'   \item{Worked_in_2010_Full_time}{Number of peple in traffic analysis zones that had were employed full time and worked away from home in 2010}
#'   \item{Worked_in_2010_Part_time}{Number of peple in traffic analysis zones that had were employed part time and worked away from home in 2010}
#'   \item{Worked_at_home}{Number of peple in traffic analysis zones that worked from home in 2010}
#'   \item{Pop_Density}{Population density of traffic analysis zone in persons/sq.km}
#'   \item{Median_Age}{Median age of the population in traffic analysis zone}
#'   \item{Family_Size_2}{Number of families of size 2 in the traffic analysis zone}
#'   \item{Family_Size_3}{Number of families of size 3 in the traffic analysis zone}
#'   \item{Family_Size_4}{Number of families of size 4 in the traffic analysis zone}
#'   \item{Family_Size_5_more}{Number of families of size 5 or more in the traffic analysis zone}
#'   \item{Median_income}{Median income of households in traffic analysis zone}
#'   \item{Average_income}{Average income of households in traffic analysis zone}
#'   \item{Employment_rate}{Employment rate in traffic analysis zone}
#'   \item{Unemployment_rate}{Unemployment rate in traffic analysis zone}
#'   \item{Median_commuting_duration}{Median duration in minutes of commute to work trips that originated in traffic analysis zone}
#' }
#'
#' @docType data
#' @keywords datasets
#' @keywords transportation
#' @name hamilton_demo_taz
#' @usage data(hamilton_demo_taz)
#' @source Transportation Tomorrow Survey (http://dmg.utoronto.ca/transportation-tomorrow-survey/tts-introduction)
#' @examples
#'  data(hamilton_demo_taz)
#'  summary(hamilton_demo_taz)
"hamilton_demo_taz"

#' Trips by mode in the Hamilton CMA.
#'
#' A table with information from the Transportation Tomorrow Survey regarding trips
#' by mode by traffic analysis zone. These data are for 2016.
#'
#' @format A data frame with 297 rows and 5 variables:
#' \describe{
#'   \item{GTA06}{Unique identifier of zone in the GTA06 system}
#'   \item{Cycle}{Number of trips that originated in the traffic analysis by mode: Cycle}
#'   \item{Auto_driver}{Number of trips that originated in the traffic analysis by mode: Auto_driver}
#'   \item{Auto_passenger}{Number of trips that originated in the traffic analysis by mode: Auto_passenger}
#'   \item{Walk}{Number of trips that originated in the traffic analysis by mode: Walk}
#' }
#'
#' @docType data
#' @keywords datasets
#' @keywords transportation
#' @name hamilton_trips_mode
#' @usage data(hamilton_trips_mode)
#' @source Transportation Tomorrow Survey (http://dmg.utoronto.ca/transportation-tomorrow-survey/tts-introduction)
#' @examples
#'  data(hamilton_trips_mode)
#'  summary(hamilton_trips_mode)
"hamilton_trips_mode"

#' Trips by purpose in the Hamilton CMA.
#'
#' A table with information from the Transportation Tomorrow Survey regarding trips
#' by purpose by traffic analysis zone. These data are for 2016.
#'
#' @format A data frame with 297 rows and 26 variables:
#' \describe{
#'   \item{GTA06}{Unique identifier of zone in the GTA06 system}
#'   \item{Unknown}{Number of trips that originated in the traffic analysis zone for purpose: Unknown}
#'   \item{Subsequent_School}{Number of trips that originated in the traffic analysis zone for purpose: Subsequent_School}
#'   \item{Daycare}{Number of trips that originated in the traffic analysis zone for purpose: Daycare}
#'   \item{Facilitate_passenger}{Number of trips that originated in the traffic analysis zone for purpose: Facilitate_passenger}
#'   \item{Home}{Number of trips that originated in the traffic analysis zone for purpose: Home}
#'   \item{Market_Shop}{Number of trips that originated in the traffic analysis zone for purpose: Market_Shop}
#'   \item{Other}{Number of trips that originated in the traffic analysis zone for purpose: Other}
#'   \item{Subsequent_Work}{Number of trips that originated in the traffic analysis zone for purpose: Subsequent_Work}
#'   \item{School}{Number of trips that originated in the traffic analysis zone for purpose: School}
#'   \item{Work}{Number of trips that originated in the traffic analysis zone for purpose: Work}
#' }
#'
#' @docType data
#' @keywords datasets
#' @keywords transportation
#' @name hamilton_trips_purpose
#' @usage data(hamilton_trips_purpose)
#' @source Transportation Tomorrow Survey (http://dmg.utoronto.ca/transportation-tomorrow-survey/tts-introduction)
#' @examples
#'  data(hamilton_trips_purpose)
#'  summary(hamilton_trips_purpose)
"hamilton_trips_purpose"
