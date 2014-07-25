require './lib/parcels'
@costs = []

def calculate_shipping
  puts "what is the length of your package?"
  length = gets.chomp.to_f
  puts "what is the width of your package?"
  width = gets.chomp.to_f
  puts "what is the height of your package?"
  height = gets.chomp.to_f
  puts "what is the weight of your package?"
  weight = gets.chomp.to_f
  your_parcel = Parcel.new(length, width, height, weight)
  @costs << your_parcel.shipping_cost.round(2)
  puts "\nIt will cost $#{your_parcel.shipping_cost.round(2)}"
  main_menu
end

def total_cost
  @costs.inject(:+)
end

def main_menu
  puts "Would you like to ship a package?"
  puts "\nTo ship a package, enter 's'. \n\nFor the total cost of all your packages, enter 't'. \n\nTo exit, type 'x'.\n"
  response = gets.chomp
  if response == "s"
    calculate_shipping
  elsif response == "t"
    puts "Your total cost is $ #{total_cost}\n"
    main_menu
  elsif response == "x"
    puts "no problem, come back when you have a package you'd like to ship!"
    exit
  else
    main_menu
  end
end

puts "Welcome to JJ & Moof's postal service!"

main_menu
