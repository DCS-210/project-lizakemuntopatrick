Project proposal
================
Liza-Kemunto-Patrick

``` r
library(tidyverse)
library(broom)
```

## 1. Introduction

In this project, we will be using Super Bowl ad data from the past 20
years to analyze trends in brand popularity and national responsiveness
to themes like patriotism and sexuality present in Super Bowl ads. The
data we are using comes from FiveThirtyEight, who published a
corresponding article “According to Super Bowl Ads, Americans Love
America, Animals and Sex” in February, 2021. The data was collected by
watching and evaluating 233 ads from the 10 brands that aired the most
in the last 21 Super Bowls (according to superbowl-ads.com) using seven
crtieria.

How does the popularity of different kinds of ads change over time? Are
there events that contextualize this?

What is the breakdown for brands across ad types?

Are superbowl ads becoming more popular over the years? Are new
superbowl ads more popular?

Are there more comments on ads that are more or less popular?

## 2. Data

``` r
youtube <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-03-02/youtube.csv')
```

    ## Rows: 247 Columns: 25

    ## ── Column specification ────────────────────────────────────────────────────────
    ## Delimiter: ","
    ## chr  (10): brand, superbowl_ads_dot_com_url, youtube_url, id, kind, etag, ti...
    ## dbl   (7): year, view_count, like_count, dislike_count, favorite_count, comm...
    ## lgl   (7): funny, show_product_quickly, patriotic, celebrity, danger, animal...
    ## dttm  (1): published_at

    ## 
    ## ℹ Use `spec()` to retrieve the full column specification for this data.
    ## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.

``` r
youtube
```

    ## # A tibble: 247 × 25
    ##     year brand     superbowl_ads_d… youtube_url funny show_product_qu… patriotic
    ##    <dbl> <chr>     <chr>            <chr>       <lgl> <lgl>            <lgl>    
    ##  1  2018 Toyota    https://superbo… https://ww… FALSE FALSE            FALSE    
    ##  2  2020 Bud Light https://superbo… https://ww… TRUE  TRUE             FALSE    
    ##  3  2006 Bud Light https://superbo… https://ww… TRUE  FALSE            FALSE    
    ##  4  2018 Hynudai   https://superbo… https://ww… FALSE TRUE             FALSE    
    ##  5  2003 Bud Light https://superbo… https://ww… TRUE  TRUE             FALSE    
    ##  6  2020 Toyota    https://superbo… https://ww… TRUE  TRUE             FALSE    
    ##  7  2020 Coca-Cola https://superbo… https://ww… TRUE  FALSE            FALSE    
    ##  8  2020 Kia       https://superbo… https://ww… FALSE FALSE            FALSE    
    ##  9  2020 Hynudai   https://superbo… https://ww… TRUE  TRUE             FALSE    
    ## 10  2020 Budweiser https://superbo… https://ww… FALSE TRUE             TRUE     
    ## # … with 237 more rows, and 18 more variables: celebrity <lgl>, danger <lgl>,
    ## #   animals <lgl>, use_sex <lgl>, id <chr>, kind <chr>, etag <chr>,
    ## #   view_count <dbl>, like_count <dbl>, dislike_count <dbl>,
    ## #   favorite_count <dbl>, comment_count <dbl>, published_at <dttm>,
    ## #   title <chr>, description <chr>, thumbnail <chr>, channel_title <chr>,
    ## #   category_id <dbl>

## 3. Data analysis plan
