def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand 1..11
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
  
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
   return gets.chomp
end

def end_game(card_total)
 puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
 sum = 0
 sum = deal_card + deal_card
 display_card_total(sum)
 return sum
end

def hit?(number)
  
  prompt_user
  get_user_input
  if get_user_input == 'h'
    number += deal_card
  elsif get_user_input == 's'
    break
  else
    invalid_command
    prompt_user
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # welcome
  # initial_round
  # hit?(number)
  # end_game(card_total)
end
    
