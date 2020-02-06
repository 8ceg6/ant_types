
class Ants::AntType
      
     attr_accessor :name, :description, :size, :diet, :habitat

    @@all = []

    def initialize(ant_array)
        @name = ant_array[:name]
        @description = ant_array[:description]
        @size = ant_array[:size]
        @diet = ant_array[:diet]
        @habitat = ant_array[:habitat]
        # ant_hash.each do|key, value|
        #     self.send("#{key}=", value) 
        @@all << self
        #  binding.pry
        # end
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