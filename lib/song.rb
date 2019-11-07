class Song 
    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
       @name = name
       @@all << @name
    end

end

# def self.all 
#     @@all
# end
