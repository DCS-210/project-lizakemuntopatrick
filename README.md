Lessons to be Learned from Super Bowl Advertisements
================
by Liza Dubinsky, Kemunto Ongera, Patrick Bergin

## Summary

The Super Bowl is continuously one of the most watched events on TV every year. Besides the chance to watch the two best football teams in the world going head to head and the highly-entertaining halftime shows that have featured some of the greatest musical artists of the past 100 years, the commercials during game stoppage is one of the most anticipated events of the Super Bowl. This is for good reason because companies have understood for a long time the potential in marketing for quite literally millions of viewers. Therefore, year after year, companies spend millions of dollars trying to make the best commercial for the Super Bowl.

For this project, we used data from FiveThirtyEight, who published an
article titled “According to Superbowl Ads, Americans Love America,
Animals, and Sex” in February, 2021. The data was collected by watching
and evaluating 233 ads posted on Youtube from the 10 brands that aired
the most in the last 21 Super Bowls. In addition to the Youtube
statistics gathered from these ads, they were classified as funny,
patriotic, having a celebrity, having animals, having danger, using sex,
or showing the product quickly using TRUE or FALSE. We attempted to
answer a multitude of questions through our analysis of this data. Since
brands are concerned about their exposure to viewers, we were curious as
to what made a Super Bowl ad posted on Youtube more “popular” than
another. This idea of popularity also led us to wonder what influence ad
category had on an ad’s popularity, which combination of categories were
the most common among the 233 ads evaluated in the dataset, or if ads
posted on official brand Youtube channels were more popular on average
than those posted on personal or ad compilation channels. Lastly, we
wanted to determine what real world context might explain trends in ad
production by brand or category the past 21 Super Bowls.

We created a linear regression model to explore the relationship between
the number of likes and views on a given ad on Youtube, and found that
the *R*<sup>2</sup> value was 0.7692371. This meant that over 75% of the
variance in the number of likes on a video was explained by the number
of views, convincing us that the metric of likes per view was a
reasonable choice to represent ad popularity. However, in our
exploration of the influence of a given ad category of combination of
categories on ad popularity, we found *R*<sup>2</sup> values that were
so small that it was clear that these TRUE or FALSE categories did not
provide us with the ability to determine the influence of the increase
of a given category beyond “on” and “off”. Having noticed the
variability in channel type, we grouped our data by whether the channel
was an official brand channel or not and created a bar plot of the
average ad popularity for both categories. While the difference in
average ad popularity is less than 0.01, we determined that since it
comes at no cost to post ads on Youtube that it was worth it for brands
to post ads on their official channels and reap the benefits.

Our dataset recorded the ad categories as a boolean data type:
(TRUE/FALSE), which further grouped each ad category into whether it was
considered to have a specific quality(funny or use animals e.t.c) or not
(FALSE). In order to investigate the relationship between ad popularity
and ad category, we decided to graph using a violin density plot, the
counts of each ad category against ad popularity. We hypothesized that
the ad category would be a contributing factor that would play into the
popularity of a Superbowl ad. After running our code, we realized that
all ad categories resulted in a similar conclusion, therefore we chose
one ad category “funny” to be a representative plot of all the others.
From this visualization we observed that although a large number of ads
produced were funny, they ranked lower on the ad popularity scale in
comparison to the other categories. Since all the other plots showed a
similar result, it led us to the conclusion that there is no one ad
category that led to a higher ad popularity rank, thereby rejecting our
hypothesis.

We were then interested in what the most popular combination of two categories were. To visualize this data, we elected to use an interactive heat-map. Formatting our data to allow us to do so was tricky because we needed to get our data in a matrix with all of the categories as both variables and observations. However through mutation, pivoting and use of the xtab function we were able to accomplish this goal. By using the heatmaply library we made the heatmap interactive, so it was very easy for us to tell the most common combinations were attempting to be funny and showing the product quickly. We finally played with the color scheme to match traditional Super Bowl colors to make the presentation more appealing to the audience.

We were curious to understand our data better and identify which kind of
brands were airing the most during the Superbowl ads. To do this, we
decided to group each of the top brands into 5 major brand types: Beer,
Junk food, NFL, E-Trade and Cars. We then chose a pie chart to visualize
our data. This pie-chart revealed that more than half the proportion of
ads produced were beer and junk food and therefore built on the idea
that consumable products associated with Football viewership have a
complementary relationship. According to a survey conducted by Statista,
there is a 47% likelihood that males watch the Superbowl and a 28%
likelihood for females. Additionally, the age demographic of those that
watch the Superbowl is 18-49 years old. We noticed a theme of the brand
types relating to more masculine stereotypes and thus responding to
their target audience which mainly consists of men.

We created a streamgraph to explore the production of ads by the 10
brands over time. This figure reinforced the domination of ad production
by beer and junk food brands as seen in the pie chart of the ad
breakdown by brand types. While brands like Budweiser and Bud Light
accounted for the vast majority of the ads in our dataset before 2010,
this figure shows us that brands like Hyundai have come onto the scene
more strongly in recent years. We used another streamgraph to represent
how ad production has changed over time by ad category. The graph had
different fluctuations across time, which we realized corresponded to
the social and political climate in the US in particular years. For
example, the “patriotic” ad category increased in production during
election years 2008, 2016 and 2020, and the “use of sex” ad category did
not produce any ads in 2017 which was the height of the #ME TOO movement
in the US. Contextualizing our data, gave us more of an informed
understanding of the production of the different ad categories.

We had a few suggestions on how we could improve our research to better answer our question of what influences ad popularity at Super Bowls. For one, we continuously recognized throughout our project that certain factors of ads were likely the cause of their high popularity counts that were unseen in our data. For instance, some commercials were very sentimental either through story telling or background music, which we hypothesized led to more activity on youtube. Additionally, the Boolean TRUE FALSE metric didn’t allow for a continuum within ad categories. For example, ads that would be really funny to a general audience and ads that tried to be funny but weren't great at achieving this goal, were marked TRUE in the same category. A second example would be ads that included an old senator who was relevant long before youtube gained popularity was evaluated as being a celebrity just as much as the most well-known comedic entertainers of the current times. 
Finally, our last issue we felt was with the overall gathering of data for this project. We thought that something akin to a random survey would be a better evaluation of whether or not people enjoyed the commercials. This is due to the fact that using likes on youtube will be inherently biased towards the demographics that are most likely to browse youtube, which may be different than the demographic of Super Bowl viewers. Most people watching the Super Bowl are not likely to go on to youtube, sign in or create an account and then like or dislike a commercial after just watching it live.

## Presentation

Our presentation can be found [here](presentation/presentation.html).

## Data

Mock, Thomas. “Superbowl commercials”. R for Data Science Online
Learning Community: Tiny Tuesday. 2 Mar. 2021,
<https://github.com/rfordatascience/tidytuesday/tree/master/data/2021/2021-03-02>.
Data retrieved 6 Oct. 2021.

## References

[Background
Image](https://toddstocker.wordpress.com/2013/02/04/what-to-do-when-your-lights-go-out/)

[Image
1](http://www.stickpng.com/img/icons-logos-emojis/iconic-brands/superbowl-logo)

[Image
2](https://github.com/rfordatascience/tidytuesday/blob/master/data/2021/2021-03-02/readme.md)

[Image
3](https://www.gamblingsites.org/blog/super-bowl-53-odds-will-win-next-year/)

[Image
4](https://www.gamblerspick.com/news/industry/the-nfl-scores-a-hat-trick-with-caesars-draftkings-and-fanduel-r1706/)
