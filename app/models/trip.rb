class Trip

 attr_accessor :listing, :duration, :guest
 # attr_reader :guest

 @@all = []

  def initialize(guest, listing, duration)
    @guest = guest
    @listing = listing
    @duration = duration
    @@all << self
  end


  def self.all
    @@all
  end







end
