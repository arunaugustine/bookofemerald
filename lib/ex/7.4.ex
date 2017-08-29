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

# Decoding the Alchemist's message
# --------------------------------

# Reading the filename containing the message from commandline
[filename | _tail] = System.argv

# Open the file for reading
{:ok, file} = File.open(filename, [:read])

# Read the first line of the message from the file
line_1 = IO.read(file, :line) |> String.trim

# Print the first line from the Alchemist's message, as it is
IO.puts line_1

# Print the second line from the Alchemist's message, after decoding
line_2 = IO.read(file, :line) |> String.trim
IO.puts TextAlchemy.rot13(line_2)
