print "How many seconds in a year, please type 1 years: "
year = gets 
sec = year.to_f * (60*60*24*365)
print "One Year have ", "%.0f" % sec
puts " seconds."