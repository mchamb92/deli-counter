katz_deli = []

def line(deli_line)
    if (deli_line.length == 0)
        puts "The line is currently empty."
    else
        current_line = "The line is currently:"
        deli_line.collect.with_index do |name, index|
            current_line << " #{index + 1}. #{name}"
        end
        puts current_line
    end
end

def take_a_number(deli_line, person)
    deli_line << person
    puts "Welcome, #{person}. You are number #{deli_line.length} in line."
end

def now_serving(deli_line)
    if (deli_line.length == 0)
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{deli_line.first}."
        deli_line.shift
    end
end