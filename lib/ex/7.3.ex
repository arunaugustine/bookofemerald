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

  @doc """
  Encodes or decodes a string (of words) using rot13
  """
  def rot13(sentence) do

    sentence
    |> String.split
    |> Enum.map(&rot13w/1)
    |> Enum.join(" ")
  end
end

# Decoding the second line from the Alchemist's message
IO.puts TextAlchemy.rot13("Gur havirefr pbafcverf gb uryc gur Qernzre")
