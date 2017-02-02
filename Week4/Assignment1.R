ligrary(ggplot2)

lambda<-0.2
n<-40
number<-1000

## Simulations
set.seed(123)
exponential<-matrix(data=rexp(n*number,lambda),nrow=number)
exponential_mean<-data.frame(means=apply(exponential,1,mean))

g<-ggplot(data=exponential_mean,aes(x=means))
g+geom_histogram(bins=30)

## Sample Mean vs. Theoretical Mean
mu<-1/lambda
mean1<-mean(exponential_mean$means)
sd1<-sd(exponential_mean$means)
var1<-var(exponential_mean$means)

sd<-1/lambda/sqrt(n)
var<-sd^2

g+geom_histogram(bins=30,aes(y=..density..))+
  geom_vline(xintercept=mu,size=2,color="red")+
  geom_vline(xintercept=mean1,size=2,color="blue")+
  stat_function(fun=dnorm,args=list(mean=mu,sd=sd),size=2,color="red")+
  geom_density(size=2,color="blue")