def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(nums)
  puts "Your cards add up to #{nums}"
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
  x = deal_card
  y = deal_card
  z = x+y
  puts "Your cards add up to #{z}"
  z
end

def hit?(num)
  prompt_user
  x = get_user_input
  if x == "h"
    y = num + deal_card
    return y
  elsif x == "s"
    return nu,

  else
    invalid_command
    prompt_user
  end
end


def invalid_command
  puts "Invalid Command!"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  x = initial_round
  until x > 21
    x = hit?(x)
    display_card_total(x)
  end

end
