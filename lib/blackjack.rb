def welcome
 puts "Welcome to the Blackjack Table"

end


def deal_card
   rand(1..11) 
   
end

def display_card_total(ct)
  puts "Your cards add up to #{ct}"
  end
  

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  end


def get_user_input
 
  ui = gets.chomp
  
  end
  

def end_game(ct)

puts "Sorry, you hit #{ct}. Thanks for playing!"

end





def initial_round
 cardone = deal_card 
 cardtwo = deal_card
 ct = (cardone + cardtwo)
 display_card_total(ct)
 
 ct
 end

def hit?(ct)
  prompt_user
  ui = get_user_input
  if ui == "s"
    ct
  elsif ui == "h"
    deal_card + ct
  end
  
end

def invalid_command
  # code invalid_command here
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  ct = initial_round
  until ct > 21
  ct = hit?(ct)
  display_card_total(ct)

 end
end_game(ct)
end
    
