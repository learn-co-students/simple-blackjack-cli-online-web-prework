require "pry"

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = 1..11
  20.times do
    #binding.pry
    return rand(card) 
  end  
end


def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  "/Your cards add up to #{display_card_total(sum)} /"
  return sum
end


def hit?(current_card_total)
  prompt_user
  user_input = get_user_input 
    if user_input == "s"
     current_card_total
    elsif user_input == "h"
    current_card_total += deal_card
    else 
     invalid_command
  end
  
end



def invalid_command
  puts "Please enter a valid command"
  prompt_user
  get_user_input

end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  #calls on welcome greeting
  #calls initial rounds that draws 2 cards and gives the total
  #until the cards are greater than 21 we call hit and display card total
  #once it is greater we will end game
  welcome
  sum = initial_round
  
  until sum > 21
  sum = hit?(sum)
  display_card_total(sum)
  end
 end_game(sum)
  
end
    
