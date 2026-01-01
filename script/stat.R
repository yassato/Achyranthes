library(tidyverse)
library(lme4)
library(ordinal)
library(VGAM)

d0 = read.csv("./data/two_sites_data.csv")
glm0 = vglm(cbind(Lepidoptera,Hymenoptera,Diptera,Coleoptera)~site+time,family=multinomial,data=d0)
drop1(glm0,test="LRT")

d1 = read.csv("./data/frequency_data.csv")
glmm1 = glmer(cbind(in.,out)~type+(1|date),family=binomial,data=d1)
drop1(glmm1,test="Chisq")

glmm11 = glmer(total~type+(1|date),family="poisson",data=d1)
drop1(glmm11,test="Chisq")

d2 = read.csv("./data/time_data.csv")
d22 = gather(d2,c("honeybee","butterfly"),key="type",value="sec")
glmm22 = glmer(sec~type+(1|date),family="Gamma",data=d22)
drop1(glmm22,test="Chisq")

d3 = read.csv("./data/distance_data.csv")
d32 = gather(d3,c("honeybee","butterfly"),key="type",value="cm")
d32$cm[d32$cm==">100"] = 100
d32$cm = factor(as.numeric(d32$cm))
clmm1 = clmm(cm~type+(1|date),data=d32)
drop1(clmm1,test="Chisq")

