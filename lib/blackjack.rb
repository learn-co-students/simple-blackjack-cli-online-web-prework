def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
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

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  first_hand = deal_card + deal_card
  display_card_total(first_hand)
  first_hand
end

def hit?(card_total)
    prompt_user
    input = get_user_input
    if input == "h"
      card_total += deal_card
    elsif input == "s"
      card_total
    else
      invalid_command
      prompt_user
      input
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
  score = initial_round
  until score >= 21
    score = hit?(score)
    display_card_total(score)
  end
  end_game(score)
end
    
