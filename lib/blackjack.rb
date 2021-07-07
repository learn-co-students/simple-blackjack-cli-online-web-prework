def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return [1, 2 , 3, 4, 5, 6, 7, 8, 9, 10, 11].sample
end

def display_card_total (card_total)
  card_total = deal_card
  card_total += deal_card
  print "Your cards add up to #{card_total}"
  return card_total
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
  card_total = deal_card + deal_card
  print display_card_total(card_total)
  return card_total
end

def hit?(current_total)
  prompt_user
  input = get_user_input
  if input == "h"
    current_total += deal_card
  elsif input == "s"
    return current_total
  end
  end
end

def invalid_command
  puts "Please eneter a valid command."
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  hit?
  display_card_total
  loop do 
    until card_total > 21
    end
  end_game
  end
end
    
