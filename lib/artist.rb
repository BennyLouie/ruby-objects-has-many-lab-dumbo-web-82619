class Artist

    attr_accessor(:name)

    def initialize(name)
        @name = name
    end

    def add_song(song)
        song.artist = self
    end

    def songs
        Song.all.select { |song| song.artist == self}
    end

    def add_song_by_name(song)
        Song.new(song).artist = self
    end
    
    def Artist.song_count
        total = Song.all.each { |song| song.artist == self}
        total.size
    end
end