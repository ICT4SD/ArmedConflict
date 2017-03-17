dataFrame <- read.csv(file.choose(), header = TRUE, sep = ",")
View(dataFrame)
dataFrame1 <-dataFrame[which(dataFrame$region =='Middle East'),]
dataFrame2 <- subset(dataFrame1, country=="Iraq" | country=="Syria" | country=="Yemen", select = c(id:gwab))
library(ggmap)
mapMiddleEast <- get_map(location = c(lon = mean(dataFrame2$longitude), lat = mean(dataFrame2$latitude)), zoom = 6, scale = 1)
mapPoints <- ggmap(mapMiddleEast) + geom_point(data = dataFrame2, aes(x = dataFrame2$longitude, y = dataFrame2$latitude, size = sqrt(dataFrame2$best_est)), alpha = 0.4)
mapPointsLegend <- mapPoints +scale_size_area(breaks = sqrt(c(1, 500, 1000, 2500, 5000, 7500)), labels = c(1, 500, 1000, 2500, 5000, 7500), name = "Best estimated casualties")
mapPointsLegend

#plotly
g <- list(
  scope = 'Asia',
  projection = list(type = 'albers asia'), 
  showland = TRUE,
  landcolor = toRGB("gray95"),
  subunitcolor = toRGB("gray85"),
  countrycolor = toRGB("gray85"),
  countrywidth = 0.5,
  subunitwidth = 0.5 
  )
p <- plot_geo(dataFrame1, lat= ~latitude, lon =~longitude)%>%
  add_markers(
    text = ~paste(country, where_description, paste("Casualties: ", best_est), sep = "<br />"),
    color = ~high_est, symbol = I("circle"), size = I(4), hoverinfo = "text" ) %>%
  colorbar(title = "Casualties<br /> in conflicts") %>%
  layout( title = 'Conflict zones in Middle East<br />(Hover for conflict zones)', geo = g
          )
chart_link = plotly_POST(p, filename="armedConflict")


  
