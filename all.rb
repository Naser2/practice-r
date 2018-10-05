class Guest
attr_reader :name

@@all = []

 def initialize(name)
   @name = name
   @@all << self
 end

 #Class method!  Iterate over @@all array to find guest with that name.
 #could be more than one persone with the same name.
 def self.find_all_by_name(name)
   @@all.select do |guest|
     guest.name == name

   end
 end

#return and array.
#this array will return all (city instances) a specific user has stayed at.
#iterate through the trip.all and select all instancese == to that users self.
#returns list of all listings a guest stayed at.
 def listings
   Trip.all.select do |listing|
     listing.guest == self
   end
 end

 #iterate through the Trip @@all array a guest has taken.
 #should return all trips guest has taken

   def trips
     Trip.all.select do |trips|
       trips.guest == self
     end
   end

   def trip_count
     trips.count
   end


#self.all returns an array of ALL the Guest instances created.
 def self.all
@@all
 end
end





   ## ******************* TRIP



class Trip

attr_reader :guest, :listing
attr_accessor :duration

@@all=[]

 def initialize(guest, duration, listing)
   @guest= guest
   @duration = duration
   @listing = listing
   @@all<< self
 end
#Returns all of the Class variable instances created.
#empty array at first and then populates it as guests initialize a new trip
 def self.all
   @@all
 end


   def listing
       Trip.all.find do |instance|
         instance == self
       end
   end
end



###   ***********  LISTING

class Listing

attr_reader :city
@@all = []
   def initialize(city, count = 0)
     @city=city
     @@all << self
   end

#This method will return and array of all of guests.
#These guests have have all stayed at this listing instance.
#should return only two people cory and dave who have stayed at Seattle
#worked first try
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
