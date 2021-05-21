using Distributions


lRange = 1; uRange = 9;         unidd    = DiscreteUniform(lRange,uRange)
p = 0.8;                         bernd    = Bernoulli(p)
n = 20; p = 0.8;                 bind     = Binomial(n,p)
ps = [0.2,0.5,0.2,0.1];          catd     = Categorical(ps)
n=20; ps = [0.2,0.5,0.3];        multind  = Multinomial(n, ps)
p = 0.2;                         geomd    = Geometric(p)
sAv = 10; fAv = 20; nTrials = 3; hypgeomd = Hypergeometric(sAv, fAv, nTrials)
# hypergeometrical multivariate form not available
rate = 10;                       poissd   = Poisson(rate)
nSucc =10; p = 0.2;              pascd    = NegativeBinomial(nSucc,p) # Return the number of failures before n successes instead of total trials to n successes

lRange = 1; uRange = 9;          unicd    = Uniform(lRange,uRange)
rate = 2.5;                      expd     = Exponential(rate)
μ = 2; σsq = 5 ;                 normd    = Normal(μ,sqrt(σsq))  # parametrised by sd!
n = 5; rate = 2.5;               erld     = Erlang(n,rate)
μ = 2.5; σ = 2.5;                cuachyd  = Cauchy(μ, σ)
df = 3;                          chisqd   = Chisq(df)
df = 4.5;                        td       = TDist(df)
df1 = 6 ; df2 = 7;               fd       = FDist(df1, df2)
shapeα = 2.5; shapeβ=4.5;        betad    = Beta(shapeα,shapeβ)
shapeα = 2.5; rateβ = 4.5;       gammad   = Gamma(shapeα,1/rateβ)

uvds = [unidd, bernd, bind, catd, geomd, hypgeomd, poissd, pascd,
        unicd, expd, normd, erld, cuachyd, chisqd,  td, fd, betad, gammad]
mvds = [multind]

x = 3
for d in uvds
    println("--------")
    println(d)
    println("Mean: $(mean(d))")
    println("Variance: $(var(d))")
    d != chisqd && println("Median: $(median(d))")
    println("Sample: $(rand(d))")
    println("PDF: $(pdf(d,x))")
    println("CDF: $(cdf(d,x))")
    println("20% quantile: $(quantile(d,0.2))")
end

xs = [3,12,5]
for d in mvds
    println("--------")
    println(d)
    println("Mean: $(mean(d))")
    println("Variance: $(var(d))")
    #println("Median: $(median(d))")
    println("Sample: $(rand(d))")
    println("PDF: $(pdf(d,xs))")
    #println("CDF: $(cdf(d,xs))")
    #println("20% quantile: $(quantile(d,0.2))")
end
