library(tidyverse)
library(lme4)
library(ordinal)

# binomial and Poisson GLMMs for Figure 3a
d1 = read.csv("./data/frequency_data.csv")
glmm1 = glmer(cbind(In,Out)~Type+(1|Date),family="binomial",data=d1)
drop1(glmm1,test="Chisq")

glmm11 = glmer(Total~Type+(1|Date),family="poisson",data=d1)
drop1(glmm11,test="Chisq")

# Gamma GLMM for Figure 3b
d2 = read.csv("./data/time_data.csv")
d22 = gather(d2,c("Honeybee","Butterfly"),key="type",value="sec")
glmm22 = glmer(sec~type+(1|Date),family=Gamma(link="log"),data=d22)
drop1(glmm22,test="Chisq")

# ordered multinomial GLMM for Figure 3c vs. d
d3 = read.csv("./data/distance_data.csv")
d32 = gather(d3,c("Honeybee","Butterfly"),key="Type",value="cm")
d32$cm[d32$cm==">100"] = 100
d32$cm = factor(as.numeric(d32$cm))
clmm1 = clmm(cm~Type+(1|Date),data=d32)
drop1(clmm1,test="Chisq")

