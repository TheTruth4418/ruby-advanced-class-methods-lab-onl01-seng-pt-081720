require 'pry'
class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.create
    song = self.new
    @@all << song
    return song
  end

  def self.all
    @@all
  end

def self.new_by_name(title)
  song = self.new
  song.name = title
  song
end

def self.create_by_name(title)
  song = self.create
  song.name = title
  binding.pry
end

  def save
    self.class.all << self
  end

end
