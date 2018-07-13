library(car)
brief(Transact)
a=lm( time ~ t1+t2, Transact)

library('glue')

library(recipes)
install.packages('recipes')


library(AmesHousing)
install.packages('AmesHousing')

ames=make_ames()

lm( log(Sale_Price) ~ Alley+Lot_Area, data=ames, subset=Year_Sold>2000) -> a


rec = recipe( Sale_Price ~ Alley+Lot_Area, data=ames %>% head())  %>%
step_log( Sale_Price ) %>%
step_dummy( Alley )


prep( rec, verbose=TRUE)
