def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = return rand(1..11)   # reuse this method by setting to a                             variable
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(card_total)
  "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
    x = deal_card
    y = deal_card
    card_total = x + y
    puts display_card_total(card_total)
    return display_card_total(card_total)
end


def hit?(card_total)
  puts prompt_user
  get_user_input = gets.chomp
  if get_user_input == "h"
    card_total += deal_card
    return new_card_total
  elsif get_user_input == "s"
    card_total 
   else
     invalid_command
end

def invalid_command
  if get_user_input != "h" || get_user_input != "s"
    puts "Please enter a valid command"
  end
  prompt_user
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sleep 1
  card_total = inital_round
  until card_total > 21
    card_total = hit?(card_total)
    display card_total(card_total)
  end
  end_game
end

  