class Xmas
  attr_accessor :gift, :gifts_array, :days

  #Class variable to store all days
  @@days = %w(first second third fourth fifth sixth seventh eighth ninth tenth eleventh twelfth)

  #Class variable to store all gifts
  @@gifts = ["a partridge in a pear tree", "two turtle doves", "three french hens", "four calling birds", "FIVE GOLDEN RINGS",
    "six geese-a-laying", "seven swans-a-swimming", "eight maids-a-milking", "nine ladies dancing", "ten lords-a-leaping",
    "eleven pipers piping", "twelve drummers drumming"]

  #Class method to return the correct gifts for a given day
  def self.gifts(number)
    #Array to store selected gifts
    @gifts_array = []

    #Loop to select gifts based on number given as argument
    counter = -1
    until counter == number do
        @gifts_array.push(@@gifts[number])
        number -= 1
    end

    #If more than one gift is selected, the last line is replaced
    if @gifts_array.length > 1
      @gifts_array[-1] = "and a partridge in a pear tree"
    end

    return @gifts_array
  end

  #Class method to return the verse with the correct day(s) & gift(s)
  def self.verse(number)
    #Calls the gifts method to return selected gifts
    gifts(number)

    #Creates the string with the correct day and gift(s)
    verse = "On the #{@@days[number]} day of Christmas my true love gave to me\n#{@gifts_array.join("\n")}"

    return verse
  end

  #Class method to return the full song
  def self.sing
    #Array to store whole song
    song = []

    counter = 0

    #Loops 12 times to return each verse for a given day
    12.times do
      song.push(verse(counter))
      counter += 1
    end

    #Joins together the strings to return the full song (with spacing)
    return song.join("\n\n")
  end

end
