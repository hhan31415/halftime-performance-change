# halftime-performance-change

## Introduction
From the 2026 MLS season match data up to the penultimate matchday, we can compute a club's non-penalty xG difference (that is, the difference between their npxG generated and npxG conceded), not only for an entire match but also for each of their halves. npxG difference is a useful stat that can roughly tell us how well a team generally performs, with both offensive and defensive ability being crucial for increasing the stat. Thus comparing a club's average npxG difference between their first and second halves can tell us how a club's performance has tended to change across the break.

## Data
The data was obtained from FotMob, and the full match data is [here](data/mls_season_2026_stats.csv). The data is cleaned and processed in [halftime_performance.R](halftime_performance.R) and the resulting table consisting of each club's average npxG data is shown below, with the raw csv file [here](mls_2026_half_differences.csv).

| Club | avg npxG diff (match) | 1st half | 2nd half | Change (2nd - 1st) |
|---|---:|---:|---:|---:|
| Atlanta United | -0.22 | -0.06 | -0.16 | -0.10 |
| Austin FC | -0.93 | -0.29 | -0.64 | -0.35 |
| CF Montréal | -0.43 | -0.20 | -0.23 | -0.04 |
| Charlotte FC | -0.17 | -0.12 | -0.05 | +0.07 |
| Chicago Fire FC | +0.42 | +0.15 | +0.27 | +0.12 |
| Colorado Rapids | +0.10 | +0.03 | +0.06 | +0.03 |
| Columbus Crew | +0.15 | +0.22 | -0.06 | -0.28 |
| DC United | -0.22 | +0.06 | -0.27 | -0.33 |
| FC Cincinnati | +0.25 | -0.01 | +0.25 | +0.26 |
| FC Dallas | +0.14 | +0.09 | +0.06 | -0.03 |
| Houston Dynamo FC | -0.30 | -0.12 | -0.18 | -0.07 |
| Inter Miami CF | +0.36 | +0.20 | +0.16 | -0.05 |
| LA Galaxy | -0.14 | -0.11 | -0.02 | +0.09 |
| Los Angeles FC | +0.32 | +0.15 | +0.16 | +0.01 |
| Minnesota United | +0.27 | +0.05 | +0.22 | +0.18 |
| Nashville SC | +0.44 | +0.26 | +0.18 | -0.08 |
| New England Revolution | -0.04 | -0.04 | 0.00 | +0.04 |
| New York City FC | -0.11 | -0.15 | +0.04 | +0.19 |
| Orlando City | -0.58 | -0.47 | -0.11 | +0.36 |
| Philadelphia Union | +0.45 | +0.02 | +0.43 | +0.41 |
| Portland Timbers | -0.04 | -0.20 | +0.16 | +0.36 |
| Real Salt Lake | +0.24 | +0.10 | +0.15 | +0.05 |
| Red Bull New York | +0.01 | +0.34 | -0.33 | -0.68 |
| San Diego FC | -0.32 | -0.13 | -0.19 | -0.06 |
| San Jose Earthquakes | +0.17 | +0.13 | +0.04 | -0.08 |
| Seattle Sounders FC | 0.00 | -0.07 | +0.07 | +0.14 |
| Sporting Kansas City | -0.76 | -0.35 | -0.42 | -0.07 |
| St. Louis City | +0.31 | +0.23 | +0.08 | -0.14 |
| Toronto FC | -0.24 | -0.22 | -0.02 | +0.21 |
| Vancouver Whitecaps | +0.86 | +0.50 | +0.36 | -0.14 |

## Analysis
One major note from a statistical perspective is that the data is still too noisy to concretely use it to predict how a club performs in any given match. Still, I believe some of the observations are quite interesting and can give us a unique insight into how a club tends to play across both halves.

Philadelphia Union is an example of team that tends to play much better in the second-half. They generate the second-highest average non-penalty xG difference at 0.45 per match. However, an overwhelming portion of this stat is generated in the second half. The club averages 0.02 non-penalty xG difference in the first half and 0.43 npxG difference in the second half.

New York Red Bulls is an example of a team of two halves. They generate about 0.34 npxG difference in the first half and about -0.33 npxG difference in the second half, a drop of 0.678. They have the largest change in npxG difference across the two halves in the entire league. Portland is goes the other direction: they average -0.20 in the first half, and 0.16 in the second.

So, are there any specific takeaways from this sort of data that might warrant a tactical adjustment? It's hard to say. Again, even the full-season sample is still noisy, and many clubs many clubs don't show a large enough change across halves to draw any real conclusion.

For clubs like the Red Bulls and Portland, which show a noticeable difference between halves, we can't immediately assume that they have a specific weaker half. This difference can come from a range of reasons. Some teams play defensively after leading at halftime. Some teams have a strong or weak bench that can affect the second half. Some teams focus on tiring out the opposition to pounce later on in the game. Or it could all just be from random chance. Some of these reasons can be exploited, others are just a result of tactical decisions. Still, as always, looking for possible reasons for such an interesting statistic could result in some fruitful insight.
