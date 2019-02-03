def welcome
  puts "Welcome to the Blackjack Table" # code #welcome here
end

def deal_card
  rand(1..11)# code #deal_card here
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}" # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay" # code #prompt_user here
end

def get_user_input
  gets.chomp # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!" # code #end_game here
end

# code #initial_round here
def initial_round
  card_one = deal_card
  card_two = deal_card
  card_total = card_one + card_two
  display_card_total(card_total)
  return card_total
end

initial_round

# code hit? here
def hit?(card_total)
  prompt_user
  user_input = get_user_input 
  case user_input 
    when 's'
      card_total
    when 'h'
      card_total += deal_card
    else invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command" # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

# code runner here
def runner
  welcome
  card_total = initial_round
  until card_total > 21 
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
    
runner
