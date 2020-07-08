require 'pry'

class Song
  attr_reader :name

  @@all = []

  def initialize(name)
    binding.pry
  end

  def self.all

  end

end
