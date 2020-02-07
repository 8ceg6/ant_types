class Ants::AntController
        
    def run
        # self.intro
        self.new_ant
        self.list_ants
        self.ant_selection
        # self.details_list
        # self.ant_details(ant_choice)
        #  binding.pry
    end 
    def intro        
        puts "Please select a number to learn more."
        selection = list_ants
        
    end 
    
    def new_ant
        ant_array = Ants::Scraper.scraper
        Ants::AntType.create_from_hash(ant_array)
        # binding.pry
    end 
    
    def list_ants
            puts "please select an ant by number to learn more."
            ant_list = Ants::AntType.all.sort{|a,b| a.name <=> b.name}
            ant_list.each.with_index(1) do |a,i|
            puts "#{i}. #{a.name}"
            end
        # binding.pry
    end

    def main_menu
        puts "press exit"
    end
    def ant_selection
            ant_choice = gets.strip.to_i
            choice =self.ant_details(ant_choice)
            
    end 
    
    def  ant_details(ant_choice)
            details = list_ants[ant_choice -1]
             puts
             puts "SELECTED DETAILS FOR #{details.name.upcase}"
             puts "" 
             puts "DESCRIPTION- #{details.description}"
             puts ""
             puts "HABITAT- #{details.habitat}"
             puts ""
             puts "DIET- #{details.diet}"
             puts ""
             puts "SIZE- #{details.size}"
        #   binding.pry 
    end  
       
    
    
        
      
    
end 