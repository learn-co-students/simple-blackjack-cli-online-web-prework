def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
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
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(current_card_total)
  prompt_user
  user_input = get_user_input
  if user_input == "S" || user_input == "s"
    return current_card_total
  elsif user_input == "H" || user_input == "h"
    return current_card_total + deal_card
  elsif user_input != "s" || user_input != "h"
    invalid_command
    prompt_user
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  card_total = 0
  welcome
  results_of_initial_round = initial_round
  until card_total > 21
  hit?(results_of_initial_round)
end
end_game(card_total)
end
