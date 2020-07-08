require 'pry'

class Song
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def self.create
    new_song = self.new
    @@all << new_song
    new_song
  end

  def self.new_by_name(name)
    new_song = self.new
    @@all << new_song
    new_song
  end

end
