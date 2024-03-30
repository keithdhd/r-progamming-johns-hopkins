pollutantmean <- function(directory, pollutant, id = 1:332) {
  df <- data.frame()
  
  for (row_id in id) {
    row_id <- prefix_numbers_less_than_100(row_id)
    df <- rbind(df, read.csv(paste(getwd(), "/", directory, "/", row_id ,".csv", sep = "" )))
  }  

  column_mean(df, pollutant)
}

prefix_numbers_less_than_100 <- function(num){
  if (num < 10) {
    return(paste("00", num, sep = ""))
  }
  else if (num < 100){
    return(paste("0", num, sep = ""))
  }
  num
}

column_mean <- function(df, column_name) {
  mean(na.omit(df)[[column_name]])
}

print(pollutantmean("specdata", "sulfate", 1:10))
print(pollutantmean("specdata", "nitrate", 70:72))
print(pollutantmean("specdata", "nitrate", 23))

