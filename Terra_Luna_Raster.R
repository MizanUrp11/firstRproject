
indir <- 'C:\\Users\\mizan\\Documents\\myFirstRproject'

datadir <- file.path(indir, "workdir")
rawdir <- file.path(datadir, "raw")
vidir <- file.path(datadir, "vi")
dir.create(rawdir, recursive = TRUE, showWarnings = FALSE)
dir.create(vidir, recursive = TRUE, showWarnings = FALSE)

library(raster)
library(terra)
library(luna)

v <- getData("GADM", country = 'BGD', level = 1)
aoi <- v[v$NAME_1 == 'Dhaka',]

start <- "2016/01/01"
end <- "2016/01/2"

#prod <- getProducts()
#View(prod)





fmod <- getModis(product = "MOD09A1", start, end, aoi, download = TRUE, path = rawdir)
length(fmod)
#fmod
r1 <- rast(fmod[2])

plotRGB(r1,r = 1, g = 4, b = 3, stretch = 'hist')

v <- getData("GADM", country = 'BGD', level = 2)
v <- spTransform(v,crs(r1))
v <- vect(v)

r2 <- crop(r1,v)
r2 <- mask(r2,v)
plotRGB(r2, r=1, g = 4, b = 3, stretch = 'hist')
ndvi <- (r2[[2]] - r2[[1]]) / (r2[[2]] + r2[[1]])
ndvi <- clamp(ndvi,-1,1)
plot(ndvi)




#product <- "Landsat_8_OLI_TIRS_C1"
#productInfo(product)

#fland <- getLandsat(product = product, start, end, aoi, download = FALSE, path = rawdir)
#length(fland)








