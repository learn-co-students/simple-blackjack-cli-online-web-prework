def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(x)
  # code #display_card_total here
  puts "Your cards add up to #{x}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets
end

def end_game(x)
  # code #end_game here
  puts "Sorry, you hit #{x}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  init_sum = deal_card + deal_card
  display_card_total(init_sum)
  init_sum
end

def hit?(x)
# code hit? here
#first prompt
  prompt_user
  answer = get_user_input
  until answer== "s" || "h"
    prompt_user
    answer = get_user_input
  end 
#
  if answer == "s"
    x
  else
    x + deal_card
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total=initial_round
  until total>21
    total = hit?(total)
    display_card_total(total)
  end
end_game(total)
end 
    
