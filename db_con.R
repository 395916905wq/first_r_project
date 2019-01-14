library(dbplyr)
library(tidyverse)

#wuqiang@106.75.22.248 -L 5000:10.10.70.156:22 -NnT &
con <- DBI::dbConnect(RPostgreSQL::PostgreSQL(), 
                      host = '127.0.0.1',
                      user = "wuqiang",
                      port = 5000,
                      password = "wuqiang572",
                      dbname="octopus_susuan")


o_teacher<-tbl(con, "o_teacher") %>% 
  filter(student_count>=20)

dbDisconnect(con)

