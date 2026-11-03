# halftime-performance-change

## Introduction
From the 2026 MLS season match data up to the penultimate matchday, we can compute a club's non-penalty xG difference (that is, the difference between their npxG generated and npxG conceded), not only for an entire match but also for each of their halves. npxG difference is a useful stat that can roughly tell us how well a team generally performs, with both offensive and defensive ability being crucial for increasing the stat. Thus comparing a club's average npxG difference between their first and second halves can tell us how a club's performance has tended to change across the break.

## Data
The data was obtained from FotMob, and the full match data is [here](data/mls_season_2026_stats.csv). The data is cleaned and processed in [halftime_performance.R](halftime_performance.R) and the resulting table consisting of each club's npxG data is [here](mls_2026_half_differences.csv).

## Analysis
One major note from a statistical perspective is that the data is still too noisy to concretely use it to predict how a club performs in any given match. Still, I believe some of the observations are quite interesting and can give us a unique insight into how a club tends to play across both halves.

Philadelphia Union is an example of team that tends to play much better in the second-half. They generate the second-highest average non-penalty xG difference at 0.45 per match. However, an overwhelming portion of this stat is generated in the second half. The club averages 0.02 non-penalty xG difference in the first half and 0.43 npxG difference in the second half.

New York Red Bulls is an example of a team of two halves. They generate about 0.34 npxG difference in the first half and about −0.33 npxG difference in the second half, a drop of 0.678. They have the largest change in npxG difference across the two halves in the entire league. Portland is goes the other direction: they average -0.20 in the first half, and 0.16 in the second.

So, are there any specific takeaways from this sort of data that might warrant a tactical adjustment? It's hard to say. Again, even the full-season sample is still noisy, and many clubs many clubs don't show a large enough change across halves to draw any real conclusion.

For clubs like the Red Bulls and Portland, which show a noticeable difference between halves, we can't immediately assume that they have a specific weaker half. This difference can come from a range of reasons. Some teams play defensively after leading at halftime. Some teams have a strong or weak bench that can affect the second half. Some teams focus on tiring out the opposition to pounce later on in the game. Or it could all just be from random chance. Some of these reasons can be exploited, others are just a result of tactical decisions. Still, as always, looking for possible reasons for such an interesting statistic could result in some fruitful insight.
