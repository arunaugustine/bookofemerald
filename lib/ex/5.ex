# The Road to Tarifa


# Estimating the distance (in Km.) between the
# Sycamore (Sycamore tree where the treasure is),
# Seville (a city, where the boy can buy a horse) and
# Tarfia (the town where the gypsy woman lives)

distance_sycamore_to_seville = 300
distance_seville_to_tarifa = 400
distance_sycamore_to_tarifa = 500


is_horse_faster_than_boy? = true
walking_with_treasure_easier? = false

IO.puts "So it is #{is_horse_faster_than_boy?} that riding a horse is faster than the boy walking."
IO.puts "and it is #{ walking_with_treasure_easier?} to say, carrying a heavy treasure is easier while walking than riding."

# Is the route from Sycamore to Tarifa via Seville
# shorter than the direct path from Sycamore to Tarifa?

# Let us work out the math and find out.
route_via_seville_shorter? = distance_sycamore_to_seville + distance_seville_to_tarifa < distance_sycamore_to_tarifa
IO.puts "Is route via Seville shorter than the direct path between Sycamore and Tarifa? : #{route_via_seville_shorter?}"

# The boy has two options.
plan_a = "From Sycamore, walk to Seville. Buy a horse there and ride to Tarifa"
plan_b = "Walk along the direct route from Sycamore to Tarifa"
IO.puts "Plan A is: #{plan_a}"
IO.puts "Plan B is: #{plan_b}"

horse_speed_factor = 4 # Horse is 4 times faster than walking.
IO.puts "The horse is #{horse_speed_factor} times faster than walking"

days_to_walk_100km = 8 # It takes 8 days to walk 100 km
days_to_ride_100km = days_to_walk_100km / horse_speed_factor # How man days to ride 100km?

days_plan_a =  ( (distance_sycamore_to_seville / 100) * days_to_walk_100km) + ( (distance_seville_to_tarifa / 100) * days_to_ride_100km)
days_plan_b = (distance_sycamore_to_tarifa / 100) * days_to_walk_100km

IO.puts "Travel time for Plan A: #{round(days_plan_a)} days"
IO.puts "Travel time for Plan B: #{round(days_plan_b)} days"

IO.puts "Does Plan A take less time than Plan B? : #{days_plan_a < days_plan_b}"
IO.puts "Does Plan A take more time than Plan B? : #{days_plan_a > days_plan_b}"

IO.puts "The boy decided to pick the plan that has the shorter travel time."

decision_taken = if(days_plan_a < days_plan_b) do
  IO.puts "The boy chose Plan A: \n  \"#{plan_a}\""
else # if it was the other way around
  IO.puts "The boy chose Plan B: \n  \"#{plan_b}\""
end

IO.puts decision_taken
