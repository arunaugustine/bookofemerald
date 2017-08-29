defmodule TextAlchemy do
  @moduledoc """
  Provides text manipulation related functions.
  """

  @doc """
  Rotates a single character by 13 positions.
  """
  def rot13c(character) do

    case character do
       "a" -> "n"
       "b" -> "o"
       "c" -> "p"
       "d" -> "q"
       "e" -> "r"
       "f" -> "s"
       "g" -> "t"
       "h" -> "u"
       "i" -> "v"
       "j" -> "w"
       "k" -> "x"
       "l" -> "y"
       "m" -> "z"
       "n" -> "a"
       "o" -> "b"
       "p" -> "c"
       "q" -> "d"
       "r" -> "e"
       "s" -> "f"
       "t" -> "g"
       "u" -> "h"
       "v" -> "i"
       "w" -> "j"
       "x" -> "k"
       "y" -> "l"
       "z" -> "m"
       _   -> :error
    end
  end

  @doc """
  Applies the rot13c function to all characters in a word
  """
  def rot13w(word) do

   word
   |> String.downcase
   |> String.graphemes
   |> Enum.map(&rot13c/1)
   |> Enum.into("")

  end

end

IO.inspect TextAlchemy.rot13w("abcd")
IO.inspect TextAlchemy.rot13w("NoPq")
# Decoding the first word on the second line of the Alchemist's message
IO.inspect TextAlchemy.rot13w("Gur")
