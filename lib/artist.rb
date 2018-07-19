require 'pry'

class Artist
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  include Paramable
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def self.find_by_name(name)
    @@artists.detect{|a| a.name == name}
  end

  def initialize
    super
    @songs = []
  end

  def self.all
    @@artists
  end

  #def self.reset_all
  #  self.all.clear
  #end

  #def self.count
  #  @@artists.count
  #end
>>>>>>> be1ad581998e0f1a3b8d9929ea05147f42f9d3a2

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end
