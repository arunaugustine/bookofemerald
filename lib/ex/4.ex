# Treasure Accounting 201

# Keeping track of all the gold coins and emeralds
num_large_gold_coins = 150 + 300 + 350 + 200 # From four leather bags
weight_large_gold_coin_ounces = 2.5

total_weight_large_gold_coins_ounces = num_large_gold_coins * weight_large_gold_coin_ounces

num_small_gold_coins = 500 * 10 # 500 each in 10 cloth bags
weight_small_gold_coin_ounces = 1.5

total_weight_small_gold_coins_ounces = num_small_gold_coins * weight_small_gold_coin_ounces

total_gold_weight_ounces = total_weight_large_gold_coins_ounces + total_weight_small_gold_coins_ounces

weight_emerald_chest_grams = 18765
weight_empty_chest_grams = 4250

weight_emerald_grams = weight_emerald_chest_grams - weight_empty_chest_grams

grams_in_ounce = 28.3495

total_emerald_weight_ounces = weight_emerald_grams / grams_in_ounce

num_emerald_stones = 256
avg_weight_per_emerald_stone_ounces = total_emerald_weight_ounces / num_emerald_stones

IO.puts "Treasure Under the Sycamore Tree"
IO.puts "--------------------------------"
IO.puts "Total weight of large gold coins (in ounces): #{total_weight_large_gold_coins_ounces}"
IO.puts "Total weight of small gold coins (in ounces): #{total_weight_small_gold_coins_ounces}"
IO.puts "Total weight of gold coins (in ounces): #{total_gold_weight_ounces}"
IO.puts "Total weight of Emeralds (in ounces): #{total_emerald_weight_ounces}"
IO.puts "Avg. weight of each Emerlad (in ounces): #{avg_weight_per_emerald_stone_ounces}"

# Keeping track of the gypsy woman's share

num_large_coins_to_gypsy_woman = round(num_large_gold_coins / 10)
num_small_coins_to_gypsy_woman = round(num_small_gold_coins / 10)
num_emeralds_to_gypsy_woman = round(num_emerald_stones / 10)

IO.puts "------------------"
IO.puts "Gypsy Woman's Share"
IO.puts "------------------"

IO.puts "Number of large gold coins given to the gypsy woman: #{num_large_coins_to_gypsy_woman}"
IO.puts "Number of small gold coins given to the gypsy woman: #{num_small_coins_to_gypsy_woman}"
IO.puts "Number of Emerald stones given to the gypsy woman: #{num_emeralds_to_gypsy_woman}"
