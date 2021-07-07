
def welcome 
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand 1...11
end

def display_card_total(sum)
puts "Your cards add up to #{sum}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.strip
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
 display_card_total(sum)
 sum 
end

def hit? (sum)
  prompt_user
  input = get_user_input
  until input == "s" || input == "h"
    prompt_user
    invalid_command
    input = get_user_input
  end
  if input == 'h'
    sum += deal_card
    
  elsif input == "s"
     sum
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner 
  welcome 
  sum = initial_round
  until sum >21  
    sum = hit?(sum)
    display_card_total(sum)
  end
  end_game(sum)
end
