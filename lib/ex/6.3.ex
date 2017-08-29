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
  def mod(a, b) do
    q = div( abs(a), b) # q for quotient
    abs(a) - (b * q)
  end

  @doc """
  Run tests for mod function. We could potentially
  add more tests here in the future.
  """

  def test_mod() do
    IO.puts "mod(5,2) expected: 1  actual: #{MathAlchemy.mod(5, 2)}"
    IO.puts "mod(-5,2) expected: 1 actual: #{MathAlchemy.mod(-5, 2)}"
    IO.puts "mod(5,-3) expected: 2  actual: #{MathAlchemy.mod(5, -3)}"
    IO.puts "mod(5,5) expected: 0  actual: #{MathAlchemy.mod(5, 5)}"
    :tests_completed
  end

end # End module

MathAlchemy.test_mod()
