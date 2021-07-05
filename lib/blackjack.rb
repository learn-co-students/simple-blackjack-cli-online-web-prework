def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end


def deal_card
 return rand (1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  answer = gets.chomp
  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  card_one = deal_card
  card_two = deal_card
  card_total = card_one + card_two
  display_card_total(card_total)
  return card_total
  # code #initial_round here
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
  get_user_input
end


def hit?(card_total)
prompt_user
answer = get_user_input
if answer == "h"
 return card_total += deal_card
elsif answer == "s"
return card_total
else 
  return invalid_command
  end  
return card_total
end



#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome #introduce the game
  sleep 0.75
  card_total = initial_round 
  until card_total > 21 
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
