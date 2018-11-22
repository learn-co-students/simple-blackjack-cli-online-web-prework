def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  num = rand(1..11)
  return num
end

def display_card_total(sum)
  puts "Your cards add up to #{sum}"
  return sum
end


def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer = gets.chomp
  return answer
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  current_card_total = deal_card + deal_card
  
    display_card_total(current_card_total)
    
end

def hit?(current_card_total)
    prompt_user
    answer = get_user_input
        if answer == 's'
            current_card_total
        elsif answer == 'h'
            current_card_total += deal_card
            current_card_total
        else
            invalid_command
            hit?(current_card_total)
      end
end

def invalid_command
  puts "please enter a valid command"
  prompt_user
end


def runner
  welcome
  current_total = initial_round
    until current_total > 21
        current_total = hit?(current_total)
        
    end 
   display_card_total(current_total)
  end_game(current_total)
end
    
