#My version
def shout
  print "Hi, what's your name? "
  string = gets.chomp
  string.downcase
  if string[0] == "s"
    puts string.upcase
  else
    return "Hi, #{string.capitalize}"
  end
end

#Tutorial's version 1
puts String.new("Welcome user")
user = gets.chomp
if user.chr == String.new("S")
  puts user.upcase
else puts String.new("Hi, ") + user
end

#Tutorial's version 2
puts "Welcome user"
user = gets.chomp
if user.chr == "S"
  puts user.upcase
else
  puts "Hi, " + user
end

#Tutorial's version 3
puts "Welcome user"
user = gets.chomp

return puts user.upcase if user.chr == "S"
return puts "Hi, " + user

#Tutorial's version 4
puts "Welcome user"
user = gets.chomp

return puts user.upcase if user.chr == "S"
return puts "Hi, #{user}"
