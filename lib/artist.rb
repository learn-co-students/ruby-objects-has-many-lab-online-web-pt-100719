class Artist
    attr_accessor :name
    @@all_artists = []

    def initialize(name)
        @name = name
        @@all_artists << self
    end

    def self.all_artists
        @@all_artists
    end

    def add_song(song)
        song.artist = self
    end

    def songs
        Song.all.select{|song| song.artist == self}
    end

    def add_song_by_name(name)
        song = Song.new(name)
        add_song(song)
    end

    def self.song_count
        all_songs = self.all_artists.collect {|artist| artist.songs}
        all_songs.flatten.count
    end
end