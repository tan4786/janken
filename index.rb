puts "rock,paper,scissors..."

def janken
  puts "[0]rock\n[1]scissors\n[2]paper"

  player_hand = gets.to_i
  program_hand = rand(3)

  jankens = ["rock", "scissors","paper"]
  puts "-------
  your hand:#{jankens[player_hand]},
  other hand:#{jankens[program_hand]}
-------"

  if player_hand == program_hand
    puts "again"
    return true
    
  elsif(player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
    puts "facing over there..."
    puts "[0]up\n[1]down\n[2]left\n[3]right"
    
    player_look = gets.to_i
    program_look = rand(3)
    
    look = ["up","down","left","right"]
    puts "hoi!
-------
your look:#{look[player_look]},
other look:#{look[program_look]}
-------"
    
     if player_look == program_look
       puts "you win"
    
     else
       return true
    end
    
  else
    puts "facing over there..."
    puts "[0]up\n[1]down\n[2]left\n[3]right"
    
    player_look = gets.to_i
    program_look = rand(3)
    
    look = ["up","down","left","right"]
    puts "hoi!
-------
your look:#{look[player_look]},
other look:#{look[program_look]}
-------"
    
     if player_look == program_look
       puts "you lose"
    
     else
       return true
    end
    return false
  end
end



next_game = true

while next_game
  next_game = janken
end
