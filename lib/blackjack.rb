def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total (sum)
  puts "Your cards add up to #{sum}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer = gets.chomp
  return answer
end

def end_game (over)
  puts "Sorry, you hit #{over}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit? (round_sum)
  prompt_user
  input = get_user_input
  if input == "s"
    return round_sum
  elsif input == "h"
    round_sum += deal_card
    return round_sum
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command."
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_sum = initial_round
  until card_sum > 21
  card_sum = hit?(card_sum) 
  display_card_total(card_sum)
end
  end_game(card_sum)
  
end
