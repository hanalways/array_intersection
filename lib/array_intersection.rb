# Returns a new array to that contains elements in the intersection of the two input arrays

# Brute Force
# Time complexity: O(n) * O(m), where n and m are the number of elements in each respective array
# Space complexity: O(n) * O(m), where n and m are the number of elements in each respective array
def intersection(array1, array2)
  return_array = []

  unless array1.nil? || array2.nil? 
    array1.each do |i|
      array2.each do |j|
        if i == j
          return_array << i  
        end
      end
    end
  end
  return return_array
end

## Attempt 1 at Hash Table
# def intersection(array1, array2)
#   return_array = []
#   hash_table = {}

#   unless array1.nil? || array2.nil?
#     if array1.count < array2.count
#       array1.each do |i|
#         hash_table = {
#           i => 1
#         }
#       end
#     end

#     array2.each do |j|
#       if hash_table.key?(j)
#         return_array << j
#       end
#     end
#   end

#   return return_array
# end
