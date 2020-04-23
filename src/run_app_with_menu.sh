#!/bin/bash

clear

echo "Welcome to Hangman"

echo "Ensuring all required gems are installed"

bundle install

echo "All gems have been installed, running application for the first time now"

ruby main.rb