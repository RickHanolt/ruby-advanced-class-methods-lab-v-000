require 'pry'

class Song
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def self.create
    self.new
    binding.pry
end
