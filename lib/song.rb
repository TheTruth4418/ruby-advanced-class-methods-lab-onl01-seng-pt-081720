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
  song
end

def self.find_by_name(title)
  find = ""
  @@all.each do |song|
    if song.name == title
      find = song
    end
  end
  return find
end

  def save
    self.class.all << self
  end

end
