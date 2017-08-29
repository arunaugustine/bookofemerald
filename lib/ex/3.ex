# Treasure Accounting 101


IO.puts "Treasure Under the Sycamore Tree"
IO.puts "--------------------------------"

IO.puts "Number of large gold coins: #{150 + 300 + 350 + 200}" # from four leather bags
IO.puts "Weight of each large gold coin (in ounces): #{2.5}"

# Multiply total number with weight of each large gold coin
IO.puts "Total weight of large gold coins (in ounces): #{ (150 + 300 + 350 + 200) * 2.5 }"

IO.puts "Number of small gold coins: #{500 * 10}" # 500 each in 10 cloth bags
IO.puts "Weight of each small gold coin (in ounces): #{1.5}"
IO.puts "Total weight of small gold coins (in ounces): #{( 500 * 10) * 1.5}"

IO.puts "Total weight of gold (in ounces): #{ ((150 + 300 + 350 + 200) * 2.5) + (( 500 * 10) * 1.5)}"

IO.puts "Weight of one large wooden chest filled with with emeralds (in grams): #{18765}"
IO.puts "Weight of the wooden chest after emptying it (in grams): #{4250}"

# So weight of Emeralds is total weight minus the weight of the empty chest
IO.puts "Hence weight of Emeralds (in grams): #{18765 - 4250}"

IO.puts "Number of grams in an ounce: #{28.3495}"

# Divide number of grams by 28.34952 to get number of ounces
IO.puts "Hence total weight of emeralds (in ounces): #{ (18765 - 4250) / 28.3495  }"

IO.puts "Number of emerald stones: #{256}"
IO.puts "Average weight of each emerald stone (in ounces): #{ ((18765 - 4250) / 28.3495) / 256 }"

IO.puts "--------------------------------"
IO.puts "Number of large gold coins to give to the gypsy woman: #{ (150 + 300 + 350 + 200) / 10 }"
IO.puts "Number of small gold coins to give to the gypsy woman: #{ (500 * 10) / 10 }"
IO.puts "Number of Emerald stones to give to the gypsy woman: #{ 256 / 10 }"
