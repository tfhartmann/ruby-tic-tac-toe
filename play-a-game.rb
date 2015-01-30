#!/usr/bin/env ruby
require 'pp'
# Start by writing a program that reports the winneeeer of any given tic-tac-toe board


test_board = [
        [ "o", "o", "o" ],
        [ "x", "x", "z" ],
        [ "o", "x", "x" ]
]

#call foo and verify o won, 

def test_for_winner(board)
  # test to see if 3 of a type in a row, return the value of that type (x, o, or zed) 
  c = 0
  winner = ''
  while c < 3
  # check row
    if board[c][0] == board[c][1] and board[c][0] == board[c][2]
      if board[c][0] == 'x' or board[c][0] == 'o'
        return board[c][0]
      end
    end
  # Check col
    if board[0][c] == board[1][c] and board[0][c] == board[2][c]
      if board[0][c] == 'x' or board[0][c] == 'o'
        return board[0][c]
      end
    end
    c = c + 1
  end
  # Check diags
  if (board[0][0] == board[1][1] and board[0][0] == board[2][2]) or
     (board[2][0] == board[1][1] and board[2][0] == board[0][2])
     if board[1][1] == 'x' or board[1][1] == 'o' 
       return board[1][1]
     end
  end
  return 'z'
end

# Tests
if test_for_winner(
        [[ "o", "o", "o" ],
         [ "x", "x", "z" ],
         [ "o", "x", "x" ]]) == 'o'
  puts 'PASSED test 0' 
else
  puts 'FAILED test 0'
end

if test_for_winner(
        [[ "o", "o", "x" ],
         [ "o", "x", "z" ],
         [ "o", "x", "x" ]]) == 'o'
  puts 'PASSED test 1' 
else
  puts 'FAILED test 1'
end

if test_for_winner(
        [[ "o", "o", "x" ],
         [ "z", "x", "x" ],
         [ "o", "o", "x" ]]) == 'x'
  puts 'PASSED test 2' 
else
  puts 'FAILED test 2'
end

if test_for_winner(
        [[ "x", "o", "x" ],
         [ "z", "x", "o" ],
         [ "o", "o", "x" ]]) == 'x'
  puts 'PASSED test 3' 
else
  puts 'FAILED test 3'
end

if test_for_winner(
        [[ "x", "o", "o" ],
         [ "o", "x", "x" ],
         [ "o", "x", "o" ]]) == 'z'
  puts 'PASSED test 4' 
else
  puts 'FAILED test 4'
end

if test_for_winner(
        [[ "z", "z", "z" ],
         [ "x", "x", "x" ],
         [ "o", "o", "z" ]]) == 'x'
  puts 'PASSED test 5' 
else
  puts 'FAILED test 5'
end

if false
if test_for_winner(
        [[ "o", "o", "x" ],
         [ "x", "o", "x" ],
         [ "o", "o", "x" ]]) == 'o'
  puts 'PASSED test 3' 
else
  puts 'FAILED test 3'
end
end

