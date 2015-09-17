#' Get available user IDs
#' @return a vector of all user IDs available in the data
#' @export
getUserIds <- function()
{
  # TODO
}


#' Get demographic data
#' @param userIds a vector of user IDs (will be coerced to \code{character} vector). 
#' If \code{NULL}, retrieve data from all users.
#' @export
getDemographicData <- function(userIds = NULL)
{
  userDem <- demographicData
  if(!is.null(userIds))
  {
    userIds <- as.character(userIds)
    userDem <- userDem[userDem$UserId %in% userIds,]
  }
  
  # return
  userDem
}

#' Demographic data
#'
#' @format An data frame with the following fields
#' \describe{
#'      \item{UserId}{ID of the user. This should be treated as \code{character}}
#'      \item{Gender}{either \code{"M"} or \code{"F"}}
#'      \item{Age}{age in years}
#' }
"demographicData"
