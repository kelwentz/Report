---
title: "Visualizing, Modeling, and Forecasting Crashes in Wake County, North Carolina"
author: "Kelly Wentzlof, Cortlyn Morris, Ayan Gulzar"
date: "7/29/2021"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

# Abstract

Studies have shown that road traffic crashes are one of the leading causes of non-natural death for U.S citizens. There are many different ways that road crashes occur, and several various factors lead to it. It is essential to analyze the most common elements of road crashes. In this report, our goal is to model and forecast crashes in Wake County, North Carolina. To accomplish this goal, a public dataset  called  North Carolina Wake County crashes was available to use. The crash dataset used in this research was from 2015 to March 2021. Using the dataset to our advantage our intent is to  observe which factors have a higher cause of crashes in Wake County. The objective of this research is to address the above research question by using bar plots of common factors leading to crashes and Time Series Forecasting crashes in Wake County.

# Introduction 

Car crashes are something that occurs nearly every day. On average, there are 16,438 car crashes per day in the U.S. When it comes to car accidents, several factors correlate. However, it is crucial to understand some of the most frequent causes of crashes. Analyzing the most common reasons can help notify other drivers on the road so that there can be a decrease in crashes. 

When it comes to identifying car crashes, different states in the U.S experience crashes at different rates. Road accidents do not only harm the driver of the vehicle. It also affects the passenger and the pedestrians.  Most people assume that the driver gets injured the most in a road accident. Passengers and pedestrians are still dying at high rates.

From the beginning of 2015, information on car crashes has been listed in the Wake County car accident database. This data includes the driver's age, gender, vehicle type, and many more critical car accident factors. Our database is based on what police officers have recorded at the scene of the accident. Most of the data found in this database are true, but there is a small percentage of error with some of the data. Our goal is to sort out essential factors from the database to help forecast crashes in Wake County.

In this report, we will be visualizing, modeling and forecasting car crashes in Wake County. Our research questions are 1) What are the main factors that contribute to a crash? 2) Did the COVID pandemic impact crash frequency? 3) What are the conditions that lead to worse outcomes in terms of crash injuries?4) Can we forecast the daily number of crashes in Wake County? 5) Can we predict traffic hotspots in Wake County? We assembled a dataset from the Wake County crashes database from 2015 to March 2021. Although some of the input in the database is missing, this data will help provide some information about crashes in Wake County. This will also help us forecast car crashes after 2021. 

# Background 

When it comes to car crashes, people assume that the driver was either speeding or not paying attention. It is essential to understand that there are other factors to consider when a car accident occurs. Since everything has slowly started to open after the COVID-19 pandemic, there has been an increase in car crashes. Studying the different factors of impacts can help decrease the number of accidents.

## Hotspots

When looking at car crashes it is essential to study hotspots and notice roads where crashes are common. Some roads might not be known for accidents and others might be known for having the most accidents or even most life-threatening crashes. There has not been a lot of research done on the types of roads that crashes occur on. This is something to consider when looking at road crashes because it gives us a better understanding of roads where crashes are more common than others.  

## Weather Condition

Weather conditions are a prominent factor in car crashes. When studying car crashes it is crucial to study how the weather affects a crash. Sometimes crashes tend to increase when there is bad weather. Researchers have found that rain was one of the top contributors to weather-related auto crashes.

## Outro 

With all these factors of crashes done in previous research, some have not studied in-depth about this topic. Our goal is to expand this topic as we found there is no research on the main factors that cause car accidents. The condition that leads to the worst outcome to injuries. Lastly, the most common road that crashes happen. We will forecast  Crashes in Wake County, North Carolina from 2015 to March 2021. 

# Data, Method, and Analysis 

## Data

For this study, we utilized public data from the Wake County crashes dataset. We combined datasets from each year so that we could forecast car crashes in Wake County. This database gets updated every month and has all the specifications for the car accident. 

```{r loading-libraries, message=FALSE, warning=FALSE, echo=FALSE, include=FALSE}
library(reshape2)
library(tidyverse)
library(ggplot2)
library(dplyr)
library(dslabs)
library(ggrepel)
library(ggthemes)
library(maps)
library(scales)
library(zoo)
#devtools::install_github("m-clark/confusionMatrix")
library(confusionMatrix)
library(ROSE)
library(ranger)
library(Rcpp)
```

