def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(i)
  puts "Your cards add up to #{i}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(i)
  puts "Sorry, you hit #{i}. Thanks for playing!"
end

def initial_round
  total=deal_card+deal_card
  display_card_total(total)
  total
end

def hit?(tot)
  prompt_user
  inp=get_user_input
  if inp=="h"
    tot+=deal_card
  elsif inp=="s"
    tot
  else
    invalid_command
    tot
  end
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
  tot=initial_round
  until tot>21
    tot=hit?(tot)
    display_card_total(tot)
  end
  end_game(tot)
end
    
