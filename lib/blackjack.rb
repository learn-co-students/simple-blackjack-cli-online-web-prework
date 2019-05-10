def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end  

def display_card_total(total)
  puts "Your cards add up to #{total}"
  "#{total}"
end


def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer = gets  
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  num1=deal_card
  num2=deal_card
  display_card_total(num1 + num2)
  num1+num2
end

def hit?(number)
  prompt_user 
  user_input=get_user_input
    while user_input != "h" && user_input != "s"
      invalid_command
      prompt_user
      user_input=get_user_input
    end
    if user_input == "h"
      number += deal_card
    end
    return number
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  prompt_user
  until total >21
  
end
end_game(total) 

end
  runner
    
