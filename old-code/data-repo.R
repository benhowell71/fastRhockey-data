library(fastRhockey)
library(tidyverse)

# h <- phf_schedule(season = 2016)

lst <- list()

for (k in 2016:2021) {
  
  current <- phf_schedule(season = k)
  
  lst[[k]] <- current
  
  print(k)
  
}

game_meta <- dplyr::bind_rows(lst)
# write.csv(game_meta, file = "phf_meta_data.csv", row.names = FALSE)


