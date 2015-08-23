require(gdata)

# Reading Excel files by "gdata" package is very slow with large files.
# A file with a 5000x20 table should be considered big (it takes about 20s)

start.time <- Sys.time()

# Reading the 1st Excel worksheet
df1 = read.xls ("/home/data/coursera/...and more/R sources/data/XDebug.xlsx", sheet = 1, header = TRUE)
end1.time <- Sys.time()

# Reading the 2nd Excel worksheet
df2 = read.xls ("/home/data/coursera/...and more/R sources/data/XDebug.xlsx", sheet = 2, header = TRUE)
end2.time <- Sys.time()

time1.taken <- end1.time - start.time
time1.taken
time2.taken <- end2.time - start.time
time2.taken