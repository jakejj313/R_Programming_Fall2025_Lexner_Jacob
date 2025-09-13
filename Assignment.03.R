https://rprogramminglis4370jacoblexner.blogspot.com/2025/09/assignment-3-analyzing-2016-data-poll.html
#Create a dataframe using these vectors
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
ABC_poll   <- c(  4,      62,      51,    21,      2,        14,       15)
CBS_poll   <- c( 12,      75,      43,    19,      1,        21,       19)
df_polls <- data.frame(Name, ABC_poll, CBS_poll)
# Show structure and the head of this dataframe
str(df_polls)
head(df_polls)
# Run the mean, median, and range 
> mean(df_polls$ABC_poll)
[1] 24.14286
> median(df_polls$ABC_poll)
[1] 15
> range(df_polls[, c("ABC_poll","CBS_poll")])
[1]  1 75
> mean(df_polls$CBS_poll)
[1] 27.14286
> median(df_polls$CBS_poll)
[1] 19
# Create a new column in the dataframe for Difference in the polls 
df_polls$Diff <- df_polls$CBS_poll - df_polls$ABC_poll
#Create bar chart 
ggplot(df_polls, aes(x = Name, y = Diff)) +
+     geom_col()
