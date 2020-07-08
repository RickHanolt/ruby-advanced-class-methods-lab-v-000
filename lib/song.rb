require 'pry'

class Song
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def self.create
    new_song = self.new
    @@all << new_song
    new_song
  end

end
