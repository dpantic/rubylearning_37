=begin
  modify text analyzer to use logging feature
=end


require 'logger'
class File_analyzer
# I removed the attr_reader in favor of a more dynamic solution, see the method_missing.
# what are the drawbacks to doing this? What are the advantages?
  def initialize(file='/Users/deki/projects/RL/6wk/text.txt')
    @lines = File.readlines(file)
    $LOG.info("Reading file #{file}")
    @statistics = Hash.new
    file_stats
    $LOG.info("Statistics collected for #{file}")
  end
  
  
  def file_stats
    @statistics[:line_count] = @lines.length # => 121
    @statistics[:text] = @lines.join
    @statistics[:character_count] = @statistics[:text].length # => 6387
    @statistics[:character_count_without_spaces] = @statistics[:text].gsub(/\s+/, '').length # => 5055
    @statistics[:word_count] = @statistics[:text].split(" ").length # => 1093
    @statistics[:sentence_count] = @statistics[:text].split(/\.|\?|!/).length # => 44
    @statistics[:paragraph_count] = @statistics[:text].split(/\n\n/).length # => 1
    @statistics[:avg_num_words_per_sentence] = word_count / sentence_count  # => 24
    @statistics[:avg_num_sentences_per_paragraph] = sentence_count / paragraph_count # => 44
  end
  def report
    # insert code here to give facility to customizable reports
  end
# This is a partial solution.  A good Ruby Citizen would also take care of responds_to? functionality
# Time to look at that, and perhaps also at responds_to_missing as well.
  def method_missing(method, *args)
    $LOG.info "#{method} called returning #{@statistics[method.to_sym].inspect}"
    @statistics[method.to_sym]
  rescue NoMethodError
    $LOG.info "#{method}"
    super
  end
end
$LOG = Logger.new('file_analyzer.log')
file = File_analyzer.new(*ARGV)
puts "Character count: #{file.character_count}"
puts "Character count (excluding spaces): #{file.character_count_without_spaces}"
puts "Line count: #{file.line_count}"
puts "Word count: #{file.word_count}"
puts "Sentence count: #{file.sentence_count}"
puts "Paragraph count: #{file.paragraph_count}"
puts "Average number of words per sentence: #{file.avg_num_words_per_sentence}"
puts "Average number of sentences per paragraph: #{file.avg_num_sentences_per_paragraph}"
puts file.eat_monkeys(1, 2, 'or', 3)