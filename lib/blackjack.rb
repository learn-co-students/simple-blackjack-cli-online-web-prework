def welcome
  puts("Welcome to the Blackjack Table")
end

def deal_card
  rand(1..11)
end

def display_card_total(numero)
  puts("Your cards add up to #{numero}")
end

def prompt_user
  puts("Type 'h' to hit or 's' to stay")
end

def get_user_input
 gets.chomp
end

def end_game(ranran)
  puts("Sorry, you hit #{ranran}. Thanks for playing!")
end

def initial_round
  n = deal_card
  m = deal_card
  initial = n + m
  display_card_total(initial)
  return initial
end

def hit? (num)
  prompt_user
  decision = get_user_input
  if decision == "h"
    num += deal_card
  else if get_user_input == "s"
    num 
  else
    invalid_command
  end
end

def invalid_command
  puts ("Please enter a valid command")
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
