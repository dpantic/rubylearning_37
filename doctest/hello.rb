=begin
doctest: I can greet by saying hello
>> hello
=> "Hello World!"
doctest: I can greet someone personally
>> hello "Dejan"
=> "Hello Dejan!"
doctest: I can ask if someone is there
>> hello("Victor", "?")
=> "Hello Victor?" 
=end

def hello(name="World", punctuation='!')

  "Hello #{name}#{punctuation}"
end
