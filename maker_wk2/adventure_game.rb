=begin
Specification:
The user starts by facing forward. They can move right, left, or forward. If they move right, they die (there's a goblin). If they move left, they die (there's a werewolf). If they move forward, they live. They have to do this twice to win.

Requirements (mine):
1. User is asked for a arrow key to move - left, right or up
2. The user presses an arrow key
3. If the user presses the right arrow key they receive a message saying they die and game ends
4. If the user presses the left arrow key they receive a message saying they die and the game ends
5. If they user presses the up arrow key they move forward and user is returned to step 2 for another go. This is a second loop.
6. If user presses up arrow a second time they win.

Requirements (Tutorial version):

The user is told they're facing forward and can type 'forward', 'left', or 'right'.
If the user enters 'right', they die (goblin).
If the user enters 'left', they die (werewolf).
If the user enters 'forward', they're told they live, and can move again.
If the user enters anything other than 'right', 'left', or 'forward', they just get the message from 1 again.
If the user enters 'right', they die (goblin).
If the user enters 'left', they die (werewolf).
If the user enters 'forward', they're told they won and the game exits.
If the user enters anything other than 'right', 'left', or 'forward', they just get the message from 4 again.
=end

#puts "You're facing forward. Choose 'forward', 'left' or 'right'."
move_number = 1

while true do
  puts "You're facing forward. Choose 'forward', 'left' or 'right'."

  user_input = gets.chomp

  if user_input == "right"
    puts "You were killed by a goblin!"
    break
  elsif user_input == "left"
    puts "You were killed by a werewolf!"
    break
  elsif user_input == "forward"
    if move_number == 2
      puts "You win!"
      break
    end
    move_number += 1
  end
end
