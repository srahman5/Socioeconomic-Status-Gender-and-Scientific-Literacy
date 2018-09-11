#Project 4
#INST314-0102
#Suneel Rahman

attach(gss)

#Recoding variables
COLSCINM <- ifelse(COLSCINM==NA, '0', COLSCINM)
summary(COLSCINM)

levels(RACE) <- c(1, 0, 0)
summary(RACE)

AGE <- ifelse(AGE == '89 OR OLDER', '89', AGE)
summary(AGE)

levels(SEX) <- c(0,1)
summary(SEX)

levels(INCOME16) <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26)
INCOME16<- ifelse(INCOME16 == "NA", '0', INCOME16)
summary(INCOME16)

model <- lm(COLSCINM ~ RACE + AGE + SEX + INCOM16)
summary(model)