library(ggplot2)
library(dplyr)
library(maps)
library(scales)
library(ggthemes)
library(tidyr)

RawBenefit<- read.csv('health-insurance-marketplace/BenefitsCostSharing.csv', header = T, sep= ',', stringsAsFactors = F)

benefit <- subset(RawBenefit, (IsCovered == "Covered"), select = c(BenefitName, IsCovered, StateCode, CopayInnTier1, CopayInnTier2, CopayOutofNet,StandardComponentId))

# CopayInnTier1
benefit <- benefit %>% mutate(CopayInnTier1 = replace(CopayInnTier1, which(CopayInnTier1 == "No Charge"), "$0 Copay"))
benefit <- benefit %>% mutate(CopayInnTier1 = replace(CopayInnTier1, which(CopayInnTier1 == "No Charge after deductible"), "$0 Copay after deductible"))
benefit <- benefit %>% mutate(CopayInnTier1 = replace(CopayInnTier1, which(CopayInnTier1 == "Not Applicable"), "$999999 Copay"))
benefit$InnTier1Value <- as.numeric(gsub("\\$([[:digit:]]+).*$", "\\1", benefit$CopayInnTier1))

benefit <- benefit %>% mutate(InnTier1After = ifelse(grepl("after", benefit$CopayInnTier1), TRUE, FALSE))
benefit <- benefit %>% mutate(InnTier1Before = ifelse(grepl("before", benefit$CopayInnTier1), TRUE, FALSE))

benefit <- benefit %>% mutate(InnTier1Day = ifelse(grepl("Day", benefit$CopayInnTier1), TRUE, FALSE))
benefit <- benefit %>% mutate(InnTier1Stay = ifelse(grepl("Stay", benefit$CopayInnTier1), TRUE, FALSE))

# CopayInnTier2
benefit <- benefit %>% mutate(CopayInnTier2 = replace(CopayInnTier2, which(CopayInnTier2 == "No Charge"), "$0 Copay"))
benefit <- benefit %>% mutate(CopayInnTier2 = replace(CopayInnTier2, which(CopayInnTier2 == "No Charge after deductible"), "$0 Copay after deductible"))
benefit <- benefit %>% mutate(CopayInnTier2 = replace(CopayInnTier2, which(CopayInnTier2 == "Not Applicable"), "$999999 Copay"))
benefit$InnTier2Value <- as.numeric(gsub("\\$([[:digit:]]+).*$", "\\1", benefit$CopayInnTier2))

benefit <- benefit %>% mutate(InnTier2After = ifelse(grepl("after", benefit$CopayInnTier2), TRUE, FALSE))
benefit <- benefit %>% mutate(InnTier2Before = ifelse(grepl("before", benefit$CopayInnTier2), TRUE, FALSE))

benefit <- benefit %>% mutate(InnTier2Day = ifelse(grepl("Day", benefit$CopayInnTier2), TRUE, FALSE))
benefit <- benefit %>% mutate(InnTier2Stay = ifelse(grepl("Stay", benefit$CopayInnTier2), TRUE, FALSE))

# CopayOutofNet
benefit <- benefit %>% mutate(CopayOutofNet = replace(CopayOutofNet, which(CopayOutofNet == "No Charge"), "$0 Copay"))
benefit <- benefit %>% mutate(CopayOutofNet = replace(CopayOutofNet, which(CopayOutofNet == "No Charge after deductible"), "$0 Copay after deductible"))
benefit <- benefit %>% mutate(CopayOutofNet = replace(CopayOutofNet, which(CopayOutofNet == "Not Applicable"), "$999999 Copay"))
benefit$OutofNetValue <- as.numeric(gsub("\\$([[:digit:]]+).*$", "\\1", benefit$CopayOutofNet))

benefit <- benefit %>% mutate(OutofNetAfter = ifelse(grepl("after", benefit$CopayOutofNet), TRUE, FALSE))
benefit <- benefit %>% mutate(OutofNetBefore = ifelse(grepl("before", benefit$CopayOutofNet), TRUE, FALSE))

benefit <- benefit %>% mutate(OutofNetDay = ifelse(grepl("Day", benefit$CopayOutofNet), TRUE, FALSE))
benefit <- benefit %>% mutate(OutofNetStay = ifelse(grepl("Stay", benefit$CopayOutofNet), TRUE, FALSE))

names(benefit)[7]<-'PlanId'
#$X for Copay GroupBy PlanId
PlanIdCopay1 <- benefit %>%
  filter(InnTier1Value != 999999, InnTier1After == FALSE, InnTier1Before == FALSE, InnTier1Day == FALSE, InnTier1Stay == FALSE) %>%
  select(PlanId, InnTier1Value,StateCode) %>%
  group_by(PlanId,StateCode) %>%
  summarize(MeanCopayValue = mean(InnTier1Value),
            MedianCopayValue = median(InnTier1Value),
            MaxCopayValue = max(InnTier1Value),
            MinCopayValue = min(InnTier1Value),
            StdCopayValue = sd(InnTier1Value),
            CountCopay = length(InnTier1Value),
            ZeroCountPercentage =length(InnTier1Value[InnTier1Value==0])/length(InnTier1Value)
  )

