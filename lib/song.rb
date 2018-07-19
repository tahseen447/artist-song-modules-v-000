require 'pry'

class Song
<<<<<<< HEAD
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable

=======
  extend Memorable
>>>>>>> be1ad581998e0f1a3b8d9929ea05147f42f9d3a2
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

  def artist=(artist)
    @artist = artist
  end

<<<<<<< HEAD
=======
#  def self.reset_all
#    @@songs.clear
#  end

  def to_param
    name.downcase.gsub(' ', '-')
  end

#  def self.count
#    self.all.count
#  end

>>>>>>> be1ad581998e0f1a3b8d9929ea05147f42f9d3a2
  def self.all
    @@songs
  end
end
