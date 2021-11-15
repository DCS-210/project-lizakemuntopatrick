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


youtube %>% 
  mutate(type = as.factor(str_c(patriotic, animals, funny, celebrity, danger, use_sex, show_product_quickly))) %>%
  select(type) %>%
  count(type) %>%
  arrange(desc(n)) %>%
  rename(Funny_and_Show_Product_Quickly = FALSEFALSETRUEFALSEFALSEFALSETRUE)
  


youtube %>% 
  select(id, patriotic, animals, funny, celebrity, danger, use_sex, show_product_quickly) %>%
  
  mutate(patriotic = ifelse(patriotic == FALSE, "False", "Patriotic"),
         animals = ifelse(animals == FALSE, "False", "animals"),
         funny = ifelse(funny == FALSE, "False", "funny"),
         celebrity = ifelse(celebrity == FALSE, "False", "celebrity"),
         danger = ifelse(danger == FALSE, "False", "danger"),
         use_sex = ifelse(use_sex == FALSE, "False", "use_sex"),
         show_product_quickly = ifelse(show_product_quickly == FALSE, "False", "show_product_quickly"),
         ) %>%
    pivot_longer(cols = -id, values_to = "content", names_to = "type") %>%
    filter(content != "False") %>%
    xtabs(~id + content, data = ., sparse = FALSE) %>% 
    crossprod(., .)  %>%
    heatmap()

%>%
  
  count(logical, type) 

%>%
  spread(type, logical, fill=0, drop=FALSE)
  
  
youtube %>% 
  select(id, patriotic, animals, funny, celebrity, danger, use_sex, show_product_quickly) %>%
  mutate(patriotic = ifelse(patriotic == FALSE, "Not Patriotic", "Patriotic"),
         animals = ifelse(animals == FALSE, "Not animals", "animals"),
         funny = ifelse(funny == FALSE, "Not funny", "funny"),
         celebrity = ifelse(celebrity == FALSE, "Not celebrity", "celebrity"),
         danger = ifelse(danger == FALSE, "Not danger", "danger"),
         use_sex = ifelse(use_sex == FALSE, "Not use_sex", "use_sex"),
         show_product_quickly = ifelse(show_product_quickly == FALSE, "Not show_product_quickly", "show_product_quickly"),
  ) %>%
  pivot_longer(cols = -id, values_to = "content", names_to = "type") %>%
  xtabs(~id + content, data = ., sparse = FALSE) %>% 
  crossprod(., .)  %>%
  heatmap()


install.packages('heatmaply')
library(heatmaply)

bk <- c(-5,seq(45,200,by=20))
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
  heatmaply(col=mycols, breaks=bk, scale="none", xlab="Variable", ylab="Observation", main="heatmap")








#breaks
bk <- c(0,seq(0,247,by=1))
#colors (one less than breaks
mycols <- c("red",colorRampPalette(colors = c("blue","white"))(length(bk)-2))
youtube %>%
  select(id, patriotic, animals, funny, celebrity, danger, use_sex, show_product_quickly) %>%
  mutate(patriotic = ifelse(patriotic == FALSE, "False", "Patriotic"),
         animals = ifelse(animals == FALSE, "False", "animals"),
         funny = ifelse(funny == FALSE, "False", "funny"),
         celebrity = ifelse(celebrity == FALSE, "False", "celebrity"),
         danger = ifelse(danger == FALSE, "False", "danger"),
         use_sex = ifelse(use_sex == FALSE, "False", "use_sex"),
         show_product_quickly = ifelse(show_product_quickly == FALSE, "False", "show_product_quickly"),
  ) %>%
  pivot_longer(cols = -id, values_to = "content", names_to = "type") %>%
  filter(content != "False") %>%
  xtabs(~id + content, data = ., sparse = FALSE) %>% 
  crossprod(., .)  %>%
  heatmap(dendrogram = "none",
               xlab = "", ylab = "", 
               main = "",
               scale = "column",
               margins = c(60,100,40,20),
               grid_color = "white",
               grid_width = 0.00001,
               titleX = FALSE,
               hide_colorbar = TRUE,
               branches_lwd = 0.1,
               label_names = c("Country", "Feature:", "Value"),
               fontsize_row = 5, fontsize_col = 5,
               labCol = colnames(mat),
               labRow = rownames(mat),
               heatmap_layers = theme(axis.line=element_blank())
)