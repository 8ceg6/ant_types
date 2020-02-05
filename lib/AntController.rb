class Ants::AntController
        attr_accessor :ant_array
    
    def initialize
        @ant_array = Ants::Scraper.scraper
    end

    def run
        self.intro
        self.new_ant(ant_array)
        self.list_ants
        # ant_array = Ants::Scraper.scraper
        # ant_array.each do |a_h|
        # a_h = Ants::AntType.create_from_hash(ant_array)
        # end 
    end 
    def intro        
        puts "please select an ant to learn more."
    end 
    def new_ant(ant_array)
        ant_array = Ants::Scraper.scraper
        ant_array.each do |a_h|
        a_h = Ants::AntType.create_from_hash(ant_array)
        end
         binding.pry
    end 
    
    def list_ants
         @ant_array[0]
        # binding.pry
    end 
end 