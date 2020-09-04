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
  self.all.find{|song| song.name == title}
end

def self.find_or_create_by_name(title)
    self.create_by_name(title)
end

  def save
    self.class.all << self
  end

end
