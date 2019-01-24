def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  card_total = total
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  card_total = total
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(number)
  prompt_user
  user_input = get_user_input
    until user_input == "h" || user_input == "s"
      invalid_command
      prompt_user
      user_input = get_user_input
    end
    if user_input == "h"
      number += deal_card
    elsif user_input == "s"
      number
    end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  number_of_cards = initial_round
  until number_of_cards > 21
   hit?(number_of_cards)
  end
end_game(number_of_cards)
end
    
