defmodule TextAlchemy do
  @moduledoc """
  Provides text manipulation related functions.
  """

  @doc """
  Rotates a single character by 13 positions.
  """
  def rot13c(character) do

    cond do
      character == "a" -> "n"
      character == "b" -> "o"
      character == "c" -> "p"
      character == "d" -> "q"
      character == "e" -> "r"
      character == "f" -> "s"
      character == "g" -> "t"
      character == "h" -> "u"
      character == "i" -> "v"
      character == "j" -> "w"
      character == "k" -> "x"
      character == "l" -> "y"
      character == "m" -> "z"
      character == "n" -> "a"
      character == "o" -> "b"
      character == "p" -> "c"
      character == "q" -> "d"
      character == "r" -> "e"
      character == "s" -> "f"
      character == "t" -> "g"
      character == "u" -> "h"
      character == "v" -> "i"
      character == "w" -> "j"
      character == "x" -> "k"
      character == "y" -> "l"
      character == "z" -> "m"
      true             -> :error
    end
  end

end

IO.puts "Rotating 'a' gives '#{TextAlchemy.rot13c('a')}'"
IO.puts "Rotating 'b' gives '#{TextAlchemy.rot13c('b')}'"
IO.puts "Rotating 'm' gives '#{TextAlchemy.rot13c('m')}'"
IO.puts "Rotating 'n' gives '#{TextAlchemy.rot13c('n')}'"
IO.puts "Rotating 'A' gives '#{TextAlchemy.rot13c('A')}'"
