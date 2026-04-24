library(tidyverse)
library(patchwork)

# Figure 2. two sites
d0 = read.csv("./data/two_sites_data.csv")
d02 = gather(d0,c("Lepidoptera","Hymenoptera","Diptera","Coleoptera"),key="Order",value="count")
p0 = ggplot(data=d02,aes(y=count,x=Site,fill=Order)) + geom_bar(stat="identity",position=position_dodge()) + 
  theme_classic() + ylab("No. of visits")
ggsave(p0,filename="./figures/two_sites.pdf",width=5,height=3)

# Figure 3. visiting patterns
d1 = read.csv("./data/frequency_data.csv")
d12 = gather(d1,c("Out","In"),key="In.Out",value="count")
p1 = ggplot(data=d12,mapping=aes(y=count,x=Type,fill=In.Out,group=Date)) + 
  geom_bar(stat="identity",position=position_dodge()) + 
  ylab("No. of visits") + xlab("Type of visitors") +
  scale_fill_grey() + theme_classic() + labs(subtitle="(a) Visitation frequency")

d2 = read.csv("./data/time_data.csv")
d22 = gather(d2,c("Honeybee","Butterfly"),key="type",value="sec")
p2 = ggplot(data=d22,mapping=aes(y=sec,x=type)) + geom_boxplot() + 
  ylab("Visitation time (sec.)") + xlab("Type of visitors") + labs(subtitle="(b) Visitation time") +
  scale_y_log10() + geom_jitter(pch=as.numeric(substr(d22$Date,1,1))) + theme_classic()

d3 = read.csv("./data/distance_data.csv")
d3$Honeybee[d3$Honeybee==">100"] = 100
d3$Butterfly[d3$Butterfly==">100"] = 100
d3$Honeybee = as.numeric(d3$Honeybee)
d3$Butterfly = as.numeric(d3$Butterfly)
p32 = ggplot(data=d3,aes(x=Butterfly,fill=Date)) + geom_histogram() +
  ylab("No. of visits") + xlab("Distance (cm)") + labs(subtitle="(c) Butterfly movement") + scale_fill_grey() + theme_classic() + theme(legend.position = "none")
p31 = ggplot(data=d3,aes(x=Honeybee,fill=Date)) + geom_histogram() +
  ylab("No. of visits") + xlab("Distance (cm)") + labs(subtitle="(d) Honeybee movement") + scale_fill_grey() + theme_classic() + theme(legend.position = "none")

p23 = p1 | p2 | (p32 / p31)
ggsave(p23,filename="./figures/visit_patterns.pdf",width=9,height=4)


