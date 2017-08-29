defmodule mathAlchemy do

  def mod(a, b) do
    d = div(a, b)
    a - (b * d)
  end

end # End module

IO.puts MathAlchemy.mod(5,2)
