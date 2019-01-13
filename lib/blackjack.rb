def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand 1..11
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
  apology = "Sorry, you hit #{card_total}. "
  thank_you = "Thanks for playing!"
  puts apology + thank_you
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  return card_total
end

def hit?(card_total)
  prompt_user
  input_val = get_user_input
  if input_val == 'h'
    return card_total += deal_card
  elsif input_val == 's'
    return card_total
  else
    invalid_command
    # hit?(card_total)
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
  local_card_total = initial_round
  until local_card_total > 21
    local_card_total = hit?(local_card_total)
    display_card_total(local_card_total)
  end
  end_game(local_card_total)
end
    
