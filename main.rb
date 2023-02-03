# Not clean written code. The logic and overall work is getting done but implementation needs to be reviewed.

rajasthan_file = File.open("rajasthan_cities.txt", "r")

rajasthan_cities = rajasthan_file.readlines

rajasthan_file.close

user_input_file = File.open("user_input.txt", "r")

user_input = user_input_file.readlines

user_input_file.close

rajasthan_file = File.open("rajasthan_attractions.txt", "r")

rajasthan_attractions = rajasthan_file.readlines

rajasthan_file.close

raj_attractions = []

rajasthan_attractions.each do |attraction|
    raj_attractions << attraction.chop
end

raj_cities = []

rajasthan_cities.each do |city|
    raj_cities << city.chop
end

user_input_array = []

user_input.each do |single_day|
    if single_day.length < 2
        next
    end
    user_input_array << single_day.chop
end

map_for_city_mapping = Hash.new
map_for_attraction_mapping = Hash.new

for i in 1..user_input_array.length
    map_for_city_mapping[i] = []
    map_for_attraction_mapping[i] = []
end


for i in 1..user_input_array.length
    raj_attractions.each do |attraction|
        if user_input_array[i-1].include?attraction
            map_for_attraction_mapping[i] << attraction
        end
    end
    raj_cities.each do |city|
        if user_input_array[i-1].include?city
            map_for_city_mapping[i] << city
        end
    end
end

# {day -> [attractions]}

puts map_for_attraction_mapping

# {day -> cities}

puts map_for_city_mapping







