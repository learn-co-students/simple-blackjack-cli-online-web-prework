def welcome
 puts "Welcome to the Blackjack Table"
end

def deal_card
return  rand(1..11)
end

def display_card_total(number)
 puts "Your cards add up to #{card total}".
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.strip
end

def end_game(number)
  "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  display_card_total = deal_card
  display_card_total += deal_card
  puts "#{disply_card_total}"
  return 
end

def hit?(number)
  prompt_user
  user_input = get_user_input
  if user_input == "h"
    display_card_total + deal_card
end

def invalid_command
  
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
