defmodule OutcomeCheckerTest do
  use ExUnit.Case
  doctest ElixirTicTacToeBasic.OutcomeChecker

  test "it correctly determines when the board is full" do
    config = %{
      board: %{
        1 => "X",
        2 => "O",
        3 => "X",
        4 => "O",
        5 => "X",
        6 => "O",
        7 => "X",
        8 => "O",
        9 => "X"
      }
    }

    is_full = ElixirTicTacToeBasic.OutcomeChecker.check_full(config)

    assert is_full == true
  end

  test "it correctly determines when the board is not full" do
    config = %{
      board: %{
        1 => 1,
        2 => 2,
        3 => 3,
        4 => 4,
        5 => 5,
        6 => 6,
        7 => 7,
        8 => 8,
        9 => 9
      }
    }

    is_full = ElixirTicTacToeBasic.OutcomeChecker.check_full(config)

    assert is_full == false
  end
end