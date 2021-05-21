library(extraDistr)
# sample: r, pdf: d, cdf: p, quantile: q

x = 3

lRange = 1; uRange = 9;          rdunif(1,lRange,uRange); ddunif(x,lRange,uRange); pdunif(x,lRange,uRange); qdunif(0.2,lRange,uRange); # from extraDistr
p = 0.8;                         rbern(1,p); dbern(1,p); pbern(1,p); qbern(0.2,p); # from extraDistr
n = 20; p = 0.8;                 rbinom(1,n,p); dbinom(x,n,p); pbinom(x,n,p); qbinom(0.2,n,p);
ps = c(0.2,0.5,0.2,0.1);         rcat(1,ps); dcat(x,ps); pcat(x,ps); qcat(0.2,ps); # from extraDistr

p = 0.2;                         rgeom(1,p); dgeom(x,p); pgeom(x,p); qgeom(0.2,p);
sAv = 10; fAv = 20; nTrials = 3; rhyper(1, sAv, fAv, nTrials); dhyper(x, sAv, fAv, nTrials); phyper(x, sAv, fAv, nTrials); qhyper(0.2, sAv, fAv, nTrials)   

rate = 10;                       rpois(1,rate); dpois(x,rate); ppois(x,rate); qpois(0.2,rate)
nSucc =10; p = 0.2;              rnbinom(1, nSucc,p); dnbinom(x, nSucc,p); pnbinom(1, nSucc,p); qnbinom(0.2, nSucc,p);  # Return the number of failures before n successes instead of total trials to n successes

lRange = 1; uRange = 9;          runif(1,lRange,uRange); dunif(x,lRange,uRange); punif(x,lRange,uRange); qunif(0.2,lRange,uRange);
rate = 2.5;                      rexp(1,rate); dexp(x,rate); pexp(x,rate); qexp(0.2,rate);
μ = 2; σsq = 5 ;                 rnorm(1,μ,sqrt(σsq)); dnorm(x,μ,sqrt(σsq)); pnorm(x,μ,sqrt(σsq)); qnorm(0.2,μ,sqrt(σsq)); 
n = 5; rate = 2.5;               #use gamma, as erlang special case of it when shape is integer
μ = 2.5; σ = 2.5;                rcauchy(1,μ,σ); dcauchy(x,μ,σ); pcauchy(x,μ,σ); qcauchy(0.2,μ,σ)
df = 3;                          rchisq(1,df); dchisq(x,df); pchisq(x,df); qchisq(0.2,df);
df = 4.5;                        rt(1,df); dt(x,df); pt(x,df); qt(0.2,df);
df1 = 6 ; df2 = 7;               rf(1,df1,df2); df(x,df1,df2); pf(x,df1,df2); qf(0.2,df1,df2);
shapeα = 2.5; shapeβ=4.5;        rbeta(1,shapeα,shapeβ); dbeta(x,shapeα,shapeβ); pbeta(x,shapeα,shapeβ); qbeta(0.2,shapeα,shapeβ)
shapeα = 2.5; rateβ = 4.5;       rgamma(1,shapeα,1/rateβ); dgamma(x,shapeα,1/rateβ); pgamma(x,shapeα,1/rateβ); qgamma(0.2,shapeα,1/rateβ)

xs = c(3,12,5)
n=20; ps = c(0.2,0.5,0.3);       rmnom(1,n,ps);  dmnom(xs,n,ps);  # from extraDistr
initialNByCat = c(5,14,7); nTrials=20 ; rmvhyper(1,initialNByCat,nTrials); dmvhyper(xs,initialNByCat,nTrials) # from extraDistr

