def play_game(target = 10, verbose = true)
  position = 0
  turns = 0

  while position < target
    turns += 1
    roll = rand(1..6)

    case roll
    when 5, 6
      position += 1
      msg = "monte"
    when 1
      position -= 1 if position > 0
      msg = "descend"
    else
      msg = "reste"
    end

    puts "Tour #{turns} (dé: #{roll}) → tu #{msg} à la marche #{position}." if verbose
  end

  puts "YOU WIN! #{target} en #{turns} tours !" if verbose
  turns
end

def average_finish_time(n = 100, target = 10)
  total = 0
  n.times { total += play_game(target, false) }
  total.to_f / n
end

puts "Bienvenue dans le jeu de l'escalier !"
play_game
puts "\nCalcul de la moyenne sur 1000 parties..."
puts "Moyenne : #{average_finish_time(1000).round(2)} tours."
