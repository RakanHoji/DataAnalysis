##==HW 8.03==##
n = r_sample = 60
xbar = s_mean = 80
sigma = 15
confidance = 0.95
#a compute 95% confidance interval for the population mean 

alpha_over_2 = (1-confidance)/2
ME = -qnorm(alpha_over_2)*(sigma/sqrt(n))
lower_bound = xbar - ME
upper_bound = xbar + ME
print(upper_bound)
[1] 83.79545
print(lower_bound)
[1] 76.20455

#b Assume that the sameple sample mean was obtained from a sample of 120
# provide a 95% confidance 
n = 120
ME = -qnorm(alpha_over_2)*(sigma/sqrt(n))
lower_bound = xbar - ME
upper_bound = xbar + ME
print(lower_bound)
[1] 78.8582
print(upper_bound)
[1] 81.1418

#c using sample of 500 instead
n = 500
ME = -qnorm(alpha_over_2)*(sigma/sqrt(n))
lower_bound = xbar - ME
upper_bound = xbar + ME
print(lower_bound)
[1] 79.44064
print(upper_bound)
[1] 80.55936

##==HW 8.45==##
n = 64
xbar = 252.45
sigma = 74.5

#a Develop 95% Confidance interval estimate of the mean ampimt per day
# by a family of 4
alpha_over_2 = (1-0.95)/2
ME = -qnorm(alpha_over_2)*(sigma/sqrt(n))
lower_bound = xbar - ME
upper_bound = xbar + ME
print(lower_bound)
[1] 234.1978
print(upper_bound)
[1] 270.7022

#b

##==HW 8.51==##
#Calulate the mean time spend per patinet with 95% and 99% confidence
sigma = 8
ME = 2
#For 95% level of confidence
alpha_over_2 = (1-0.95)/2
n = ((sigma*(-qnorm(alpha_over_2)))/ME)^2
print(n)
[1] 61.46334
#For 99% level of confidence
alpha_over_2 = (1-0.99)/2
n = ((sigma*(-qnorm(alpha_over_2)))/ME)^2
print(n)
[1] 106.1583
