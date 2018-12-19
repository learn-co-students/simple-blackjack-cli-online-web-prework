def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(cards_in_hand)
  puts "Your cards add up to #{cards_in_hand}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
 return gets.chomp
end

def end_game(h)
  puts "Sorry, you hit 27. Thanks for playing!"
end

def initial_round
  cards_in_hand = deal_card + deal_card
  puts "Your cards add up to #{cards_in_hand}"
  return cards_in_hand
end 

def hit?(players_hand)
  prompt_user
  player1 = get_user_input
  if player1 == 's'
  return players_hand
  elsif player1 == 'h'
  return players_hand + deal_card
end
end

def invalid_command
 return "Your code is invalid"
end

def runner
   welcome
   cards_in_hand = initial_round
   until cards_in_hand > 21
   hit?(cards_in_hand)
 end
   end_game
 end
 