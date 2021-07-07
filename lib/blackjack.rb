def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
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
  method=gets.chomp
end

def end_game(card_total)
  # code #end_game here
  if card_total>21
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
  end
end

def initial_round
  # code #initial_round here
  new_total = deal_card + deal_card
  display_card_total(new_total)
  return new_total
end

def hit?(current_total)
  # code hit? here
  prompt_user
  user_input = get_user_input
  if user_input == "h"
    current_total += deal_card
  elsif user_input == "s"
    return current_total
  else invalid_command prompt_user
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
  # code runner here
  welcome
  cards=initial_round
  until cards>21 do
    cards=hit?(cards)
    display_card_total(cards)
  end
end_game(cards)
end
