class Hamming

  #Class method to compare two strings for Hamming distance
  def self.compute(dna1, dna2)

    #Checks if the strings are the same length, raises error if different
    if dna1.length != dna2.length
      raise ArgumentError

    #Calculates the Hamming difference
    else
      #Turns strings to arrays
      dna1_array = dna1.split("")
      dna2_array = dna2.split("")

      #Initializes Hamming difference
      ham_diff = 0

      #Compares both arrays by popping off last item of each, adds to ham_diff if different
      dna1.length.times do
        if dna1_array.pop != dna2_array.pop
          ham_diff += 1
        end
      end

      return ham_diff
    end
  end

end

# # Initial solution:
# dna1_array = dna1.split("")
# dna2_array = dna2.split("")
#
# ham_diff = 0
#
# counter = 0
# dna1_array.each do |letter|
#   if letter != dna2_array[counter]
#     ham_diff += 1
#   end
#   counter += 1
# end
#
# return ham_diff

# # Another solution:
# array = (dna1.split("")).zip(dna2.split(""))
#
# ham_diff = 0
#
# array.each do |item|
#   if item[0] != item[1]
#     ham_diff += 1
#   end
# end
#
# return ham_diff
