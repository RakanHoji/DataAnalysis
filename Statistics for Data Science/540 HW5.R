### HW 13.09 ###
library(readxl)

temp_data <- paste0("~/Desktop/CSUF/ISDS 540/HW/5/Exercise 13.09 Data Temp.xlsx")

df1 <- read_excel(temp_data, sheet = "Sheet1", skip = 1)
r = c(t(as.matrix(df1)))
f = c("50 deg C", "60 deg C", "70 deg C")
k = 3
n = 5
tm = gl(k, 1, n*k, factor(f))
av = aov(r ~ tm)
summary(av, alpha=0.05)

### HW 13.23 ###

SSTR = 900
SSBL = 400
SST = 1800
SSE = SST - SSTR - SSBL
alpha = 0.05
k = 4
b = 8

MSTR = SSTR/(k-1)
MSBL = SSBL/(b-1)
MSE = SST/(k-1)*(b-1)
F_value = MSTR/MSE
p_value = pf(F_value, k-1, (k-1)*(b-1))


 
aov_table <- data.frame(
  Sum_sq = c(SSTR, SSBL, SSE, SST),
  Degree_fd = c(k-1, b-1, (k-1)*(b-1), (k*b)-1),
  Mean_Sq = c(round(MSTR,2), round(MSBL,2), round(MSE,2), NA),
  F_Val= c(round(F_value,3), NA, NA, NA),
  P_Val = c(round(p_value,3), NA, NA, NA)

)

rownames(aov_table) <- c("Treatment", "Blocks", "Error", "Total")
print(aov_table)


if(p_value < alpha) {
  print("There is a significant difference between at least two group means")
}else{
    print("There is no significant difference between any of the group means")
}


### HW 13.31 ###

library(readxl)
library(dyplr)

temp_data <- paste0("/Users/rakanidrissi/Desktop/CSUF/ISDS 540/HW/5/Exercise 13.31 Data Ride.xlsx")
df1 <- read_excel(temp_data, sheet = "Sheet1", skip = 1)

#Remove the first column
df1 <- df1 %>% select(-1)
r = c(t(as.matrix(df1)))
f1 = c("Roller Coaster", "Screaming Demon", "Log Flume")
f2 = c("Method 1", "Method 2")
k1 = length(f1)
k2 = length(f2)
n = 2
tm1 = gl(k1, 1, n*k1*k2, factor(f1))
tm2 = gl(k2, n*k1, n*k1*k2, factor(f2))
av = aov(r ~ tm1 * tm2)
summary(av)



### HW 13.43 ###
library(readxl)
library(dyplr)


curPath <- paste0("/Users/rakanidrissi/Desktop/CSUF/ISDS 540/HW/5/Exercise 13.43 Data Language.xlsx")
df1 <- read_excel(curPath, sheet = "Sheet1", skip = 1)
#Remove the first column
df1 <- df1 %>% select(-1)
r = c(t(as.matrix(df1)))
f1 = c("Spanish", "French", "German")
f2 = c("System 1", "System 2")
k1 = length(f1)
k2 = length(f2)
n = 2
tm1 = gl(k1, 1, n*k1*k2, factor(f1))
tm2 = gl(k2, n*k1, n*k1*k2, factor(f2))
av = aov(r ~ tm1 * tm2)
summary(av)


