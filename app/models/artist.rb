class Artist

  attr_reader :name, :years_experience
      @@all = []
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|art| art.artist == self}
  end

  def self.total_experience
    sum = 0
    @@all.each do |artist|
      sum += artist.years_experience
    end
    sum

  end

  def create_painting(title, price, gallery)
      Painting.new(title, price, gallery, self)
    # painting.artist = self
    # painting.gallery.name = gallery
  end

  def galleries
    Gallery.all.select {|gallery| gallery.artist == self}
  end
  
  def cities
    cities = []
    self.galleries.each do |gallery|
      cities << gallery.city
    end
    cities
  end

  def self.most_prolific
    @@all.max_by do |artist|
       (artist.paintings.length/artist.years_experience)
    end
  end
      
      # should be similar to galleries most expensive. 
      # You are just worried about the price by itself in the gallery version.
  end










end
