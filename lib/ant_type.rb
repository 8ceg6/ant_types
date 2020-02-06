
class Ants::AntType
      
     attr_accessor :name, :description, :size, :diet, :habitat

    @@all = []

    def initialize(ant_array)
        @name = ant_array[:name]
        @description = ant_array[:description]
        @size = ant_array[:size]
        @diet = ant_array[:diet]
        @habitat = ant_array[:habitat]
        @@all << self
        #  binding.pry
    end 

    def name
        @name 
    end 

    def description
        @description
    end

    def size
        @size
    end 

    def diet 
        @diet
    end 

    def habitat 
        @habitat 
        binding.pry
    end 

    def self.create_from_hash(ant_array)
        ant_array.each do |a_hash|
            self.new(a_hash)
        end
    end 
    
    def self.all
        @@all
    end

end 