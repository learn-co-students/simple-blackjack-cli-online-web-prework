def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  return   1 + rand(11)
  
  end


def display_card_total(num)
 puts "Your cards add up to #{num}"
   
 end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"  
end

def get_user_input
  h = gets.chomp 
  
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  
end

def initial_round

  sum = deal_card + deal_card
  puts "Your cards add up to #{sum}"
  return sum
  
end

def hit?(total)
  prompt_user
  input = get_user_input
  if input == "s"
   return total
  elsif input == "h"
   return total + deal_card
  else
   invalid_command
 end
end


def invalid_command
  puts  "Please enter a valid command"
hit?
  
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  
  until total > 21 

  total = hit?(total)
  display_card_total(total)
 
end
  end_game(total)
  
end
    
