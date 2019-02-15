def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  1 + rand(10)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  hand = deal_card + deal_card
  display_card_total(hand)
  hand
end

def hit?(current_hand)
  # code hit? here
  prompt_user
  input = get_user_input
  if input === 'h'
    current_hand += deal_card
    display_card_total(current_hand)
  elsif input === 's'
    current_hand
  else 
    invalid_command(current_hand)
  end 
  current_hand
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command."
  hit?(current_hand)
  
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome 
  hand = initial_round
  until hand > 21 do
    hand = hit?(hand)
  end
  end_game(hand)
  
end
    
