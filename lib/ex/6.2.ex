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

end # End module

IO.puts MathAlchemy.mod(5, 2)
IO.puts MathAlchemy.mod(-5, 2)
