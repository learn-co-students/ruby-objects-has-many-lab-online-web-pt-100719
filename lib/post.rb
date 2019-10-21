class Song 
  attr_accessor :name, :aurthur 
  
  @@all = []
  
  def initialize(name, aurthur=nil)
    @name = name
    @aurthur = aurthur
    @@all << self
  end
  
  def aurthur_name
    if self.aurthur
      self.aurthur.name
    else
      nil
    end
  end
  
  def self.all
    @@all
  end
end