require './lib/parcels'

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
  puts "It will cost #{your_parcel.shipping_cost.round(2)} dollars"
end

calculate_shipping
