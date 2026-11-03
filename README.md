# halftime-performance-change

# Introduction
From the 2026 MLS season match data upto the penultimate matchday, we can compute a club's non-penalty xG difference (that is, the difference between their npxG generated and npxG conceded), not only for an entire match but also for each of their halves. npxG difference is a useful stat that can roughly tell us how well a team generally performs, with both offensive and defensive ability being crucial for increasing the stat. Thus comparing a club's average npxG difference between their first and second halves can tell us how a club's performance have tended to change in between the break.

# Data
The data was obtained from FotMob, and the full match data is [here](data/mls_season_2026_stats.csv). The R program used to compute and clean up the data is done in [halftime_performance.R](halftime_performance.R) and the resulting table consisting of each club's npxG data is [here](mls_2026_half_differences.csv).

# Analysis
One major note from a statistical perspective is that the data is still too noisy to concretly use the data as a predictor for a club's average matchday. Still I believe some of the observations are quite interesting and can give us a unique insight to how a club tends to play across both halves.

Philadelphia Union is a prime example of a second-half dominator. They generate the second highest non-penalty xG difference (i.e., npxG for minus npxG against) at 0.45. However, an overwhelming portion of this stat is generated in the second half. The club averages 0.02 non-penalty xG difference in the first half, and 0.43 npxG difference in the second half.

RB New York is the prime example of a team of two halves. They generate about 0.34 npxG difference in the first half and -0.33 about npxG difference in the second half, a difference of 0.677 npxG difference. They have the highest change in npxG difference across the two halves in the entire league.

So, are there any specific takeaways from this sort of data that might warrant a tactical adjustment? It's hard to say. Again, even the full-season sample is still noisy, and many clubs don't have a significant enough change across halves to really warrant any potential insights. 

For clubs like Red Bulls and Portland, which show a noticible difference between halves, we can't immediately assume that they have a specific weaker half. This difference can come from a range of reasons. Some teams play defensively after leading at halftime. Some teams have a strong or weak bench that can affect the second half. Some teams focus on tiring out the oppostion to pounce later on in the game. Or it could all just be from random chance. Some of these reasons can be exploited, others are just a result of tactical decisions. Still, as always, looking for possible reasons for such an interesting statistic could result in some fruitful insight.
