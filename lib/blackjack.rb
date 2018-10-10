def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}".
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  deal_card + deal_card = card_total
  puts display_card_total
end

def hit?(card_total)
  # code hit? here
  prompt_user
  get_user_input
  if get_user_input == "s"
  elsif get_user_input == "h"
    deal_card
    puts display_card_total + deal_card
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
  initial_round
  card_total = 0
  until card_total == 21
  hit?
end
end_game
end
