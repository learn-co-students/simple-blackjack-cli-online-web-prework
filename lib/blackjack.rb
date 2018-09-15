def welcome
  puts "Welcome to the Blackjack Table"
end

  # code #welcome here

def deal_card
  return (rand() * 11. to_i)
end

  # code #deal_card here

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

  # code #display_card_total here

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

  # code #prompt_user here

def get_user_input
  gets.chomp
end

  # code #get_user_input here

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

  # code #end_game here

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  return card_total
end

  # code #initial_round here

def hit?(card_total)
  prompt_user
  input = get_user_input
  if input == "h"
    card_total += deal_card
  elsif input == "s"
    card_total
  else 
    invalid_command
  end
end

  # code hit? here

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

  # code invalid_command here

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21
    total = hit?(total) 
    display_card_total(total)
  end
  end_game(total)
  return total
end

  # code runner here	  welcome