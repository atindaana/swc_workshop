download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv", destfile = "gapminder-FiveYearData.csv")
gapminder <- read.csv("gapminder-FiveYearData.csv")
#head
#ncol
#nrow
#summary
#view
is_africa <- gapminder@continent == "Africa"instal
is_2007 <- gapfinder$year == 2007
africa_2007 <- gapminder [is_2007 & is_africa, c("country","lifeExp")]
#how to make plots with ggplot2
ggplot(data=gapminder, aes(x=gdpPercap, y=lifeExp))+geom_point()
ggplot(data=gapminder, aes(x=year, y=lifeExp))+geom_point()
#plotting with points on top of the lines
ggplot(data=gapminder, aes(x=year, y=lifeExp, by = country, color = continent))+geom_line()+geom_point()
#to get the size to be as big as the gdpPercap
ggplot(data=gapminder, aes(x=year, y=lifeExp, size =gdpPercap, by = country, color = continent))+geom_line()+geom_point()
#to add line color line
ggplot(data=gapminder, aes(x=year, y=lifeExp, size =gdpPercap, by = country, color = continent))+geom_line(color="black")+geom_point(aes(size=gdpPercap))+
  facet_grid(.~continent)
#note from carpentary workshop modified but code remains the same
#facet_grid feater add to catalog the plot defined by continent
ggsave(filename = "year_vs_lifeexp_percont.png", width = 5, height = 4, units = "in")
