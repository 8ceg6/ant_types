
class Ants::AntType
      
    # attr_accessor :name, :description, :size, :diet, :habitat

    @@all = []

    def initialize(ant_hash)
        @@all << self
    end 

    def self.create_from_hash(ant_array)
        ant_array.each do |a_hash|
            self.new(a_hash)
            #  binding.pry
        end
    end 
    
    def self.all
        @@all
    end

    

end 