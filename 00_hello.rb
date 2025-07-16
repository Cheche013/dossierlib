def say_hello
 puts "hello"
end
say_hello

def say_hello(first_name)
  puts "Bonjour, #{first_name} !"
end

puts "Quel est ton prénom ?"
first_name = gets.chomp

say_hello(first_name)

def ask_first_name
  puts "Quel est ton prénom ?"
  first_name = gets.chomp
  return first_name  
end

def say_hello(first_name)
  puts "Bonjour, #{first_name} !"
end

first_name = ask_first_name
say_hello(first_name)

