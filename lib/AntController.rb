class Ants::AntController

    
    # def initialize
          
    # end

    def run
        
        puts "Welcome, to Ant info app. select an ant." 
        ant_array = Ants::Scraper.scraper
        ant_array.each do |a_h|
        a_h = Ants::AntType.create_from_hash(ant_array)
        end 
    
         binding.pry
    end 

    
end 