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
 response = gets.chomp
end

def end_game(card_total)
 puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
 num1 = deal_card
 num1
 num2 = deal_card
 num2
 card_total = num1 + num2
 display_card_total(card_total)
 card_total
end

def hit?(card_total)
 prompt_user
 answer = get_user_input
 case answer
  when "h"
    card_total += deal_card
  when "s"
    #
 else
   invalid_command
   prompt_user
 end
 card_total
end


def invalid_command
 puts "Please enter a valid command."
 prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################
def runner
  welcome
  total = initial_round
end
  end_game(total)
end
