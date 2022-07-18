defmodule IntegrationTest do
  use ExUnit.Case

  describe "integration" do
    test "it plays the game" do
      %{messages: messages} =
        ElixirTicTacToeBasic.start(%{
          ui: ElixirTicTacToeBasic.UI,
          presenter: ElixirTicTacToeBasic.Presenter,
          prompter: ElixirTicTacToeBasic.Prompter,
          player: ElixirTicTacToeBasic.Player,
          board: ElixirTicTacToeBasic.Board.new(),
          current_player: "X",
          current_move: 5
        })

      empty_board = """
       1 | 2 | 3
      ---+---+---
       4 | 5 | 6
      ---+---+---
       7 | 8 | 9
      """

      board_with_first_move = """
       1 | 2 | 3
      ---+---+---
       4 | X | 6
      ---+---+---
       7 | 8 | 9
      """

      messages = Enum.reverse(messages)

      assert messages == [
               "Welcome to Tic Tac Toe!",
               empty_board,
               board_with_first_move
             ]
    end
  end
end
