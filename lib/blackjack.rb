def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(Integer)
  Integer = deal_card + deal_card
  puts "Your cards add up to #{Integer}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets 
end

def end_game(i)
  puts "Sorry, you hit #{i}. Thanks for playing!"
end

def initial_round
  deal_card + deal_card
  display_card_total(Integer)
end

def hit?(Integer)
  prompt_user
  get_user_input
  if get_user_input == "h"
    deal_card
  elsif get_user_input != "s" or "h"
    invalid_command
  end 
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
