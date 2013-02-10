=begin
doctest: Setup years array
>> leap_years = [2000, 2400,1600]
>> non_leap_years = [1901, 1902, 2001, 1998]
>> non_leap_centuries = [1900, 2100, 1500, 100]
doctest: leap years
>> leap_years.all? {|year| leap_year?(year) }
=> true
doctest: non-leap years
>> non_leap_years.none? {|year| leap_year?(year) }
=> true
=end
#def leap_year? year
#  year % 100 ==0 && year % 400 == 0 || year % 4 == 0 && year % 100 != 0
#end
#begin
#  [1900,2000,2004,2005].each do | year |
#    puts leap_year? year
#  end
#end if __FILE__ == $0

require 'date'
def leap_year?(year)
  Date.new(year).leap?
end
[2000, 1900, 2400, 1901, 1902, 2001, 1998, 2100, 1500, 100].each do |year|
  print year, (leap_year? year) ? " is" : " is not", " a leap year.\n"
end
