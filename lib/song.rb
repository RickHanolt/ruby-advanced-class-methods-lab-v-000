require 'pry'

class Song
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def self.create
    self.new
    binding.pry
  end
end
