print "Convert sec to years, pleae insert seconds:"
sec = gets 
years = sec.to_f / (60*60*24*365)
print "You are: ", "%.2f" % years
puts " Years old."
