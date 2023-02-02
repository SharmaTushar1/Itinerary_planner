ser_input.each do |user_input_line|
    if user_input_line.length <2
        next
    end
    cur = user_input_line
    rajasthan_places.each do |rajasthan_place|
        cur2 = rajasthan_place
        if cur.include?cur2
            puts "#{cur} has destination #{cur2}"
        end
    end
end