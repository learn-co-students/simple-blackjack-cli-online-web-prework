require 'pry'

def welcome
   puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(11)+1
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer = gets.chomp 
end

def end_game(card_total)
  # code #end_game here
if card_total > 21
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end
end

def initial_round
  first_card = deal_card
  second_card = deal_card
  card_total = first_card + second_card
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  prompt_user
  answer = get_user_input
   until  answer = "s" || answer = "h"
   invalid_command
     prompt_user
     answer = get_user_input
      card_total
     if answer == "h"
       card_total += deal_card
       card_total
       prompt_user
   #  binding.pry
end
end
end
# if answer == "s"
# card_total
#   elsif answer == "h"
#   card_total += deal_card
# binding.pry
  #hit?(card_total) 
  
#end
  #recursion

  
   # if answer == 'h'
  #   current_card_total+=deal_card
  # card_total
  # if answer == 'h'
  #   current_card_total+=deal_card
  #   display_card_total(current_card_total)
  #   return current_card_total

#end

  #answer
#end
#   if answer == 's'
#     return current_card_total
#   elsif answer == 'h'
#     current_card_total+=deal_card
#     display_card_total(current_card_total)
#     return current_card_total
#   else
#     invalid_command
#     hit?(current_card_total)
# end
# end
 # answer
# end






#end

def invalid_command
#  if get_user_input !== "s" || "h"
#end
#end
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end