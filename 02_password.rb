
def signup
  puts "Définis ton mot de passe :"
  print "> "
  password = gets.chomp
  puts "Mot de passe enregistré."
  password
end


def login(saved_password)
  puts "Entre ton mot de passe pour te connecter :"
  print "> "
  attempt = gets.chomp

  until attempt == saved_password
    puts "Mot de passe incorrect, essaie encore."
    print "> "
    attempt = gets.chomp
  end

  puts "Connexion réussie !"
end


def welcome_screen
  puts " Welcome to the multiverse"
  puts "THE BIG SECRET OF THE WORLD IS....."
  puts " Are you ready ???"
  puts "Zone 51's just a private thalasso for Trump"
  puts " Now.. You will die for this secret"
  puts "................................."
  puts " Funny yeah ? Lilian give me a rocket please "
end

def perform
  password = signup        
  login(password)          
  welcome_screen          
end

perform
