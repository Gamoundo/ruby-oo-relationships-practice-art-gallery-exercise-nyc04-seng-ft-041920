require 'pry'
class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, gallery, artist)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    sum = 0
    @@all.each do |art|
      sum += art.price
    end
    sum
  end
end


Painting.new("Mona Lies", 10000029, "lo0vre", "Yurtzy")
Painting.new("Mona Lisp", 10000093, "louvre", "Yurt")
Painting.new("Mona Lists", 1030007, "lo0vre", "tim")
Painting.new("Mona Likes", 1000004, "louvre", "tom")


Painting.total_price

binding.pry