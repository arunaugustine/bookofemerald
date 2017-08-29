defmodule MathAlchemy do
  @moduledoc """
  Provides alchemy related math procedures.

  Important functions include mod (modulo or remainder after integer division),
  gcd (greatest common divisor), prime? (is it a prime number?) etc.
  """
  # --------------------------------------------------------------

  @doc """
  Calculates the mod (modulo or remainder after integer division).

  For instance integer division of 5 by 2 is equal to 2 with remainder 1.
  So for example:

    iex> MathAlchemy.mod(5,2)
    1
  """
  def mod(a, b) when b > 0 do
    q = div( abs(a), b) # q for quotient
    abs(a) - (b * q)
  end

  def mod(_a, b) when b <= 0 do
    :error
  end

  @doc """
  Run tests for mod function. We could potentially
  add more test here in the future.
  """
  def test_mod() do
    IO.puts mod_test_case(5, 2, 1)
    IO.puts mod_test_case(-5, 2, 1)
    IO.puts mod_test_case(5, 3, 2)
    IO.puts mod_test_case(5, 5, 0)
    IO.puts mod_test_case(-5, 4, 1)
    IO.puts mod_test_case(-5, -4, :error)
    IO.puts mod_test_case(5, 0, :error)
    :tests_completed
  end

  # This is a private function which can be used only within MathAlchemy module.
  # `mod_test_case` takes as input parameters, the numbers a, b and the
  # expected output from mod and returns a test string to be printed out
  defp mod_test_case(a,b, expected) do
    "mod(#{a},#{b}) expected: #{expected}  actual: #{mod(a, b)}"
  end

end # End module

MathAlchemy.test_mod()
