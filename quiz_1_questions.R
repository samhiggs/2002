library(gapminder)
library(tidyverse)

#Question 1 - average life expectancy across all countries in EU
#data("gapminder", package="gapminder")
#dplyr::glimpse(gapminder)
#europe = gapminder %>% select(lifeExp, year,continent) %>% filter(year==2007, continent=="Europe")
#mean(europe$lifeExp) #result

#Question 2 - 
#We identify 50 patients with cancer, review their medical records, and determine that 10 of them were exposed to a risk factor.
#We then identify a comparison group of 50 cancer-free individuals, review their medical records, and determine that 2 were exposed to the risk factor. 
#Which of the following statements are correct?
#retrospective study

#Question 3 - 


#Consider the following contingency table where we"re looking for an association between gender and the emotion associated with the colour red:
##Emotion 				
#Gender 	Anger 	Happiness 	Love 	Pain 	Total
#Female 	27 	19 	39 	17 	102
#Male 	34 	12 	38 	28 	112
#Total 	61 	31 	77 	45 	214

#What is the expected cell count for females who associate the colour red with love?'
#res = 36.70


#Question 4 - A test with 95% sensitivity and 99% specificity is used to screen a 
#population for a disease with 5% prevalence. The proportion of people who 
#test positive that actually have the disease is closest to:

res = (.95*.05)/(.95*.05+(1-.99)*(1-.05))
#1-res which is closest to 97.6%

#Question 5:

d = 1:9
counts = c(785, 468, 377, 247, 229, 177, 152, 147, 155)
e = log(1+1/d)
p = e/sum(e) 
dat = data.frame(d, counts, p, e)
chisq.test(counts, p=p)

