# This module includes all screen transitions. This includes the welcome
# screen, menu and any instruction screens or loading screen.
# This module also includes the method which mimics typing as it was most
# related to the other methods in this file.
module Screens
  # This method takes in an argument of a string and then mimics typing
  # across the screen.
  def self.typing(word)
    word.each_char do |character|
      print character
      sleep 0.07
    end
  end

  # Displays the welcome screen.
  def self.welcome_screen
    system 'clear'
    print "\n\n\n\n\n\n                                 "
    typing('Welcome to...')
    puts "\n\n\n"
    sleep 0.5
    Images.title
    print "\n\n                                 "
    sleep 0.5
    typing('...with cats')
    puts "\n"
  end

  # Displays the menu and returns which option was selected.
  def self.display_menu
    menu_options = %w[Single-player Multi-player Exit]
    prompt = TTY::Prompt.new
    puts "\n\n"
    Images.title
    puts Images.menu_cat.colorize(:magenta)
    selection = prompt.select('What would you like to do?', (menu_options))
  end

  # Displays the ASCII winning cat and message advising the game was won.
  def self.win
    puts Images.game_won_cat.colorize(:magenta)
    puts "You're a winner baby!"
  end

  # Displays the ASCII losing cat and message advising the game was lost.
  def self.lose
    puts Images.game_lost_cat.colorize(:blue)
    puts "\n\nBetter luck next time..."
  end
end
