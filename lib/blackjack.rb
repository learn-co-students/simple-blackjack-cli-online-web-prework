def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand 1..11
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  phrase = "Type 'h' to hit or 's' to stay"
  puts phrase
end

def get_user_input
  answer = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(num)
  prompt_user
  input = get_user_input
  if input == 'h'
    num += deal_card
  elsif input == 's'
  else
    invalid_command
  end
  return num
end

def invalid_command
  phrase = "Please enter a valid command"
  puts phrase
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  num = 0
  until num > 21 do
    welcome
    num = initial_round
    num = hit?(num)
    display_card_total(num)
  end
  end_game(num)
end
