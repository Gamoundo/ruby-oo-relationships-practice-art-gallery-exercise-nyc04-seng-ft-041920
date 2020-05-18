class Gallery

  attr_reader :name, :city

  @@all = []
 
  def initialize(name, city)
    @name = name
    @city = city
    
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|art| art.gallery == self}
  end

  def artist
    paintings.all.select {|art| art.artist}
  end

  def artist_names
    artist.select {|artist| artist.name}
  end

  def most_expensive
    paintings.max_by {|painting| painting.price}
  end










end
