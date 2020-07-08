require 'pry'

class Song
  attr_reader :name

  @@all = []

  def initialize(name)

  end

  def self.all
    @@all
  end

end
