---
title: "R-Markdown-and-Leaflet"
author: "GM"
date: "August 10, 2020"
output: 
  html_document:
    keep_md: true
---



# Vilnius is capital of Lithuania. Rotuse is City Hall.


```r
library(leaflet)
```

```
## Warning: package 'leaflet' was built under R version 4.0.2
```

```r
df<-data.frame(lat=54.678214,lng=25.286930         )
map<-leaflet(df) %>% addTiles() %>% addMarkers(lat=54.678214,lng=25.286930 , popup = "Rotuse - City Hall")
map
```

<!--html_preserve--><div id="htmlwidget-50a91111081aefb6d929" style="width:672px;height:480px;" class="leaflet html-widget"></div>
<script type="application/json" data-for="htmlwidget-50a91111081aefb6d929">{"x":{"options":{"crs":{"crsClass":"L.CRS.EPSG3857","code":null,"proj4def":null,"projectedBounds":null,"options":{}}},"calls":[{"method":"addTiles","args":["//{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",null,null,{"minZoom":0,"maxZoom":18,"tileSize":256,"subdomains":"abc","errorTileUrl":"","tms":false,"noWrap":false,"zoomOffset":0,"zoomReverse":false,"opacity":1,"zIndex":1,"detectRetina":false,"attribution":"&copy; <a href=\"http://openstreetmap.org\">OpenStreetMap<\/a> contributors, <a href=\"http://creativecommons.org/licenses/by-sa/2.0/\">CC-BY-SA<\/a>"}]},{"method":"addMarkers","args":[54.678214,25.28693,null,null,null,{"interactive":true,"draggable":false,"keyboard":true,"title":"","alt":"","zIndexOffset":0,"opacity":1,"riseOnHover":false,"riseOffset":250},"Rotuse - City Hall",null,null,null,null,{"interactive":false,"permanent":false,"direction":"auto","opacity":1,"offset":[0,0],"textsize":"10px","textOnly":false,"className":"","sticky":true},null]}],"limits":{"lat":[54.678214,54.678214],"lng":[25.28693,25.28693]}},"evals":[],"jsHooks":[]}</script><!--/html_preserve-->

