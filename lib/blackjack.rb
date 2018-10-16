require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(n)
  total = "Your cards add up to #{n}"
  puts total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  x = 0
  
  2.times do 
    x += deal_card
  end
   display_card_total(x)
  return x
end

def hit?(card_total)
  prompt_user
  x  = get_user_input
 
  if x == "s"
    return card_total

  elsif x == "h"
     card_total += deal_card
    
  else invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
  return prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  first_round = initial_round
  until first_round >= 21
    first_round = hit?(first_round)
    display_card_total(first_round)
  end
  end_game(first_round)
end
