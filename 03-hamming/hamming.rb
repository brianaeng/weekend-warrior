class Hamming

  def self.compute(dna1, dna2)
    if dna1.length != dna2.length
      raise ArgumentError
    else
      dna1_array = dna1.split("")
      dna2_array = dna2.split("")

      ham_diff = 0

      counter = 0
      dna1_array.each do |letter|
        if letter != dna2_array[counter]
          ham_diff += 1
        end
        counter += 1
      end

      return ham_diff
    end
  end

end
