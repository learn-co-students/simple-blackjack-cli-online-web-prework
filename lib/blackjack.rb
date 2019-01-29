def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
end

def display_card_total (card_total)
  puts "Your cards add up to #{card_total}"
end

def display_dealer_total (card_total)
  puts "The dealer cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer=gets.chomp
  return answer
end

def end_game (card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"# code #end_game here
end

def win_game (card_total)
  puts "You've hit #{card_total}. Congratulations! you destroyed the dealer!"# code #end_game here
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  sum= card1+card2
  display_card_total(sum)
  return sum
end

def hit? (sum)
 #while answer!="s"
 prompt_user
 answer=get_user_input
 if answer == 'h'
  sum+=deal_card
 end
 return sum, answer
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum = initial_round
  until sum>21
    sum,answer = hit?(sum)
    display_card_total(sum)
    if answer=="s"
      break
    end
  end
  dealer = rand(18..21)
  display_dealer_total(dealer)
  if dealer > sum || sum>21
    end_game(sum)
  else
    win_game(sum)
  end

end
