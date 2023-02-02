rajasthan_file = File.open("Rajasthan.txt", "r")

rajasthan_places = rajasthan_file.readlines

rajasthan_file.close

user_input_file = File.open("user_input.txt", "r")

user_input = user_input_file.readlines

user_input_file.close

# puts "Day 1: Arrive in Jaipur and visit Amber Fort, City Palace and Jantar Mantar.".include?"Jaipur"

# Only checking for the last line of the rajasthan_places i.e. the last in rajasthan_place

user_input.each do |that_day_plan|
    if that_day_plan.length <2 #ignore for empty enters
        next
    end
    rajasthan_places.each do |rajasthan_place|
        puts user_input
    end
end

# puts rajasthan_places


