  ## H.W 7.19 ##
u = mean = 200
sigma = 50
n = 100
sigma_x_bar= sigma/sqrt(n)
# a. What is the probability that the sample mean will be within - or + 5 of the population mean?

range_from_u = 5
upper = (mean+ range_from_u -mean)/sigma_x_bar
print(upper)
lower = (mean-range_from_u-mean)/sigma_x_bar
print(lower)
prob = pnorm(upper)-pnorm(lower)
print(prob)

# The answer is [1] 0.6826895

# b. What is the probability that the sample mean will be within - or + 10 of the population mean?

range_from_u = 10
upper = (mean+range_from_u-mean)/sigma_x_bar
lower = (mean-range_from_u -mean)/sigma_x_bar
prob = pnorm(upper)-pnorm(lower)
print(prob)

# The answer is [1] 0.954497

##==HW 7.41==##
expected_p_bar = p = 0.17
sample = n = 800


#a show the sample distribution  of P_bar the sample proportion p_bar of the sample distribution spending more than $100 per week 
sd_p_bar = sqrt(0.17*(1-0.17)/800)

n = 800
p = 0.17
p*n>5
(1-p)*n>5

# The answer is [1] 0.0133
# Distribution is approx normal bc np = 800(0.17) = 136 > 5 and n(1-p) = 800(0.83) = 664 > 5

#b what is the probability that the sample proportion will be within -0.02 or +0.02 of the population proportion  

proportion_range = 0.02
sigma_p_bar = sqrt(p*(1-p)/n)
upper = (p+proportion_range-p)/sigma_p_bar
lower = (p-proportion_range-p)/sigma_p_bar
prob = pnorm(upper)-pnorm(lower)
print(prob)

# The answer is [1] 0.8679208

#c answer part (b) for a sample of 1600
n = 1600
proportion_range = 0.02
sigma_p_bar = sqrt(p*(1-p)/n)
upper = (p+proportion_range-p)/sigma_p_bar
lower = (p-proportion_range-p)/sigma_p_bar
prob = pnorm(upper)-pnorm(lower)
print(prob)

# The answer is [1] 0.9668069

##==HW 7.51==##
n = 400
p = 0.4
sample_p = 0.375
# p*n>5
# (1-p)*n>5
sigma_p_bar = sqrt(p*(1-p)/n)
z = (0.375-p)/sigma_p_bar
prob = 1 - pnorm(z)
print(prob)

# The answer is [1] 0.8462829

