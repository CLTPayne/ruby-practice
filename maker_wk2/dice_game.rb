#Version 1 - Regular game - I win if I roll highest
dice1 = rand(1..6)
dice2 = rand(1..6)

if dice1 > dice2
  puts 'I win'
else
  puts 'I lose'
end

#Version 2 - Both players roll two dice each
player1 = rand(1..6) + rand(1..6)
player2 = rand(1..6) + rand(1..6)

if player1 > player2
  puts 'I win'
else
  puts 'I lose'
end

#Version 3 - Two rounds now wins the game (still with two dice each)
player1 = rand(1..6) + rand(1..6)
player2 = rand(1..6) + rand(1..6)

while true do
  player1
  player2
  player1
  player2

 if player1 > player2 && player1 > player2
    puts 'Player 1 wins'
    break
  else  player2 > player1 && player2 > player1
   puts 'Player 2 wins'
   break
 end
end
