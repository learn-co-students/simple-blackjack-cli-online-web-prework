def welcome
  puts "Welcome to the Blackjack Table"# code #welcome here
end

def deal_card
  rand 1..11# 
end

def display_card_total(card_total)
  card_total = 7
    puts "Your cards add up to #{card_total}"
   if card2 == 8
     print "Your cards add up to 8"
   elsif card3 == 12
    puts "Your cards add up to 12"
  else 
    puts card_total == 7 + 8 + 12
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
 gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  deal_card  
  deal_card 
  card_total = deal_card + deal_card
  display_card_total(card_total)
end

def hit?(card_total)
  prompt_user
  answer = get_user_input
  if answer == "s"
    card_total
    elsif answer == "h"
    card_total = card_total + deal_card
   elsif invalid_command
     puts "Please enter a valid command"
   else
     prompt_user
     hit?(card_total)
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
  initial_round
  prompt_user
  hit?(card_total)
  displat_card_total(card_total)
  until card_total >21
    end_game
  end
end_game(total)
end
    
