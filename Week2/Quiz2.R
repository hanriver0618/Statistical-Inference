## 1.What is the variance of the distribution of the average an IID draw of n 
## observations from a population with mean μ and variance σ2.

## Answer: σ2/n

## 2. Suppose that diastolic blood pressures (DBPs) for men aged 35-44 are normally 
## distributed with a mean of 80 (mm Hg) and a standard deviation of 10. 
## About what is the probability that a random 35-44 year old has a DBP less than 70?

pnorm(70,mean=80,sd=10)*100

## 3. Brain volume for adult women is normally distributed with a mean of about 1,100 
## cc for women with a standard deviation of 75 cc. What brain volume represents 
## the 95th percentile?

qnorm(0.95,mean=1100,sd=75)

## 4.Refer to the previous question. Brain volume for adult women is about 1,100 cc 
## for women with a standard deviation of 75 cc. Consider the sample mean 
## of 100 random adult women from this population. What is the 95th percentile of 
## the distribution of that sample mean?

qnorm(0.95,mean=1100,sd=75/sqrt(100))

## 5. You flip a fair coin 5 times, about what's the probability of getting 4 or 5 
## heads?

(choose(5,4)*0.5^4*(1-0.5)^1+choose(5,5)*0.5^5*(1-0.5)^0)*100

## 6. The respiratory disturbance index (RDI), a measure of sleep disturbance, 
## for a specific population has a mean of 15 (sleep events per hour) and a 
## standard deviation of 10. They are not normally distributed. Give your best 
## estimate of the probability that a sample mean RDI of 100 people is between 
## 14 and 16 events per hour?

pnorm(16,mean=15,sd=10/sqrt(100))*100-pnorm(14,mean=15,sd=10/sqrt(100))*100

## 7.Consider a standard uniform density. The mean for this density is .5 and the 
## variance is 1 / 12. You sample 1,000 observations from this distribution and 
## take the sample mean, what value would you expect it to be near?

## Answer : 0.5

## 8. The number of people showing up at a bus stop is assumed to be
## Poisson with a mean of 5 people per hour. You watch the bus
## stop for 3 hours. About what's the probability of viewing 10 or fewer people?

ppois(10,lambda=5*3)
