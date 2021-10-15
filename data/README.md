# data

We did not add our data to this folder since we found our data at the following link:
https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-03-02/youtube.csv

We loaded our data with the following code:

youtube <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-03-02/youtube.csv')


Our data is 247 observations of 25 variables. 

Then, include codebooks (variables, and their descriptions) for your data file(s)
using the following format.

## Youtube

- `year`: Superbowl year
- `brand`: Brand for commercial
- `superbowl_ads_dot_com_url`: Superbowl ad URL
- `youtube_url`: Youtube URL
- `funny`: Contains humor
- `show_product_quickly`: Shows product quickly
- `patriotic`: Patriotic
- `celebrity`: Contains celebrity
- `danger`: Contains danger
- `animals`: Contains animals
- `use_sex`: Uses sexuality
- `id`: Youtube ID
- `kind`: Youtube Kind
- `etag`: Youtube etag
- `view_count`: Youtube view count
- `like_count`: Youtube like count
- `dislike_count`: Youtube dislike count
- `favorite_count`: Youtube favorite count
- `comment_count`: Youtube comment count
- `published_at`: Youtube when published
- `title`: Youtube title
- `description`: Youtube description
- `thumbnail`: Youtube thumbnail
- `channel_title`: Youtube channel name
- `category_id`: Youtube content category id
