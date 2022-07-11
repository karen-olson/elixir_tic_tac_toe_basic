defmodule Board do
  @moduledoc """
  Returns a formatted 3x3 tic tac toe board
  """

  def format_board(board) do
    """
     #{board[{0, 0}]} | #{board[{0, 1}]} | #{board[{0, 2}]}
    ---+---+---
     #{board[{1, 0}]} | #{board[{1, 1}]} | #{board[{1, 2}]}
    ---+---+---
     #{board[{2, 0}]} | #{board[{2, 1}]} | #{board[{2, 2}]}
    """
  end
end