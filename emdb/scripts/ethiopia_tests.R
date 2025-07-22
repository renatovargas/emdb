test <- 
total_emissions |> 
  group_by(Area, Year) |> 
  filter(Area %in% c("Ethiopia", "Ethiopia PDR")) |> 
  summarize(
    total = n()
  )

test2 <- combined_data2 |> 
  filter(Country.or.Area %in% c("Ethiopia", "Ethiopia, incl. Eritrea")) |>
  group_by(Country.or.Area, Year) |> 
  summarize(
    total = n()
  )
