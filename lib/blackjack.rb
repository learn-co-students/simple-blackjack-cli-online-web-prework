def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  #
  rand(1..11)
end

def display_card_total (card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game (final_total)
  # code #end_game here
  puts "Sorry, you hit #{final_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  initial_total = deal_card + deal_card
  display_card_total(initial_total)
  initial_total
end

def hit?(current_card_total)
  prompt_user
  input = get_user_input
  if input =="s"
    current_card_total
  elsif input == "h"
    current_card_total = current_card_total + deal_card
  else
    invalid_command
end
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  number = initial_round
  while number <= 21
    number = hit? (number)
    display_card_total (number)
  end
  end_game (number)

end
    
