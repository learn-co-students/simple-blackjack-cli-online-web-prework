def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(current_total)
  # code #end_game here
  puts "Sorry, you hit #{current_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  sum = card1 + card2
  display_card_total(sum)
  sum
end

def invalid_command
  # code invalid_command here
  puts "Sorry, that is not a valid option, please press h or s to continue"
  hit?
end

def hit?(current_total)
  # code hit? here
  prompt_user
  response = get_user_input
  card_total = current_total
  case response
    when "h"
      extra_card = deal_card
      card_total = card_total + extra_card
    when "s"
      #do nothing
    else
      invalid_command
    end
  card_total
end



#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  require_relative "blackjack.rb"
  welcome
  current_total = initial_round
  until current_total > 21 do
    current_total = hit?(current_total)
    display_card_total(current_total)
  end
  end_game(current_total)
end
