https://rprogramminglis4370jacoblexner.blogspot.com/2025/10/assignment-9-visualization-in-r-base.html

install.packages("openintro")
data("gpa_study_hours", package = "openintro")
head(gpa_study_hours)
# A tibble: 6 × 2
    gpa study_hours
  <dbl>       <dbl>
1  4             10
2  3.8           25
3  3.93          45
4  3.4           10
5  3.2            4
6  3.52          10


hist(gpa_study_hours$study_hours,
     main   = "Base: Distribution of Hours Studied",
     xlab   = "Hours Studied")
plot(gpa_study_hours$study_hours, gpa_study_hours$gpa,
     main   = "GPA based on Amount of Time Spent Studying",
     xlab   = "Hours Spent Studying",
     ylab   = "GPA")


library(ggplot2)

 ggplot(gpa_study_hours, aes(x = study_hours, y = gpa, color = factor(study_hours))) +
              geom_point() +
             geom_smooth(method = "lm") +
            labs(title = "ggplot2: GPA vs. Study Hours with trend by GPA")

ggplot(gpa_study_hours, aes(study_hours)) +
  geom_histogram(binwidth = 1) +
  facet_wrap(~ gpa) +
  labs(title = "ggplot2: Study_Hours distribution by GPA"

library(lattice)
xyplot(study_hours ~ gpa | factor(gpa),
                data = gpa_study_hours,
               main = "Lattice: GPA vs. Study Hours by GPA")
> bwplot(gpa ~ factor(study_hours),
       data = gpa_study_hours,
       main = "Lattice: GPA by Study Hours")
