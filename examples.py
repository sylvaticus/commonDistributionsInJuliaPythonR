from scipy import stats
import math

lRange = 2; uRange = 10;         unidd    = stats.randint(lRange,uRange)
p = 0.8;                         bernd    = stats.bernoulli(p)
n = 20; p = 0.8;                 bind     = stats.binom(n,p)
# ps = [0.2,0.5,0.2,0.1];        catd     = stats.categorical(ps) # categorical not available
n=20; ps = [0.2,0.5,0.3];        multind  = stats.multinomial(n, ps)
p = 0.2;                         geomd    = stats.geom(p)
sAv = 10; fAv = 20; nTrials = 3; hypgeomd = stats.hypergeom(sAv+fAv,sAv,nTrials)
initialNByCat = [5,14,7]; nTrials=20 ;  hypgeommultid = stats.multivariate_hypergeom(initialNByCat,nTrials) # from scipy 1.6
rate = 10;                       poissd   = stats.poisson(rate)
nSucc =10; p = 0.2;              pascd    = stats.nbinom(nSucc,p) # Return the number of failures before n successes instead of total trials to n successes

lRange = 2; uRange = 10;         unicd    = stats.uniform(lRange,uRange)
rate = 2.5;                      expd     = stats.expon(rate)
μ = 2; σsq = 5 ;                 normd    = stats.norm(μ,math.sqrt(σsq))  # parametrised by sd!
n = 5; rate = 2.5;               erld     = stats.erlang(n,rate)
μ = 2.5; σ = 2.5;                cuachyd  = stats.cauchy(μ, σ)
df = 3;                          chisqd   = stats.chi2(df)
df = 4.5;                        td       = stats.t(df)
df1 = 6 ; df2 = 7;               fd       = stats.f(df1, df2)
shapeα = 2.5; shapeβ=4.5;        betad    = stats.beta(shapeα,shapeβ)
shapeα = 2.5; rateβ = 4.5;       gammad   = stats.gamma(shapeα,1/rateβ)


uvdds = [unidd, bernd, bind, geomd, hypgeomd, poissd, pascd]
uvcds = [unicd, expd, normd, erld, cuachyd, chisqd,  td, fd, betad, gammad]
mvds  = [multind,  hypgeommultid]

x = 3
for d in uvdds:
    print("--------")
    print("Mean: "+str(d.mean()))
    print("Variance: "+str(d.var()))
    print("Median: "+str(d.median()))
    print("Sample: "+str(d.rvs()))

    print("PMF: "+str(d.pmf(x)))
    print("CDF: "+str(d.cdf(x)))
    print("20% quantile: "+str(d.ppf(0.2)))

for d in uvcds:
    print("--------")
    print("Mean: "+str(d.mean()))
    print("Variance: "+str(d.var()))
    print("Median: "+str(d.median()))
    print("Sample: "+str(d.rvs()))

    print("PMF: "+str(d.pdf(x)))
    print("CDF: "+str(d.cdf(x)))
    print("20% quantile: "+str(d.ppf(0.2)))

xs = [3,12,5]
for d in mvds:
    print("--------")
    print("Mean: "+str(d.mean()))
    #print("Variance: "+str(d.var()))
    #print("Median: "+str(d.median()))
    print("Sample: "+str(d.rvs()))
    print("PMF: "+str(d.pmf(xs)))
    #print("CDF: "+str(d.cdf(xs)))
    #print("20% quantile: "+str(d.ppf(0.2)))
