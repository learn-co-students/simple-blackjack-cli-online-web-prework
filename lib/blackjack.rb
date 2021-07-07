def welcome
  # code #welcome here
   puts "Welcome to the Blackjack Table"
end

def deal_card(card = 1..11)
  # code #deal_card here
   rand(card)
end

def display_card_total(card)
  # code #display_card_total here
  puts "Your cards add up to #{card}"
end

def prompt_user
  # code #prompt_user here
   puts "Type 'h' to hit or 's' to stay"
end

def get_user_input(a = gets.chomp)
  # code #get_user_input here
  a
end

def end_game(x)
  # code #end_game here
  puts "Sorry, you hit #{x}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card = deal_card + deal_card
  display_card_total(card)
 card
end

def hit?(x)
  # code hit? here
  prompt_user
  case get_user_input
  when "s"
    x
  when "h"
    x += deal_card
  when others
    invalid_command
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
  total = initial_round
  until total > 21
    total = hit?(total)
  display_card_total(total)
  end
  end_game(total)
end
    
