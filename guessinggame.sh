#!/bin/bash

# Function to get the number of files in the current directory
function get_file_count() {
  local file_count=$(ls -1 | wc -l)
  echo "$file_count"
}

# Get the actual number of files
actual_count=$(get_file_count)

# Start guessing loop
guess=0
while [[ $guess -ne $actual_count ]]; do
  # Prompt user for guess
  read -p "Guess the number of files in this directory: " guess

  # Check if guess is too high or too low
  if [[ $guess -lt $actual_count ]]; then
    echo "Your guess is too low. Try again!"
  elif [[ $guess -gt $actual_count ]]; then
    echo "Your guess is too high. Try again!"
  fi
done

# Congratulate the user on guessing correctly
echo "Congratulations! You guessed the correct number of files: $actual_count"
