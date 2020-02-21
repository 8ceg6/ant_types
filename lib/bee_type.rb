class Insects::BeeType
      
    attr_accessor :name, :description, :size, :diet, :habitat

   @@all = []

    def initialize(bee_hash)
        @name = bee_hash[:name]
        @description = bee_hash[:description]
        @size = bee_hash[:size]
        @diet = bee_hash[:diet]
        @habitat = bee_hash[:habitat]
        @@all << self
    end 

    def self.create_from_hash(bee_array)
        bee_array.each do |b_hash|
           self.new(b_hash)
        end
    end 

    def self.one_inch_bees 
        self.all.select { |bee| bee.size == "1"}
    end 

    def bees_of_size(size)
        self.all.select { |bee| bee.size == size}
    end
    
    def self.all
        @@all
    end
end 