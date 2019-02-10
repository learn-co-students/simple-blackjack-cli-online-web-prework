def welcome
  puts  "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
  
  # code #deal_card here
end

def display_card_total(int)
  puts "Your cards add up to #{int}"
  # code #display_card_total here
end

def prompt_user
  
  puts  "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  gets.chomp
  # code #get_user_input here
end

def end_game(int)
 puts  "Sorry, you hit #{int}. Thanks for playing!"
  # code #end_game here
end


def invalid_command
  puts "Please enter a valid command"
  
end 

def initial_round
  value = deal_card + deal_card
  display_card_total(value)
  value 
  # code initial_round here
end

def hit?(int)
  prompt_user

  answer = get_user_input
    if answer == "s"
      answer
      
    elsif get_user_input == "h"
      deal_card 
      display_card_total(value)
    value
  else
     invalid_command
    prompt_user
  end
  display_card_total(value)
  
end
  
end
  # code invalid_command here


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
