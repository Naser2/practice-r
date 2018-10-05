# class Listing
#
#   # A Listing (i.e. apartment) has many trips
#   # A Guest has many trips
#   # A Trip belongs to a listing and a guest
#   # A listing has a city attribute which is a string of a city name, e.g. 'Seattle'
#   # It cannot be changed after it is initialized
#
# 	attr_accessor :city
#
# 	@@all = []
#
# 	def initialize(city)
#     @city = city
# 		@@all << self
# 	end
#
# 	def self.all # return all listings instances
# 		@@all
# 	end
# #
#
# def guests   #In Listing #guests Returns an array of all Guest instances who have stayed at a listing
#  # Trip.all.map do |trip|  trip.listing == self
#  #            trip.guest
#  # end
#  Trip.all.map do |guest|
#     if guest.listing == "Boston"
#        guest.listing
#     end
#  end
#      #itterate through Trip & find listing check if any guesst stayed there and return all those who styed at that listin
# end
#
#
# def trips
# 		Trip.all.select do |trip|
# 		trip.listing == self
# 	end
# end
# #
# #
# # 	Listing#trips
# # #Returns an array of all Trip instances at a listing
# #
# #
# #
#   def all_trip_listings # return all instances of listings of trip
#   	listing_trips = Listing.all.map do |listing|
#   		listing.trip = self
#   		end
#   	end
# #
# #   	def tripCount(all_trip_listings) # Should return the number of trip taken at that listing
# #   		total = all_trip_listings
# #   		count = total.length
# #   		count
# #   	end
# #
# #
# #   	#Returns all trips by city names
# #   	def find_all_city(city_name)
# #   		self.all.map do  |trip|
# #   		trip.city == city_name
# #   		end
# #   	end
# #
#
#
#
# end



class Listing

attr_reader :city
@@all = []
   def initialize(city, count = 0)
     @city=city
     @@all << self
   end

   def guests
     Trip.all.select do |guest|
       guest.listing == self
     end
   end

   def trips
     Trip.all.select do |trip|
       trip.listing == self
   end
 end


#class variable @@all iterate through.
 def self.most_popular
   # Trip.all.map do |trip|
    trips.mode
  # end

   #Finds the listing that has had the most trip

 end


   def trip_count
     trips.count
   end

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
