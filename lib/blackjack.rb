def welcome
puts "Welcome to the Blackjack Table"
end

def deal_card
  card= rand(1..11)
return card
end

def display_card_total (total)
puts "Your cards add up to #{total}"
end

def prompt_user
puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
userinput =gets.chomp
return userinput
end

def end_game(card_total)
puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
answer = deal_card+deal_card
 display_card_total (answer)
return answer
end

def hit?(card_total)
prompt_user
#Type 'h' to hit or 's' to stay
black=get_user_input
if black == "h"
  card_total += deal_card
    return card_total
elsif black =="s"
  return card_total
else
   invalid_command
   hit?(card_total)
end
end
  ##end_game
#elsif new =="h"
#  deal_card


def invalid_command
 puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
welcome
card_total = initial_round
until card_total >21
  card_total =  hit?(card_total)
  display_card_total(card_total)
end
end_game (card_total)
end
