require "byebug"

def windowed_max_range(array, window_size)
    current_max_range = 0
    array.each_with_index do |el, i|
       if i <= (array.length - window_size)
            min = array[i...i + window_size].min
            max = array[i...i + window_size].max
            # debugger
            result = max - min
           if result > current_max_range
             current_max_range = result 
           end
       end
    end
    current_max_range
end

p windowed_max_range([1, 0, 2, 5, 4, 8], 2) # == 4 # 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) # == 5 # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) # == 6 # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) # == 6 # 3, 2, 5, 4, 8

class MyQueue

  def initialize
    @store = []
  end

  def enqueue

  end

  def dequeue

  end

  def peek

  end

  def window_size
    
  end

  def empty?

  end

end