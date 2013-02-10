#filename: unpredictable.rb

# encoding = utf-8
require 'benchmark'
include Benchmark
n = 100000

class UnpredictableString < String
  def initialize(string)
    @string = super(string)
  end
  def scramble
    @string.each_char.to_a.shuffle.join
  end
  def scramble2
    @string.split(//).shuffle.join
  end
end
if __FILE__ == $0
  string = UnpredictableString.new("It was a dark and stormy night.")
  time = Benchmark.bmbm do |x|
    x.report("each_char: ") {for i in 1..n ; string.scramble ; end }
    x.report("split(//): ") {for i in 1..n ; string.scramble2 ; end}
  end
  time
end