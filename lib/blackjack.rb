def welcome
  puts "Welcome to the Blackjack Table" # code #welcome here
end

def deal_card
  1 + rand(11) # code #deal_card here
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}" # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay" # code #prompt_user here
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  if card_total > 21
    puts "Sorry, you hit #{card_total}. Thanks for playing!" # code #end_game here
  else
    prompt_user
  end
end

def initial_round
  first_card = deal_card()
  second_card = deal_card()
  card_total = first_card + second_card
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  prompt_user()
  if get_user_input() == "h"
    hit_card = deal_card()
    new_card_total = card_total + hit_card
    new_card_total
  else
    card_total
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome()
  card_total = 0
  initial_card_total = initial_round()
  until card_total > 21 do
    hit_card_total = hit?(initial_card_total)
    display_card_total(hit_card_total)
    card_total = hit_card_total
  end
  end_game(card_total)
end
