class Ants::BeeType
      
    attr_accessor :name, :description, :size, :diet, :habitat

   @@all = []

   def initialize(bee_hash)
       @name = ant_hash[:name]
       @description = ant_hash[:description]
       @size = ant_hash[:size]
       @diet = ant_hash[:diet]
       @habitat = ant_hash[:habitat]
       @@all << self
   end 

   def self.create_from_hash(bee_array)
       bee_array.each do |b_hash|
           self.new(b_hash)
       end
   end 

   def self.all
       @@all
   end
end 