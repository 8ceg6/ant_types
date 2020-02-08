class Ants::AntController
        
    def run
        # intro
        new_ant
        list_ants
        ant_selection
        # ant_details(ant_choice)
        # next_action
    end 
    def intro        
        puts "SELECT AN ANT BY NUMBER TO LEARN MORE."
        # selection = list_ants
        
    end 
    
    def new_ant
        ant_array = Ants::Scraper.scraper
        Ants::AntType.create_from_hash(ant_array)
    end 
    
    def list_ants
            # puts "SELECT AN ANT BY NUMBER TO LEARN MORE."
            ant_list = Ants::AntType.all.sort{|a,b| a.name <=> b.name}
            ant_list.each.with_index(1) do |a,i|
            puts "#{i}. #{a.name}"
            end
    end

    # def next_action(selection)
    #     if selection == 1 
    #         self.list_ants
    #         self.ant_selection
    #     else 
    #         exit    
    #     end

    # end
    def ant_selection
            ant_choice = gets.strip.to_i
            ant_details(ant_choice)
            
    end 
    
    def  ant_details(ant_choice)
            
             details = list_ants[ant_choice -1]
             
             puts ""
             puts "DETAILS FOR #{details.name.upcase}"
             puts "" 
             puts "DESCRIPTION- #{details.description}"
             puts ""
             puts "HABITAT- #{details.habitat}"
             puts ""
             puts "DIET- #{details.diet}"
             puts ""
             puts "SIZE- #{details.size}"
             puts ""
             
             puts "PRESS NUMBER FOR NEXT ACTION"
             puts ""
             puts "1. Ant List"
             puts "2. To Exit"
             puts ""
            #  selection = gets.strip.to_i
            #  self.next_action(selection)
         
    end  
end 