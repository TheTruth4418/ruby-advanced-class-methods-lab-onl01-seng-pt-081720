class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.create
    name = self.new
    @@all << name
    return name
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
  song = self.new
  song.name = title
  @@all << title
end

  def save
    self.class.all << self
  end

end
