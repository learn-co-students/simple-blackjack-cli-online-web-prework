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

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first_card = deal_card
  second_card = deal_card
  card_total = first_card + second_card
  display_card_total(card_total)
  return card_total
end

def hit?(current_card_total)
  prompt_user
  hit_or_stay = get_user_input
  if hit_or_stay == "h"
    hit = deal_card
    return hit + current_card_total
  elsif hit_or_stay == "s"
    return current_card_total
  else
    invalid_command
    prompt_user
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
  card_sum = initial_round
  until card_sum > 21
    card_sum = hit?(card_sum)
    display_card_total(card_sum)
  end
end_game(card_sum)

end
