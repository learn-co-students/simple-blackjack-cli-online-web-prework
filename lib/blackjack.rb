def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(value)
  puts "Sorry, you hit #{value}. Thanks for playing!"
end

def initial_round
  card_1 = deal_card
  card_2 = deal_card
  sum = card_1 + card_2
  display_card_total(sum)
  return sum
end

def hit?(value)
  prompt_user
  input = get_user_input
  if input == 's'
    return value
  elsif input == 'h'
    value += deal_card
    return value
  else
    invalid_command
    prompt_user
    return value
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
  value = initial_round
  while value < 21
    value = hit?(value)
    display_card_total(value)
  end
  end_game(value)
end
    
