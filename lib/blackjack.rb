def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand 1..11
end

def display_card_total(card_total)
  # code #display_card_total here
 puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  puts "Your cards add up to #{card_total}"
end

def end_game
  # code #end_game here
  "Sorry you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  2.times do
  puts deal_card
  display_card_total
  puts sum 
  return sum
  
end

def hit?
  # code hit? here
  if prompt_user
  return get_user_input
else
  invalid_command
  
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome 
  display_card_total
  prompt_user
  get_user_input
  end_game
  initial_round
  hit? 
  invalid_command
end
