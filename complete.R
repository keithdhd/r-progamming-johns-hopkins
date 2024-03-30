complete <- function(directory, id = 1:332) {
  df <- data.frame()
  
  for (row_id in id) {
    row_id <- prefix_numbers_less_than_100(row_id)
    new_df <- read.csv(paste(getwd(), "/", directory, "/", row_id ,".csv", sep = "" ))
    
    num_complete_observations <- nrow(na.omit(new_df))
    
    final_df <- data.frame(
      id = as.numeric(row_id),
      nobs = num_complete_observations
    )
    
    df <- rbind(df, final_df)
  } 
  
  df
}

complete("specdata", 1) #   1 1 117
complete("specdata", c(2, 4, 8, 10, 12))
complete("specdata", 30:25)
complete("specdata", 3)
