def welcome
  #prints a welcome message to screen
  puts "Welcome to the Blackjack Table"
end

def deal_card
  #generates a random number between 1-11
  rand(1..11)
end

def display_card_total(number_sum)
  #accepts one argument, the card total
  #Your cards add up to #{card_total}
  puts "Your cards add up to #{number_sum}"
end

def prompt_user
  #gives instructions for hitting or staying
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  #returns the value of a `gets.chomp` method
  return gets.chomp
end

def end_game(number_sum)
  #prints apology, card total, and thank you message
  puts "Sorry, you hit #{number_sum}. Thanks for playing!"
end

def initial_round
  number_sum = deal_card + deal_card
  display_card_total(number_sum)
  number_sum
end

def hit?(number)
  # gameee!!! C:
  prompt_user 
  user_input = get_user_input
  if user_input == "s"
    !deal_card
    total = number
  elsif user_input == "h"
    value = deal_card
    total = number + value
  else
    invalid_command
    prompt_user
  end
  total
end

def invalid_command
  # prints Please enter a valid command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  number = initial_round
  hit?(number)
  until number >= 21
    hit?(number)
  end
  end_game(number)
end
    
