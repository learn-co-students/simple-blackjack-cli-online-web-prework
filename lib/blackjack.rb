def welcome
  puts "Welcome to the Blackjack Table" # code #welcome here
end

def deal_card
  1 + rand(11) # code #deal_card here
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}" # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay" # code #prompt_user here
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  if card_total > 21
    puts "Sorry, you hit #{card_total}. Thanks for playing!" # code #end_game here
  else
    prompt_user
end

def initial_round
  display_card_total(deal_card() + deal_card()) # code #initial_round here
end

def hit?(card_total)
  prompt_user
  get_user_input
  if get_user_input = "h"
    display_card_total(card_total + deal_card)
  else # code hit? here
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
##  welcome
##  initial_round
##  hit?
##  display_card_total() # code runner here
end
