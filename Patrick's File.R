library(igraph)


youtube <- youtube %>%
mutate(popularity = like_count/view_count)

youtube <- youtube %>%
mutate(Reliability = 
         case_when(channel_title == "Bud Light", "Budweiser", "CBS", "Coca-Cola", "GameofThrones", "NFL", "USA TODAY", "USA TODAY Sports", "Wall Street Journal", "World Hyundai Matteson"  ~ "Official",
                   TRUE ~ "Not Official")) %>%
  
  ggplot(data = youtube, aes(x = year, y=)) +
  geom_line(linetype = "dashed")+
  geom_point()

youtubefunny <- youtube %>%

  ad_counts <- youtube %>%
  group_by(year) %>%
  summarise(count_funny = sum(funny, na.rm = TRUE),
            count_show_product_quickly = sum(show_product_quickly, na.rm = TRUE),
            count_patriotic = sum(patriotic, na.rm = TRUE),
            count_celebrity = sum(celebrity, na.rm = TRUE),
            count_danger = sum(danger, na.rm = TRUE),
            count_animals = sum(animals, na.rm = TRUE),
            count_use_sex = sum(use_sex, na.rm = TRUE)) %>%
  pivot_longer(cols = -year, values_to = "count", names_to = "type")

pp <- streamgraph(ad_counts, key="type", value="count", date="year", height="300px", width="1000px")
pp

mine.heatmap <- ggplot(data = ad_counts, mapping = aes(x = type,
                                                       y = type,
                                                       fill = count)) +
  geom_tile() +
  xlab(label = "Sample")

mine.heatmap

data <- as.matrix(countsperyear)
heatmap(data)

#Neeed to get them to interact*
#Maybe add Case When?

#CODE TO FIND MOST POPULAR COMBOS

youtube %>% 
  mutate(type = as.factor(str_c(patriotic, animals, funny, celebrity, danger, use_sex, show_product_quickly))) %>%
  select(type) %>%
  count(type) %>%
  arrange(desc(n)) %>%
  rename(Funny_and_Show_Product_Quickly = FALSEFALSETRUEFALSEFALSEFALSETRUE)
  

#CODE FOR THE HEAT MAP
install.packages('heatmaply')
library(heatmaply)

bk <- c(-5,seq(45,200,by=30))
#colors (one less than breaks
mycols <- c("blue",colorRampPalette(colors = c("white","red"))(length(bk)-2))
youtube %>% 
  select(id, patriotic, animals, funny, celebrity, danger, use_sex, show_product_quickly) %>%
  
  mutate(patriotic = ifelse(patriotic == FALSE, "False", "Patriotic"),
         animals = ifelse(animals == FALSE, "False", "Has animals"),
         funny = ifelse(funny == FALSE, "False", "Is funny"),
         celebrity = ifelse(celebrity == FALSE, "False", "Has a celebrity"),
         danger = ifelse(danger == FALSE, "False", "Has danger"),
         use_sex = ifelse(use_sex == FALSE, "False", "Uses sex"),
         show_product_quickly = ifelse(show_product_quickly == FALSE, "False", "Shows the product quickly"),
  ) %>%
  pivot_longer(cols = -id, values_to = "content", names_to = "type") %>%
  filter(content != "False") %>%
  xtabs(~id + content, data = ., sparse = FALSE) %>% 
  crossprod(., .)  %>%
  heatmaply(col=mycols, breaks=bk, scale="none", xlab="Type of Ad", ylab="Combination", main="Heatmap for Ad Combinations")






