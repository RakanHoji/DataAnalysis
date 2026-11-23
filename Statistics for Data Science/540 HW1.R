ISDS 540
Rakan Abdelsalam
Chapter 3

library(readxl)
library(dplyr)

##==HW 3.07==##
# Change file path
currentpath <- "/Users/rakanidrissi/Desktop/CSUF/ISDS 540/HW/Exercise 3.09 Data CommuteTime.xls"
working_data <- read_excel(currentpath, sheet = 'Data')
# Mean commute time for the 48 cities.
mean(working_data$`Time (minutes)`)

# Median of commute time
median(working_data$`Time (minutes)`)

# Mode of commute time
getmode <- function(v) { 
  uniqv <- unique(v) 
  uniqv[which.max(tabulate(match(v, uniqv)))] 
} 
getmode(working_data$`Time (minutes)`)

# Third quantile of commute time
quantile(working_data$`Time (minutes)`, 0.75)

##==HW 3.25==##
values <- c(27,25,20,15,30,34,28,25)
working_data <- data.frame(values)
range_working_data <- max(working_data$values)-min(working_data$values)
print(range_working_data)
IQR(working_data$values)
#IQR_working_data <- quantile(working_data, 0.75) - quantile(working_data, 0.25)
#print(IQR_working_data)
var(working_data$values)
sd(working_data$values)
# Z-score by adding a Zcore column
working_data <- working_data %>%
  mutate(zscore = (working_data$values - mean(working_data$values))/sd(working_data$values))

##==HW 3.35==##
values <- c(10,20,12,17,16)
working_data <- data.frame(values)
working_data <- working_data %>% 
  mutate(zscore = (working_data$values - mean(working_data$values))/sd(working_data$values))

##==HW 3.37==##
cheby <- function(data, mean, sd) {
  zscore <- vector(mode="numeric", length(data))
  for (i in 1:length(data)) {
    z <- (data[i] - mean)/sd
    zscore[i] <- z
  }
  if(sum(zscore) == 0) {
    return(1-(1/abs(zscore[1]^2)))
  }
  else print("Error")
}
#a
raw_data <- c(20,40)
cheby(raw_data,30,5)

#b
raw_data <- c(15,45)
cheby(raw_data,30,5)

#c
raw_data <- c(22,38)
cheby(raw_data,30,5)

#d
raw_data <- c(18,42)
cheby(raw_data,30,5)

#e
raw_data <- c(12,48)
cheby(raw_data,30,5)

##==HW 3.39==##
#a
values <- c(4.5,9.3)
working_data <- data.frame(values)
working_data <- working_data %>% 
  mutate(zscore = (working_data$values - 6.9)/1.2)

a <- 1-(1/(working_data$zscore[1]^2))

#b
values <- c(3.9,9.9)
working_data <- data.frame(values)
working_data <- working_data %>% 
  mutate(zscore = (working_data$values - 6.9)/1.2)

b <- 1-(1/(working_data$zscore[1]^2))


######################### Case Study 1 ###########################

mean <- 12
standard_deviation <- 3.2


sds
Akiko Hamaguchi,
the manager of a small sushi restaurant called Little Ginza in Phoenix, Arizona, purchases salmon every day to ensure freshness for her customers.
However, purchasing too much salmon may result in wastage, and purchasing too little may disappoint customers on high demand days.
This report uses the normal distribution with the mean of 12 pounds and a standard deviation of 3.2 to answer three questions related to Akiko's salmon purchases.

Question 1:
The first question is to find the probability that the demand for salmon at Little Ginza on a certain day is above her earlier purchase of 20 pounds.
We can use the normal distribution formula to calculate this probability.
Z = (x - mu) / sigma
where x is the demand for salmon, mu is the mean demand of 12 pounds, sigma is the standard deviation of 3.2, and Z is the standardized score.
To find the probability that the demand is above 20 pounds, we need to calculate the area under the normal curve to the right of Z = (20 - 12) / 3.2 = 2.5. 
Using a standard normal distribution table, the probability is approximately 0.0062 or 0.62%. Therefore, 
there is a low probability that the demand for salmon will be above 20 pounds.

Question 2:
The second question is to find the probability that the demand for salmon at Little Ginza on a certain day is below 15 pounds.
We can use the same normal distribution formula as in the first question.
Z = (x - mu) / sigma
To find the probability that the demand is below 15 pounds, we need to calculate the area under the normal curve to the left of Z = (15 - 12) / 3.2 = 0.9375. 
Using a standard normal distribution table, the probability is approximately 0.1723 or 17.23%. Therefore, there is a relatively high probability that the demand for salmon will be below 15 pounds.

Question 3:
The third question is to determine the amount of salmon that should be bought daily so that it meets demands on at least 90% of the days. 
We can use the normal distribution formula to solve for x.
Z = (x - mu) / sigma
Since we want to meet demands on at least 90% of the days, we need to find the Z-score that corresponds to the 90th percentile of the normal distribution.
Using a standard normal distribution table, the Z-score is approximately 1.28. Therefore, we can solve for x as follows:
1.28 = (x - 12) / 3.2
x = 12 + 1.28 * 3.2
x = 16.096
Therefore, Akiko should purchase at least 16.1 pounds of salmon daily to meet demands on at least 90% of the days.

Conclusion:
In conclusion, using the normal distribution with the mean of 12 pounds and a standard deviation of 3.2, we have found that the probability of the demand for salmon being above 20 pounds is low, 
the probability of the demand being below 15 pounds is relatively high, 
and Akiko should purchase at least 16.1 pounds of salmon daily to meet demands on at least 90% of the days. By using this information,
Akiko can make informed decisions about her daily salmon purchases and avoid wastage while satisfying her customers
/#
