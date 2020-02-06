
class Ants::AntType
      
     attr_accessor :name, :description, :size, :diet, :habitat

    @@all = []

    def initialize(ant_hash)
        # binding.pry
        @name = ant_hash[:name]
        @description = ant_hash[:description]
        @size = ant_hash[:size]
        @diet = ant_hash[:diet]
        @habitat = ant_hash[:habitat]
        @@all << self
        # binding.pry
    end 

    

    def self.create_from_hash(ant_array)
        ant_array.each do |a_hash|
            self.new(a_hash)
        end
    end 

    def self.find_by(input)
        @@all.detect {|n|n.name == input}
        binding.pry
    end 
    
    def self.all
        @@all
    end

end 