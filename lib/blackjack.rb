def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
 rand(1..11)
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
    return card_total
end

def hit?(num)
  prompt_user
  input = get_user_input
  if input == 's'
    num += 0
  elsif input == 'h'
    num += deal_card
  else
    invalid_command
  end
  return num
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
  get_user_input
end

def runner
  welcome 
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
end
  display_card_total(card_total)
  end_game(card_total)
end
end