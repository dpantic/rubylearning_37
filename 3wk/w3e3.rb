#original_directory =  Dir.pwd
#puts "You are in the #{original_directory} directory"
#Dir.mkdir("tmp")
#puts "You just created a new tmp directory"
#Dir.chdir("tmp")
#temp = Dir.pwd
#puts "You are now in the #{temp} directory."
#Dir.chdir(original_directory)
#puts "You are in the #{original_directory} directory"
#Dir.delete(temp)
#puts "You just deleted the tmp directory"

#def filetype(item)
#  File.directory?(item) ? "D" : "F"
#end
#def dir
#  puts "+%s" % Dir.pwd
#    Dir.entries(".").each do |entry|
#    filename = entry.length > 17 ? (entry[0,10] + "...") : entry
#    puts "|-- %-20s %s" % [filename, filetype(entry)]
#  end
#end
#original_dir = Dir.pwd
#new_dir = "tmp"
#puts
#dir
#puts
#puts "Making tmp"
#Dir.mkdir(new_dir)
#dir
#puts
#puts "Changing into tmp"
#Dir.chdir(new_dir)
#dir
#puts
#puts "Returning to original Dir: %s" % original_dir
#Dir.chdir(original_dir)
#dir
#puts
#puts 'Removing "tmp" Dir'
#Dir.delete(new_dir)
#dir

#Display your current working directory.
current_directory = Dir.pwd
puts "My current working directory is: #{current_directory}"
 
#Create a new directory tmp under your working directory.
new_directory = "#{Dir.pwd + "/tmp/"}"
Dir.mkdir(new_directory)
 
#Change your working directory to tmp
Dir.chdir(new_directory)
 
#Display your current working directory.
puts "My current working directory is: #{Dir.pwd}"
 
#Go back to your original directory.
Dir.chdir(current_directory)
puts "My current working directory is: #{Dir.pwd}"
 
#Delete the tmp directory.
Dir.rmdir(new_directory)