require 'pry'

class Song
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    new_song = self.new
    @@all << new_song
    new_song
  end

  def self.new_by_name(name)
    new_song = self.new
    new_song.name = name
    new_song
  end

  def self.create_by_name(name)
    new_song = self.new_by_name(name)
    new_song.save
    new_song
  end

  def self.find_by_name(name)
    @@all.detect do |s|
      s.name == name
    end
  end

  def self.find_or_create_by_name(name)
    temp_namer = self.find_by_name(name) if self.find_by_name(name)
    temp_namer ||= self.create_by_name(name)
    temp_namer
  end

  def self.alphabetical
    @@all.collect {|s| s.name}.sort
  end

end
