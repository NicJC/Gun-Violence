
library(rvest)
library(XML)
library(xml2)
library(dplyr)
library(utils)
library(tidyverse)
library(stringr)
library(knitr)
library(kableExtra)
library(magrittr)
library(tidyr)
library(RCurl)
library(odbc)
library(DBI)
library(dbplyr)



url = "https://www.gunviolencearchive.org/last-72-hours"
urldata<-getURL(url)
data<-readHTMLTable(urldata,stringAsFactors = FALSE,header = T)




url1<- "https://www.gunviolencearchive.org/last-72-hours?page=1" 
urldata1<-getURL(url1)
data1<-readHTMLTable(urldata1,stringAsFactors = FALSE,header = T)




url2<- "https://www.gunviolencearchive.org/last-72-hours?page=2" 
urldata2<-getURL(url2)
data2<-readHTMLTable(urldata2,stringAsFactors = FALSE,header = T)




url3<- "https://www.gunviolencearchive.org/last-72-hours?page=3" 
urldata3<-getURL(url3)
data3<-readHTMLTable(urldata3,stringAsFactors = FALSE,header = T)




url4<- "https://www.gunviolencearchive.org/last-72-hours?page=4" 
urldata4<-getURL(url4)
data4<-readHTMLTable(urldata4,stringAsFactors = FALSE,header = T)




url5<- "https://www.gunviolencearchive.org/last-72-hours?page=5" 
urldata5<-getURL(url5)
data5<-readHTMLTable(urldata5,stringAsFactors = FALSE,header = T)



url6<- "https://www.gunviolencearchive.org/last-72-hours?page=6" 
urldata6<-getURL(url6)
data6<-readHTMLTable(urldata6,stringAsFactors = FALSE,header = T)




url7<- "https://www.gunviolencearchive.org/last-72-hours?page=7" 
urldata7<-getURL(url7)
data7<-readHTMLTable(urldata7,stringAsFactors = FALSE,header = T)




url8<- "https://www.gunviolencearchive.org/last-72-hours?page=8" 
urldata8<-getURL(url8)
data8<-readHTMLTable(urldata8,stringAsFactors = FALSE,header = T)




url9<- "https://www.gunviolencearchive.org/last-72-hours?page=9" 
urldata9<-getURL(url9)
data9<-readHTMLTable(urldata9,stringAsFactors = FALSE,header = T)



url10<- "https://www.gunviolencearchive.org/last-72-hours?page=10" 
urldata10<-getURL(url10)
data10<-readHTMLTable(urldata10,stringAsFactors = FALSE,header = T)




url11<- "https://www.gunviolencearchive.org/last-72-hours?page=11" 
urldata11<-getURL(url11)
data11<-readHTMLTable(urldata11,stringAsFactors = FALSE,header = T)




url12<- "https://www.gunviolencearchive.org/last-72-hours?page=12" 
urldata12<-getURL(url12)
data12<-readHTMLTable(urldata12,stringAsFactors = FALSE,header = T)




data<-data.frame(data)

data1 <-data.frame(data1)


data2<-data.frame(data2)


data3 <-data.frame(data3)


data4<-data.frame(data4)


data5 <-data.frame(data5)


data6<-data.frame(data6)


data7 <-data.frame(data7)


data8<-data.frame(data8)


data9 <-data.frame(data9)


data10<-data.frame(data10)


data11 <-data.frame(data11)


data12<-data.frame(data12)





data<-rbind(data,data1,data2,data3,data4,data5,data6,data7,data8,data9,data10,data11,data12)



data<-data.frame(data)

data<-data[complete.cases(data), ]

str(data)

data<-data.frame("Incident.ID" = data$NULL.Incident.ID,"Incident.Date" = data$NULL.Incident.Date, "State" = data$NULL.State, "City.Or.County" = data$NULL.City.Or.County , "Killed" = data$NULL...Killed, "Injured" = data$NULL...Injured )





gun<-kable(data, "html") %>%
  kable_styling(full_width = T)%>%
  kable_styling(bootstrap_options = c("striped", "hover"))

gun