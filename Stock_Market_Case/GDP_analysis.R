rm(list=ls(all=T)) # this just removes everything from memory

require(fredr) # Did you install this package?
require(xts)

#SET KEY
#I store my key in a file which is in my private folder
#Please do not use the link to my file, use your file
path.to.private.key<-'/Users/RakanHoji/Desktop/College Projects/fred.api'

fredr::fredr_set_key(
  # either replace the line below with your key (in quotes) or make sure you have the correct path set
  readChar(path.to.private.key,file.info(path.to.private.key)$size)
)

#Check https://fred.stlouisfed.org/ for symbols of over 0.8M time series
#IMPORTANT: make sure you check the format and available range
#Quarterly GDP  (start one period earlier)

id <- list("CPALTT01USM657N", "BBKMGDP", "UNRATE", "GS10", "UMCSENT", "CES4348400001", 
           "W823RC1", "PCE", "USGSEC", "BUSLOANS", "PERMIT", "HSN1F", "DGORDER", 
           "BUSINV", "ALTSALES", "UEMP27OV", "UEMPMED", "CE16OV", "EMRATIO", 
           "AHEMAN", "AWHMAN", "PI", "PSAVERT", "MORTGAGE30US", "WM2NS", "IMPCH", 
           "IMPJP", "IMPMX", "IMPCA", "IMPGE", "IMPUK", "EXPCH", "EXPJP", "CNP16OV",
           "EXPMX", "EXPCA", "EXPGE", "EXPUK", "BOPGTB", "BOPSTB", "CPIENGSL"
)


raw_data <- fredr(
  series_id = as.character(id[1]),
  observation_start = as.Date('1992-02-01'),
  frequency = "m"
)
fred.df<-as.data.frame(raw_data[,c(1,3)])
names(fred.df)[names(fred.df) == "value"] <- id[1]

for (i in 2:length(id)) {
  raw_data <- fredr(
    series_id = as.character(id[i]),
    observation_start = as.Date('1992-02-01'),
    frequency = "m"
  )
  raw_data<-as.data.frame(raw_data[,c(1,3)])
  names(raw_data)[names(raw_data) == "value"] <- id[i]
  fred.df <- merge(fred.df, raw_data, how="left",by="date",all.x = TRUE)
}

# Writing data to a CSV file
write.csv(fred.df, "'/Users/RakanHoji/Desktop/College Projects'")
