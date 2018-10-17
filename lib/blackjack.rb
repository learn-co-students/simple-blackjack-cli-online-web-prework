def welcome
  # code #welcome here
  puts ("Welcome to the Blackjack Table")
end

def deal_card
  # code #deal_card here
  card = rand(1..11)
  card
end

def display_card_total(card)
  # code #display_card_total here
  card_total = card
  puts ("Your cards add up to #{card_total}")
  card_total
end

def prompt_user
  # code #prompt_user here
  puts ("Type 'h' to hit or 's' to stay")
end

def get_user_input
  # code #get_user_input here
  move = gets.chomp
  move
end

def end_game(card_total)
  # code #end_game here
  puts ("Sorry, you hit #{card_total}. Thanks for playing!")
end

def initial_round
  # code #initial_round here
  card1 = deal_card
  card2 = deal_card
  card_total = card1 + card2
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  # code hit? here
  prompt_user
  move = get_user_input
  if move == 'h'
    card = deal_card
    card_total = card_total + card
  end
  return card_total
  
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  initial_round
  until card_total > 21
    hit?(card_total)
    display_card_total(card)
    end_game(card_total)
end
    
