#!/bin/bash

echo "Welcome to Hangman"

echo "Lets begin the install now"

git clone "https://github.com/Ash-Eileen/terminal-app.git"

cd terminal-app/src

echo "Time to ensure all required gems are installed"

bundle install

echo "All gems have been installed, running application for the first time now"

ruby main.rb single