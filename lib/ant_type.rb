
class Ants::AntType
      extend Ants::Scraper
    attr_accessor :name, :description, :size, :diet, :habitat

    @@all = []

    def initialize(ant_hash)
        # ant_hash.each{|key,value|self.send(("#{key}="), value)}
       
       
        @name= ant_hash[:name]
        @description = ant_hash[:description]
        @size = ant_hash[:size]
        @diet = ant_hash[:diet]
        @habitat = ant_hash[:habitat]
        self << @@all
        
    end 

    def self.create_from_hash(ant_array)
       ant_array= Ants::Scraper.ant_hash
        ant_array.each do |a_hash|
            self.new(a_hash)
            binding.pry
        end
    end 

    

end 