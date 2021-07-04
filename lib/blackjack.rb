def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  Random.rand(1..11)
 end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  return answer = gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  varone = deal_card.to_i
  vartwo = deal_card.to_i
  print card_total = varone + vartwo
  print display_card_total(card_total)
  return card_total
end

def hit?(current_card_total)
  prompt_user
  input = get_user_input
  if input == 's'
    return current_card_total
  elsif input == 'h'
    var = deal_card
    return current_card_total + var
  else invalid_command
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
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
