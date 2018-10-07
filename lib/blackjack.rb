def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = Random.new
  card.rand(1...11)
end

def display_card_total(number)
  # code #display_card_total here
  puts "Your cards add up to #{number}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"

end

def get_user_input
  gets.chomp
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  cards = deal_card + deal_card
  display_card_total(cards)
  cards
end

def hit?(number)
  prompt_user()
  move = get_user_input()
  
  if move == 's'
    card_total()
  elsif move == 'h'
    card_total() += deal_card()
  end

end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome()
  gountilround = initial_round
  while gountilround > 21
    gountilround = hit?(gountilround)
    display_card_total(gountilround)
  end
end_game(gountilround)
end

    
