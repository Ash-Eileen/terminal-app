require 'tty-prompt'
require 'colorize'
require_relative 'ascii_images.rb'

module Menu

    MENU_OPTIONS = %w(Single-player Multi-player Exit)
    PROMPT = TTY::Prompt.new

    def self.display_menu
        Images::title
        puts Images::menu_cat.colorize(:magenta)
        selection = PROMPT.select("What would you like to do?", MENU_OPTIONS)
    end

end

