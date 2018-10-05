require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



   # GUESTS

nick = Guest.new('Nick')
ben = Guest.new("Ben")
helen = Guest.new("Helen")


   #TRIPS

trip1 = Trip.new(nick, "Boston", 10) # BOston = 1guess

# trip2 = Trip.new(nick, "Forida", 5) #Miami 2
trip3 = Trip.new(ben, "Miami", 5)


# trip4 = Trip.new(ben, "New York", 4)  # New York 1


boston = Listing.new("Boston")
# listingFlorida = Listing.new("Folrida")
miami = Listing.new("Miami")


#
# [1] pry(main)> Listing.all
# => [#<Listing:0x00007f912dadf370 @city="Boston">,
#  #<Listing:0x00007f912dadf320 @city="New York">,
#  #<Listing:0x00007f912dadf2d0 @city="Miami">]

# [2] pry(main)> Guest.all
# => [#<Guest:0x00007f912dadf618 @name="Nick">,
#  #<Guest:0x00007f912dadf5a0 @name="Ben">,
#  #<Guest:0x00007f912dadf550 @name="Helen">]

# [3] pry(main)> Trip.all
# => [#<Trip:0x00007f8eea940ce8 @duration=10, @guest=#<Guest:0x00007f8eea940e00 @name="Nick">, @listing="Boston">,
#<Trip:0x00007f8eea940c70 @duration=5, @guest=#<Guest:0x00007f8eea940e00 @name="Nick">, @listing="Miami">,
#<Trip:0x00007f8eea940bd0 @duration=5, @guest=#<Guest:0x00007f8eea940db0 @name="Ben">, @listing="Miami">,
#<Trip:0x00007f8eea940b80 @duration=4, @guest=#<Guest:0x00007f8eea940db0 @name="Ben">, @listing="New York">]
# Put your variables here~!
binding.pry
