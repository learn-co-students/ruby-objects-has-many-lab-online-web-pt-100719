# artists HAVE MANY songs
# song BELONGS TO an artist

class Artist 
    attr_accessor :name, :songs

    def initialize(name)
        @name = name
        @songs = []     
    end
    
end 

    # def add_song(song)
    #    @songs << song
    #    song.artist = self
    # end
    
    # def songs
    #   @songs
    # end
