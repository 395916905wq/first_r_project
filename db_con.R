library(dbplyr)
library(tidyverse)


con <- DBI::dbConnect(RPostgreSQL::PostgreSQL(), 
                      host = '127.0.0.1',
                      user = "wuqiang",
                      port = 5432,
                      password = "wuqiang572",
                      dbname="octopus_susuan")


o_teacher<-tbl(con, "o_teacher")
