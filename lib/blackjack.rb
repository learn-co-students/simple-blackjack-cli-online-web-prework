def welcome
  puts "Welcome to the Black jack Table"
end

def deal_card
  card = rand(1..11)
  card_total = card += card
  "Your cards add up to #{card_total}"
end


def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game
  # code #end_game here
  if card_total is >= 22
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
  else 
  prompt_user
end

def initial_round
  # code #initial_round here
  deal_card(card) = hit1
  deal_card(card) = hit2
  display_card_total = hit1 + hit2
end
 
def hit?
  # code hit? here
  prompt_user
  gets.chomp = input
  if input == 'h'
puts  deal_card += display_card_total
  elsif input == 's'
  prompt_user
else 
  puts "Please enter a valid command"
  prompt_user
  
end



#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  deal_card
  prompt_user
  initial_round
  hit?
end
    
