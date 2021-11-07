youtube <- youtube %>%
mutate(popularity = like_count/view_count)

mutate(Reliability = 
         case_when(channel_title == "Bud Light", "Budweiser", "CBS", "Coca-Cola", "GameofThrones", "NFL", "USA TODAY", "USA TODAY Sports", "Wall Street Journal", "World Hyundai Matteson"  ~ "Official",
                   TRUE ~ "Not Official")) %>%