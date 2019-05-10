def welcome
  puts "Welcome to the Blackjack Table."
end

def deal_card (card = 1..11)
  rand(card)
  
end

def display_card_total(card)
  puts "Your card adds up to #{card}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay."
end

def get_user_input (a = gets.chomp)
  
end

def end_game(x)
  puts " Sorry, you hit #{card_total}. Thanks for playing!"
  
end

def initial_round
  card = deal_card + deal_card 
  display_card_total(card)
  card
end

def hit?(x)
  prompt_user
  case get_user_input
  when "s"
    x 
    when "h"
      x+= deal_card
      when others
        invalid_command
  
end

def invalid_command
  
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  total = initial_round
  until total is > 21 
  total = hit? (total)
  display_card_total(total)
end
end_game(total)
  
end
    
