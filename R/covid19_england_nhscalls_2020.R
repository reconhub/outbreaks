#' Potential COVID19 cases reported through NHS pathways
#'
#' This dataset contains daily numbers of reports on potential COVID-19 cases
#' reported in England through the NHS 111 calls, 999 calls, and 111-online
#' systems. The present dataset was last updated on 21 September 2020. See
#' example for a command line allowing to download the latest version.
#' 
#' @docType data
#'
#' @author National Health Services (NHS) for England. Additional data and
#'   cleaning by Quentin Leclerc.
#' 
#' @source Data is available at
#'   \url{https://digital.nhs.uk/dashboards/nhs-pathways}; this precise dataset
#'   adds some cleaning and additional informaion (on NHS regions) and is taken
#'   from Quentin Leclerc's github repository:
#'   \url{https://github.com/qleclerc/nhs_pathways_report}
#'
#' @format A `data.frame` containing:
#' \describe{
#'   \item{site_type}{the system through which data were reported: 111/999 calls, or 111-online}
#' 
#'   \item{date}{the data of reporting}
#' 
#'   \item{sex}{the gender of the patient}
#' 
#'   \item{age}{the age of the patient, in years}
#' 
#'   \item{ccg_code}{NHS code for the Clinical Commissioning Groups (CCGs)
#'   (finer geographic unit)}
#' 
#'   \item{ccg_name}{name of the Clinical Commissioning Groups (CCGs) (smaller
#'   spatial unit)}
#' 
#'   \item{count}{number of potential COVID-19 cases reported}
#' 
#'   \item{postcode}{the postcode of the CCG}
#' 
#'   \item{nhs_region}{the NHS region (larger geographic unit)}
#' 
#'   \item{day}{the date as the number of days since the first reporting day}
#' 
#'   \item{weekday}{the day of the week, broken down into: weekend, Monday, and
#'   the rest of the week; this is used for modelling reporting effects}
#' 
#' }
#' 
#' @examples
#'
#' \dontrun{
#' # These commands will download the latest version of the data:
#' library(tidyverse)
#' 
#' # download data
#' pathways <- tempfile()
#' url <- paste0("https://github.com/qleclerc/nhs_pathways_report/",
#'               "raw/master/data/rds/pathways_latest.rds")
#' download.file(url, pathways)
#' pathways <- readRDS(pathways)
#' head(pathways)
#' 
#' }
"covid19_england_nhscalls_2020"
