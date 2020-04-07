library(tidyverse)
gapminder <- read_csv("gapminder.csv")
gapminder_1977 <- filter(gapminder,year==1977)
gapminder_1977 %>% 
  ggplot(mapping = aes(x=gdpPercap,y=lifeExp,colour=continent,size=pop))+
  geom_point()+
  scale_x_log10()

gapminder_1977 %>% 
  ggplot()+
  geom_line(mapping = aes(x=lifeExp,y=gdpPercap))+
  scale_x_log10()

?geom_point()

gapminder_1977 %>% 
  ggplot(mapping = aes(x=gdpPercap,y=lifeExp))+
  geom_point(shape="square")+
  scale_x_log10()

ggplot(
  data = gapminder_1977, 
  mapping = aes(x = gdpPercap, y = lifeExp, colour = continent, size = pop)
) +
  geom_point() +
  scale_x_log10()

gapminder_1977 %>% 
  ggplot(mapping = aes(x=gdpPercap,y=lifeExp,shape=continent,size=pop))+
  geom_point(colour="blue")+
  scale_x_log10()

gapminder %>% 
  ggplot(mapping = aes(x=year,y=lifeExp,colour=continent,size=pop))+
  geom_point(alpha=0.7)
scale_x_log10()

gapminder %>%
  ggplot(mapping=aes(x=year,y=lifeExp,colour=continent,group=country))+
  geom_line()+
  geom_point(colour="black",alpha=0.3)

gapminder %>%
  ggplot(mapping=aes(x=year,y=lifeExp,group=country))+
  geom_line(mapping = aes(colour=continent))+
  geom_point(colour="black",alpha=0.3)

gapminder %>% 
  ggplot(aes(x=gdpPercap,y=lifeExp))+
  geom_point(colour="black",alpha=0.5)+
  scale_x_log10()+
  geom_smooth(method ="lm",size=1)

gapminder %>% 
  ggplot(aes(x=gdpPercap,y=lifeExp))+
  geom_point(alpha=0.5)+
  scale_x_log10()+
  geom_smooth(method ="lm",size=2)

gapminder %>% 
  ggplot(aes(x=gdpPercap,y=lifeExp))+
  geom_point(mapping=aes(colour=continent),alpha=0.5)+
  scale_x_log10()+
  geom_smooth(mapping=aes(colour=continent),method ="lm",size=2)+
  geom_smooth() #no colour by continent

# Scales
gapminder %>% 
  ggplot(aes(x=year,y=lifeExp,colour=continent))+
  geom_point()+
  scale_colour_manual(values = c("red","green","blue","purple","black"))

gapminder %>% 
  ggplot(aes(x=year,y=lifeExp,colour=continent))+
  geom_point()+
  geom_smooth()

gapminder %>% 
  ggplot(aes(x=year,y=lifeExp,colour=continent))+
  geom_point()+
  scale_colour_manual(values = c("violet","green","red","green","black"))

#separating plots
a_countries <- filter(gapminder,str_starts(country,"A"))
ggplot(a_countries,aes(x=year,y=lifeExp,colour=continent,group=country))+
  geom_line()+
facet_wrap(~country)

#Challenge 12
gapminder %>% 
ggplot(aes(x=gdpPercap, y=lifeExp, colour=continent, size = pop))+ 
  geom_point() +
  scale_x_log10()+
  facet_wrap(~year)


  



