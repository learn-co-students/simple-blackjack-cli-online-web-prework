def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card = rand(1..11)
  return card
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
  answer = gets.chomp
  return answer
  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!" 
  # code #end_game here
end

def initial_round
  count = 0
  while count < 2
  card = deal_card
  card += card
  count += 1
end
display_card_total(card)
return card
# code #initial_round here
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  prompt_user
  get_user_input
end

def hit?(hitme)
prompt_user
answer = get_user_input
if answer == 's'
hitme
elsif answer == 'h'
new = deal_card
hitme += new
else
invalid_command
end
#display_card_total(card)
end 



#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
welcome
card = initial_round
until card > 21
card = hit?(card)
display_card_total(card)
end 
return end_game(card)
end
    
