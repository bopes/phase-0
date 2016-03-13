# Create a Playlist from Driver Code

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.


# Pseudocode
=begin
1. Need a Class called 'Song'
2. Song needs to accept 2 arguments
3. Need a Class called 'Playlist'
4. Playlist needs to accept 3 arguments
5. Playlist needs a method called 'add'
6. Playlist.add needs 2 arguments
7. Playlist needs a method called 'num_of_tracks'
8. Song needs a method called 'play'
9. Playlist needs a method called 'remove'
10. Playlist.remove needs to accept 1 argument
11. Playlist needs an argument called 'includes?'
12. Playlist.includes? needs to accept 1 argument
13. Playlist needs a method called 'play_all'

=end

# Initial Solution

class Song

  attr_reader :title, :artist

  def initialize(title, artist)
    @title = title
    @artist = artist
  end

  def play
    puts "#{@title} by #{@artist}"
  end

end


class Playlist

  def initialize(*songs)
    @songs = []
    songs.each {|song| @songs << song}
  end

  def add(*songs)
    songs.each {|song| @songs << song}
  end

  def num_of_tracks
    @songs.length
  end

  def remove(title_to_find)
    @songs.delete(title_to_find)
  end

  def includes?(song_to_find)
    @songs.include?(song_to_find)
  end

  def play_all
    @songs.each{|song| song.play}
  end

end

# Refactored Solution






# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
my_playlist.num_of_tracks == 5
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection
