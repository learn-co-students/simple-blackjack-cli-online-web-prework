def welcome
  puts 'Welcome to the Blackjack Table'
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  total = 0
  total += deal_card
  total += deal_card
  display_card_total(total)
  total
end

def hit?(total)
  prompt_user
  choice = get_user_input

  if choice == 'h'
    total += deal_card
  end
  total
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_sum = 0
  card_sum += initial_round
  until card_sum > 21
    card_sum = hit?(card_sum)
    display_card_total(card_sum)
  end
  end_game(card_sum)
end
