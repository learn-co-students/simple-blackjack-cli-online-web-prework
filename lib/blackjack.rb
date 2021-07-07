def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  1 + rand(11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
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
  card1 = deal_card
  card2 = deal_card
  display_card_total(card1+card2)
  return card1 + card2
end

def hit?(card_total)
    prompt_user
    answer = get_user_input
    if answer == "h"
        card_total += deal_card
    elsif answer == "s"
      card_total
    else
      invalid_command
      prompt_user
    end
  #display_card_total(card_total)
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  current_card_total = initial_round
  until current_card_total > 21
    current_card_total = hit?(current_card_total)
    display_card_total(current_card_total)
  end
end_game(current_card_total)
end
    
