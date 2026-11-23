######### - 9.09 #######
n = 50
xbar = 19.4
sd = 2
mu0 = 20
alpha = 0.05
df = n - 1
#a) compute the value of the test statistic
SE <- sd/sqrt(n)
print(SE)
# The answer is [1] 0.2828427

t = (xbar - mu0)/SE
print(t)
# The answer is  [1] 106.066

#b) What is the p-value?
p = pt(t, df)
print(p)
# The answer is [1] 0.01948903
#c) Using alpha = 0.05, What is your conclusion?
CV = qt(alpha, df)
print(CV)
# The answer is [1] -1.676551
### because CV, -1 > alpha we do not reject H0 

#d) What is the rejection rule using the critical value? what is your conclusion>
# Reject H0 if t < CV. In this case t = -2.12 < CV = -1.676


#### 9.33 ####
mu0 = 1503
n = 25
sd = 165
xbar = 1440
df = n - 1
#a) Develop a hypothesis test that can be used to determine whether the mean annual lower than national mean
# H0: mean >= 1503 && HA: mean < 1503

#b) What is point estimate of the difference between the mean annual mean and xbar?
SE = sd/sqrt(n)

t = (xbar - mu0)/SE

p = pt(t, df)
print(p)
# The answer is [1] 0.03413866
#c) at alpha = 0.05. Test for a significant differenc. Your conclusion?
CV = qt(alpha, df)
print(CV)
# The answer is [1] -1.710882

# t -1.91 < CV -1.71. So we reject the H0


##==HW 9.73==##
p0 = 0.27
n = 600
pbar = 180/600
#a
Point_estimate = pbar - p0
#c
SE = sqrt(p0*(1-p0)/n)
z = (pbar - p0)/SE
print(z)
1 - pnorm(z)


#### 10.05 ###
xbar1 = 135.67
xbar2 = 68.64
sigma1 = 35
sigma2 = 20
n1 = 40
n2 = 30
#a
pe = xbar1 - xbar2
pe = 135.67 – 68.64
#b
ce = -qnorm(0.005)
se = sqrt((sigma1^2/n1)+(sigma2^2/n2))
me = ce*se

#c
lower_limit = pe - me
upper_limit = pe + me
The answer is $17.08 to $84.11


##### 10.17 #####

xbar1 = 6.82
xbar2 = 6.25
sigma1 = 0.64
sigma2 = 0.75
n1 = 16
n2 = 10
#a)
#H0:  µ1 - µ 2 < 0  
#Ha:  µ 1 - µ 2 > 0

#b
z = (xbar1-xbar2)/sqrt((sigma1^2/n1)+(sigma2^2/n2))
print(z)
#c
1-pnorm(z)


##==HW 10.27==##
deluxe = c(39,39,45,38,40,39,35)
standard = c(27,28,35,30,30,34,29)
xbar1 = mean(deluxe)
xbar2 = mean(standard)
s1 = sd(deluxe)
s2 = sd(standard)
n1 = length(deluxe)
n2 = length(standard)
t = (xbar1-xbar2-10)/sqrt((sigma1^2/n1)+(sigma2^2/n2))
2*pnorm(t)
#b
cv = -qt(0.025,11)
me = cv*1.5972
lower_limit = xbar1-xbar2-me
upper_limit = xbar1-xbar2+me