PlanIdCopay2 <- benefit %>%
  filter(InnTier2Value != 999999, InnTier2After == FALSE, InnTier2Before == FALSE, InnTier2Day == FALSE, InnTier2Stay == FALSE) %>%
  select(PlanId, InnTier2Value,StateCode) %>%
  group_by(PlanId,StateCode) %>%
  summarize(MeanCopayValue = mean(InnTier2Value),
            MedianCopayValue = median(InnTier2Value),
            MaxCopayValue = max(InnTier2Value),
            MinCopayValue = min(InnTier2Value),
            StdCopayValue = sd(InnTier2Value),
            CountCopay = length(InnTier2Value),
            ZeroCountPercentage =length(InnTier2Value[InnTier2Value==0])/length(InnTier2Value)
            ) 

PlanIdCopayOut <- benefit %>%
  filter(OutofNetValue != 999999, OutofNetAfter == FALSE, OutofNetBefore == FALSE, OutofNetDay == FALSE, OutofNetStay == FALSE) %>%
  select(PlanId, OutofNetValue,StateCode) %>%
  group_by(PlanId,StateCode) %>%
  summarize(MeanCopayValue = mean(OutofNetValue),
            MedianCopayValue = median(OutofNetValue),
            MaxCopayValue = max(OutofNetValue),
            MinCopayValue = min(OutofNetValue),
            StdCopayValue = sd(OutofNetValue),
            CountCopay = length(OutofNetValue),
            ZeroCountPercentage =length(OutofNetValue[OutofNetValue==0])/length(OutofNetValue)
            ) 

rate<-read.csv('health-insurance-marketplace/Rate.csv')
PlanIdRate <- rate %>%
  filter(IndividualRate<1000) %>%
  select(PlanId,IndividualRate,StateCode) %>%
  group_by(PlanId) %>%
  summarize(MeanIndividualRate = mean(IndividualRate),
            MedianIndividualRate = median(IndividualRate),
            MaxIndividualRate = max(IndividualRate),
            MinIndividualRate = min(IndividualRate),
            StdIndividualRate = sd(IndividualRate)
  )
Copay1Rate = merge(PlanIdRate,PlanIdCopay1,by='PlanId')
Copay2Rate = merge(PlanIdRate,PlanIdCopay2,by='PlanId')
OutofCopayRate = merge(PlanIdRate,PlanIdCopayOut,by='PlanId')
Copay1RateState<- Copay1Rate %>%
  filter(MeanIndividualRate!=0) %>%
  select(StateCode,MeanIndividualRate,MeanCopayValue) %>%
  group_by(StateCode) %>%
  summarize(
    CopayOverRate = mean(MeanCopayValue/MeanIndividualRate)
  )
Copay2RateState<- Copay2Rate %>%
  filter(MeanIndividualRate!=0) %>%
  select(StateCode,MeanIndividualRate,MeanCopayValue) %>%
  group_by(StateCode) %>%
  summarize(
    CopayOverRate = mean(MeanCopayValue/MeanIndividualRate)
  )
OutCopayRateState<- OutofCopayRate %>%
  filter(MeanIndividualRate!=0) %>%
  select(StateCode,MeanIndividualRate,MeanCopayValue) %>%
  group_by(StateCode) %>%
  summarize(
    CopayOverRate = mean(MeanCopayValue/MeanIndividualRate)
  )

OutCopayRateState[OutCopayRateState['StateCode']=='DE','CopayOverRate']<-1
OutCopayRateState[OutCopayRateState['StateCode']=='NV','CopayOverRate']<-1
OutCopayRateState$region <- tolower(state.name[match(OutCopayRateState$StateCode,state.abb)])
us_state_map = map_data('state')
statename<-group_by(us_state_map, region) %>% summarise(long = mean(long), lat = mean(lat))
mapdata <- left_join(OutCopayRateState, us_state_map, by="region")
p <- ggplot()+geom_polygon(data=mapdata, aes(x=long, y=lat, group = group, fill=mapdata$CopayOverRate),colour="white")+
  scale_fill_continuous(low = "thistle2", high = "darkred", guide="colorbar")
p1 <- p+theme_bw()+
  labs(fill = "OutCopayOverRate",title = "CopayOverRate",x="", y="")
p2<-p1 + scale_y_continuous(breaks=c()) + scale_x_continuous(breaks=c()) + theme(panel.border =  element_blank())
p3<-p2+coord_map()
p3



