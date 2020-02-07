
class Ants::AntType
      
     attr_accessor :name, :description, :size, :diet, :habitat

    @@all = []

    def initialize(ant_hash)
        @name = ant_hash[:name]
        @description = ant_hash[:description]
        @size = ant_hash[:size]
        @diet = ant_hash[:diet]
        @habitat = ant_hash[:habitat]
        @@all << self
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