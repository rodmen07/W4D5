# Brute Force Solution

# def two_sum?(arr, target_sum)
#     arr.each_with_index do |ele1, i|
#         arr.each_with_index do |ele2, j|
#             return true if i < j && ele1 + ele2 == target_sum
#         end
#     end
#     false
# end

# Sorting Solution

def two_sum?(arr, target_sum)
    new_arr = arr.select { |ele| ele < target_sum }
    new_arr.sort!
    new_arr.each do |ele|
        target = target_sum - ele
        return true if target == new_arr.bsearch {|x| x <=> target }
    end
    false
end

arr = [0, 1, 5, 4, 2, 3]


p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false
