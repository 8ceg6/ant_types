class Ants::AntController
        
    def run
        intro
        new_ant
        list_ants
        ant_selection
        # ant_details(ant_choice)
        next_action
    end 
    def intro        
        puts ""
        puts "SELECT AN ANT BY NUMBER TO LEARN MORE.".colorize(:yellow)
        puts ""
        # selection = list_ants
        
    end 
    
    def new_ant
        ant_array = Ants::Scraper.scraper
        Ants::AntType.create_from_hash(ant_array)
    end 
    
    def list_ants
            ant_list = Ants::AntType.all.sort{|a,b| a.name <=> b.name}
            ant_list.each.with_index(1) do |a,i|
            puts "#{i}. #{a.name}"
            end
    end

    def next_action(selection)
        if selection == 1 
            self.list_ants
            self.ant_selection
        elsif selection == 2
            exit   
        else 
            self.invalid 
        end
    end

    def invalid 
            puts ""
            puts "!!!ERROR SELECT AGAIN!!!".colorize(:red)
            puts ""
            puts "1. Ant List".colorize(:green)
            puts "2. To Exit".colorize(:green)
            puts ""
        selection = gets.strip.to_i
        self.next_action(selection)
    end
    
    def ant_selection
            ant_choice = gets.strip.to_i
            # ant_details(ant_choice)
            if ant_choice > 5.to_i || ""
                invalid 
            else
                
            binding.pry
            end
    end 
    
    def  ant_details(ant_choice)
            
             details = Ants::AntType.all[ant_choice -1]
             
             puts ""
             puts "DETAILS FOR #{details.name.upcase}".colorize(:yellow)
             puts "" 
             puts "DESCRIPTION- ".colorize(:yellow) + " #{details.description}"
             puts ""
             puts "HABITAT- ".colorize(:yellow) + " #{details.habitat}"
             puts ""
             puts "DIET- ".colorize(:yellow) + " #{details.diet}"
             puts ""
             puts "SIZE- ".colorize(:yellow) + " #{details.size}"
             puts ""
             
             puts "PRESS NUMBER FOR NEXT ACTION"
             puts ""
             puts "1. Ant List".colorize(:green)
             puts "2. To Exit".colorize(:green)
             puts ""
             selection = gets.strip.to_i
             self.next_action(selection)
    end  
end 