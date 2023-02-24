#phase 1
def first_anagram?(str1, str2)
    str1_arr = str1.split("")
    result = str1_arr.permutation.to_a.map{ |el| el.join("")}
    result.include?(str2)
end


# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true

# phase 2

def second_anagram?(str1, str2)
    str1.each_char do |letter|
        if str2.include?(letter)
            idx = str2.index(letter)
            str2[idx] = ""
        else 
            return false
        end
    end
    
    str2.empty?
end

p second_anagram?("gizmo", "sally")    #=> false
p second_anagram?("elvis", "lives")    #=> true