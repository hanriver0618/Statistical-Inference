## 1. Consider influenza epidemics for two parent heterosexual families. 
## Suppose that the probability is 17% that at least one of the parents has 
## contracted the disease. The probability that the father has contracted influenza 
## is 12% while the probability that both the mother and father have contracted the 
## disease is 6%. What is the probability that the mother has contracted influenza?

## P(A)+P(B)-P(A&B)=P(AUB) 
PB=0.06
PA_B=0.12
PAB=0.17
print(PA_B+PAB-PB)

## 2 . A random variable, X is uniform, a box from 0 to 1 of height 1. (So that 
## its density is f(x)=1 for 0≤x≤1.) What is its 75th percentile?

print(qunif(0.75,min=0,max=1))

## 3. You are playing a game with a friend where you flip a coin and if it comes 
## up heads you give her X dollars and if it comes up tails she gives you Y dollars. 
## The probability that the coin is heads is p (some number between 0 and 1.) 
## What has to be true about X and Y to make so that both of your expected total 
## earnings is 0. The game would then be called “fair”.

## Answer : X*P=Y*(1-P)

## 4. A density that looks like a normal density (but may or may not be exactly normal) 
## is exactly symmetric about zero. (Symmetric means if you flip it around zero it 
## looks the same.) What is its median?

## Answer : median is 0

## 5. what is this mean?
## x <- 1:4
## p <- x/sum(x)
## temp <- rbind(x, p)
## rownames(temp) <- c("X", "Prob")
## [,1] [,2] [,3] [,4]
## X 1.0 2.0 3.0 4.0
## Prob 0.1 0.2 0.3 0.4

print(sum(x*p))

## 6. A web site (www.medicine.ox.ac.uk/bandolier/band64/b64-7.html) for home pregnancy
## tests cites the following: “When the subjects using the test were women who 
## collected and tested their own samples, the overall sensitivity was 75%. 
## Specificity was also low, in the range 52% to 75%.” Assume the lower value for 
## the specificity. Suppose a subject has a positive test and that 30% of women taking 
## pregnancy tests are actually pregnant. What number is closest to the probability of
## pregnancy given the positive test?

## P(D|+)= P(+|D)*P(D) / ( P(+|D)*P(D)+P(+|~D)*P(~D) )
## P(D|+)= P(+|D)*P(D) / ( P(+|D)*P(D)+(1-P(-|~D))*(1-P(D)) )

P_pD=0.75
P_D=0.30
P_nDN=0.48

percen=(P_pD*P_D) / ((P_pD*P_D)+((1-P_nDN)*(1-P_D)))
print(percen*100)
