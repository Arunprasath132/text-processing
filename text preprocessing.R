devtools::install_github("bradleyboehmke/harrypotter")
library(tidyverse)
library(stringr)
library(tidytext)
library(harrypotter)
View(philosophers_stone[1:2])
text_tb <-tibble(chapter = seq_along(philosophers_stone),text=philosophers_stone)
View(text_tb)
text_tb%>%unnest_tokens(word,text) 
text_tb 

titles <- c("philosophers stone","chamber of secrets","prisoner of azkaban" ,"goblet of fire","order of the phoenix","half blood prince", "Deathly hallows")
titles
books<- list(philosophers_stone,chamber_of_secrets,prisoner_of_azkaban ,
             goblet_of_fire,order_of_the_phoenix,
             half_blood_prince, deathly_hallows) 
View(books)
series <-tibble
for(i inseq_along(titles))
  {
  clean<-tibble(chapter=seq_along(books[[i]]),text=books[[i]]%>%
                  unnest_tokens(word,text)%>%mutate(book=titles[i])%>%
                  select(book,everything())
                series<-rbind(series,clean)}
View(clean)
View(series)
