def welcome
  puts "Welcome to the Blackjack Table"# code #welcome here
end

def deal_card
  rand(1..11)# code #deal_card here
end

def display_card_total(total)
  puts "Your cards add up to #{total}"# code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"# code #prompt_user here
end

def get_user_input
  gets.chomp# code #get_user_input here
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"# code #end_game here
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  total# code #initial_round here
end

def hit?(total)
  prompt_user
  input = get_user_input
  if input == "h"
    total += deal_card
  elsif input == "s"
    total
  else
    invalid_command
  end# code hit? here
end

def invalid_command
   puts "Please enter a valid command"
   prompt_user# code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

#you can not access to an argument from out side of the method.#
#only way to access is creating a variable!#

def runner
  welcome
  total = initial_round
 #  display_card_total
  until total > 21
    total = hit?(total)
 #  end_game
 end
 display_card_total(total)
 end_game(total)# code runner here
end
