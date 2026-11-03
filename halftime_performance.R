library(dplyr)
library(tidyr)

league_data <- read.csv(paste0("data/mls_season_2026_stats.csv"))
league_data <- league_data %>% filter(status == "FT")

relevant_col <- c("team","match","xg_non_penalty","second_half_xg_non_penalty","first_half_xg_non_penalty")

league_data <- league_data %>% select(all_of(relevant_col))

for (col in names(league_data %>% select(where(is.numeric)))) {
  league_data[[paste0(col, "_against")]] <- NA
  for (i in seq_len(nrow(league_data))) {
  	match_val <- league_data[["match"]][i]
  	team_val <- league_data[["team"]][i]
  	match_rows <- which(league_data[["match"]] == match_val)
  	other_rows <- match_rows[league_data[["team"]][match_rows] != team_val]
  	
  	if (length(other_rows) > 0) {
  	league_data[[paste0(col, "_against")]][i] <- league_data[[col]][other_rows[1]]
  	}
  }
  league_data[[paste0(col,"_difference")]] <- league_data[[col]] - league_data[[paste0(col, "_against")]]
}

league_data <- league_data %>% mutate(npxG_diff_half_change = 
	second_half_xg_non_penalty_difference - first_half_xg_non_penalty_difference)

summary_table <- league_data %>% group_by(team) %>% summarize(
	avg_npxg_diff = mean(xg_non_penalty_difference),
	avg_first_half_npxg_diff = mean(first_half_xg_non_penalty_difference),
	avg_second_half_npxg_diff = mean(second_half_xg_non_penalty_difference),
	avg_npxg_diff_change = mean(npxG_diff_half_change)
	)

write.csv(summary_table, "mls_2026_half_differences.csv")
