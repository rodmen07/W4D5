# phase 1

# def largest_contiguous_subsum(arr)
#     sums_arr = []
#     arr.each_with_index do |el, i|
#          arr.each_with_index do |el2, j|
#             if i <= j
#                 sums_arr << arr[i..j]
#             end
#          end
#     end
#     sums_arr.map! do |el|
#         el.sum
#     end
#     sums_arr.sort[-1]
# end

# phase 2

def largest_contiguous_subsum(arr)
    largest_sum = arr[0]
    current_sum = []
    arr.each_with_index do |num, i|
        current_sum[i] = current_sum[i - 1] ? [num, num + current_sum[i - 1]].max : num
        largest_sum = [largest_sum, current_sum[i]].max
    end
    largest_sum
end


list = [5, 3, -7]
p largest_contiguous_subsum(list) # => 8

# possible sub-sums
[5]           # => 5
[5, 3]        # => 8 --> we want this one
[5, 3, -7]    # => 1
[3]           # => 3
[3, -7]       # => -4
[-7]          # => -7

list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])

list = [-5, -1, -3]
p largest_contiguous_subsum(list) # => -1 (from [-1])
