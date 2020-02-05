class Ants::AntController

    
    # def initialize
          
    # end

    def run
        Ants::AntType.create_from_hash(ant_hash)
        # puts "Welcome, please select an ant" 
        
        # binding.pry
    end 

    
end 