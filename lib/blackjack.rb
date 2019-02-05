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

def end_game(cardtotal)
  puts "Sorry, you hit #{cardtotal}. Thanks for playing!"
  
end

def initial_round
  
  
end

def hit?
  # code hit? here
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
