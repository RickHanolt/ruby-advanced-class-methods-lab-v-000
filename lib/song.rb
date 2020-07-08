require 'pry'

class Song
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    self.
  end

  def self.all
    @@all
    binding.pry
  end

end
