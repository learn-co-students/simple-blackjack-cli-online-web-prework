def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  random_num = Random.new 
  return random_num.rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  #gets.chomp
  input = gets.chomp 
  return input 
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  random1 = deal_card
  random2 = deal_card
  total = random1 + random2
  display_card_total(total)
  total
end

def hit?(total)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == 'h'
    new_total = total + deal_card
    return new_total
  elsif input == 's' 
    return total
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  first_hit = initial_round
  if first_hit > 21
    end_game(first_hit)
    display_card_total(first_hit)
  else 
    total = hit?(first_hit)
    until total >= 21
      hit?(total)
    end
  end_game(total)
  end 
 
  display_card_total(total)
end
    
