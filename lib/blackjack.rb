def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
   card = rand(1..11)
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
  user_input = gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_one = deal_card  #first card
  card_two = deal_card  #second card
  card_total = card_one + card_two #sum of both cards
  display_card_total(card_total) #total
  return card_total
end

def hit?(card_total)
  # code hit? here
  prompt_user  #get user input
  user_input = get_user_input
  if user_input == 'h'  #hit
    card_total += deal_card #increase total w/ new dealing card number
  elsif user_input == "s"  #stay
    card_total #return the number. prompt user to hit again
  else
    invalid_command
  end
end

def invalid_command
  # code invalid_command here
  puts "Wrong command. Please re-enter valid command."
  prompt_user
  get_user_input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome #introduce the game
  card_total = initial_round #user current total
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
