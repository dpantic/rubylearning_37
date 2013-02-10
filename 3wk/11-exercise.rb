collection = [12, 23, 456, 123, 4579].each do |num|
  print "#{ num } \tis"
  num.even? ? puts(" even") :puts(" odd")
end

