library(tidyverse)

datiEmilia <- read_csv('Data/aggregationComuniErg5_DAILY_PREC.csv')


datiEmilia1 <- datiEmilia |> select(Date,'1_AVG_D')


datiEmilia_monthly <- datiEmilia1 %>%
  mutate(month = floor_date(Date, "month")) %>%
  group_by(month) %>%
  summarise(
    sum_monthly = sum(`1_AVG_D`, na.rm = TRUE),  # or sum(...) if you prefer
    .groups = "drop"
  )
