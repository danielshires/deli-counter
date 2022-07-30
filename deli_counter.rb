# Write your code here.
katz_deli = []
other_deli = ["Logan", "Avi", "Spencer"]
another_deli = ["Amanda", "Annette", "Ruchi", "Jason", "Logan", "Spencer", "Avi", "Joe", "Rachel", "Lindsey"]

def line(array)
    if array.length == 0
        puts "The line is currently empty."
    elsif array.length > 0
        counter = 0
        deli_list = []
        array.each do |name|
            counter += 1
            deli_list<<("#{counter}. #{name}")
        end
        puts "The line is currently: #{deli_list.join(" ")}"
    end
end

def take_a_number(array, name)
    if array.length == 0
        array << name
        puts "Welcome, #{name}. You are number #{array.length} in line."
    elsif array.length > 0
        array << name
        puts "Welcome, #{name}. You are number #{array.length} in line."
    end
end

def now_serving(array)
    if array.length == 0
        puts "There is nobody waiting to be served!"
    elsif array.length > 0
        puts "Currently serving #{array.first}."
        array.shift
    end
end

# line(other_deli)
# take_a_number(another_deli, "Amanda")
now_serving(other_deli)

# take_a_number(katz_deli, "Ada") #=> Welcome, Ada. You are number 1 in line.
# take_a_number(katz_deli, "Grace") #=> Welcome, Grace. You are number 2 in line.
# take_a_number(katz_deli, "Kent") #=> Welcome, Kent. You are number 3 in line.

# line(katz_deli) #=> "The line is currently: 1. Ada 2. Grace 3. Kent"

# now_serving(katz_deli) #=> "Currently serving Ada."

# line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent"

# take_a_number(katz_deli, "Matz") #=> Welcome, Matz. You are number 3 in line.

# line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent 3. Matz"

# now_serving(katz_deli) #=> "Currently serving Grace."

# line(katz_deli) #=> "The line is currently: 1. Kent 2. Matz"