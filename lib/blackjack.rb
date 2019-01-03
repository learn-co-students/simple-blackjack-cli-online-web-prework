def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
  input = gets.strip
end

def initial_round
@@ -33,7 +32,7 @@ def end_game(card_total)

def get_user_input
  # code #get_user_input here
  gets.chomp
  gets.strip.chomp
end

def hit? (card_total)
