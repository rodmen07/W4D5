# phase 1
# def my_min(arr)
#     min = 0
#     arr.each do |el|
#         arr.each do |el2|
#            min = el  if el < el2 && el < min 
#            min = el  if el > el2 && el2 < min
#         end
#     end
#     return min
# end

# phase 2

# def my_min(arr)
#     min = arr[0]
#     arr.each do |el|
#         min = el  if el < min 
#     end
#     min
# end




list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)  # =>  -5