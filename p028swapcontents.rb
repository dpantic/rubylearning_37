fileA = File.read(ARGV[0])
fileB = File.read(ARGV[0])
f1 = File.new("#{ARGV[0]}", "w")
f1.puts fileB
f1.close
f2 = File.new("#{ARGV[1]}", "w")
f2.puts fileA
f2.close