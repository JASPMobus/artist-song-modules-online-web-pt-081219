require 'pry'
require_relative '../lib/concerns/memorable.rb'
require_relative '../lib/concerns/findable.rb'
require_relative '../lib/concerns/paramable.rb'

class Artist
  attr_accessor :name
  attr_reader :songs
  
  extend Memorable::ClassMethods
  extend Findable
  
  include Paramable
  include Memorable::InstanceMethods
  
  @@artists = []

  def initialize
    @songs = []
  end
  
  def self.all
    self.all
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
end
