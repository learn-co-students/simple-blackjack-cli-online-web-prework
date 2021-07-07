require 'pry'
def welcome
 puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(x)
  puts "Your cards add up to #{x}"
end

def prompt_user
 puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(x)
  puts "Sorry, you hit #{x}. Thanks for playing!"
end

def initial_round
  card = deal_card
  card = card + deal_card
  display_card_total(card)
  card
end

def hit?(x)
  cardtotal = x
  prompt_user
  input = get_user_input
  if input != "s" && input != "h"
    invalid_command
    prompt_user
    elsif input == "h"
    cardtotal = cardtotal + deal_card
  end
  cardtotal
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome

card = hit?(initial_round)
until card > 21
display_card_total(card)
card = hit?(card)
end
display_card_total(card)
output = end_game(card)
output
end
    
#binding.pry