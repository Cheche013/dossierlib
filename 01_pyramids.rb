def full_pyramid(height)
  1.upto(height) do |level|
    spaces = height - level          
    bricks = 2 * level - 1           
    puts (" " * spaces) + ("#" * bricks)
  end
end

puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print "> "
height = gets.chomp.to_i

full_pyramid(height)


def wtf_pyramid(height)
  1.upto(height) do |level|
    spaces = height - level
    bricks = 2 * level - 1
    puts (" " * spaces) + ("#" * bricks)
  end

  (height - 1).downto(1) do |level|
    spaces = height - level
    bricks = 2 * level - 1
    puts (" " * spaces) + ("#" * bricks)
  end
end

puts "Salut ! Combien d'étages veux-tu pour ton losange ?"
print "> "
height = gets.chomp.to_i

wtf_pyramid(height)

