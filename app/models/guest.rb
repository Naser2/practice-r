class Guest

 attr_accessor :name
   @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def guests
    Trip.all.select do |guest|
      guest.listing == self
    end
  end

  #this method will return only trip  instances that it has had.
  #should return all linsting instances == self.
  #worked first try
  def trips
    Trip.all.select do |trip|
      trip.listing == self
  end
end


#class variable @@all iterate through.
def self.most_popular



end

#this method will count all of the a specific trip instance has had.
#I'm guessing I can use a previous method written. Trips method?
#will give me an integer back.

  def trip_count
    trips.count
  end

#this method will search the entire Listing Class variable @@all
#iterate through  and find listing instances by that (city)name.
# I will need to go through the trip.all and find what is related
#to the city passed in as an argument STRING!.
# returns the city instance.
#not sure if doing correctly.******
# had to search through @@all.  I was searching through Trip at first.
  def self.find_all_by_city(city)
    @@all.select do |listings|
      listings.city == city
    end

  end


#allows the class to be searched as self and call a method.  finding all
#instances created in this Class.
  def self.all
    @@all
  end

end
