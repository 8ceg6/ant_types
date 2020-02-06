class Ants::AntController
        
    def run
        # self.intro
        self.new_ant
        self.list_ants
        self.selection
        self.ant_description
        #  binding.pry
    end 
    def intro        
        puts "Please select a number to learn more."
        selection = list_ants
        puts #{"selection"}
    end 
    
    def new_ant
        ant_array = Ants::Scraper.scraper
        Ants::AntType.create_from_hash(ant_array)
        # binding.pry
    end 
    
    def list_ants
        puts "please select an ant to learn more."
        @ant_list = Ants::AntType.all.sort{|a,b| a.name <=> b.name}
        @ant_list.each.with_index(1) do |a,i|
            puts "#{i}. #{a.name}"
            end
        # binding.pry
    end
    
    def selection
        ant_choice = gets.strip
    end 
    
    def ant_description
            details = Ants::AntType.all do |a,b|
            details.each{|d|d.description}
            binding.pry
            # puts "#{a.description}"
            
        end
        
    end   
    
end 