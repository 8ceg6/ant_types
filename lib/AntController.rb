class Ants::AntController
        
    
    def initialize
        # self.new_ant
    # binding.pry
    end

    def run
        self.intro
        
         self.new_ant
        # self.list_ants
        # Ants::AntType.create_from_hash(ant_array)
        # ant_array.each do |a_h|
        # a_h = Ants::AntType.create_from_hash(ant_array)
        # end 
         binding.pry
    end 
    def intro        
        puts "please select an ant to learn more."
    end 
    
    def new_ant
        ant_array = Ants::Scraper.scraper
        Ants::AntType.create_from_hash(ant_array)
        
    #     # end
    #     #  binding.pry
    end 
    
    # def list_ants
    #      @ant_array[0]
    #     # binding.pry
    # end 
end 