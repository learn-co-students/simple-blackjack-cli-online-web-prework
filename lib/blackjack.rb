def welcome
  # code #welcome here
puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
# code #deal_card here
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user

puts  "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
puts  "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  display_card_total(sum)

  sum
end

def hit?(current_card_total)
  # code hit? here
  prompt_user
  input = get_user_input
  current_card_total
if input ==  "h"
  deal_card + current_card_total
elsif input == "s"
  current_card_total
end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
card_total = initial_round
until card_total > 21
  card_total = hit?(card_total)
  display_card_total(card_total)

 end
 end_game(card_total)
end
