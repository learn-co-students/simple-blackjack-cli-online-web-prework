def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card(rand = 1..11)
  1+ rand(11)
end

def display_card_total(total)
 puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  return total
"Your cards add up to #{total}"
end

def hit?(total)
  prompt_user
 input = get_user_input
  if input == "s"
   total
  elsif input == "h"
  total += deal_card
end
end

def invalid_command 
  if get_user_input == "s" || get_user_input == "h"
  puts "Please enter a valid command"
 prompt_user  
end
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
 welcome
 total = initial_round
 until total > 21
 total = hit?(total)
 display_card_total(total)
 end
 end_game(total)
end
