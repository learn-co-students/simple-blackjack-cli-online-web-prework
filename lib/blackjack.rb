def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets()
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card1 = deal_card()
  card2 = deal_card()
  cardTotal = card1 + card2
  display_card_total(cardTotal)
  return cardTotal
end

def hit?(cardTotal)
  # code hit? here
  prompt_user()
  move = get_user_input()
  
  if move == "s"
    
  elsif move == "h"
    card = deal_card()
    cardTotal += card
    display_card_total(cardTotal)
  else
    invalid_command()
    prompt_user()
  end
  return cardTotal
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome()
  cardTotal = initial_round()
  cardTotal = hit?(cardTotal)
  cardTotal < 21 ? hit?(cardTotal) : end_game(cardTotal)
end
    
