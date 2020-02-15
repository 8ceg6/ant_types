class Insects::AntController
       
    def run
        intro
        new_ant
        new_bee
        insect_choice
        ant_selection
        bee_selection
    end 
    
    def intro        
        puts ""
        puts "Welcome to Insect Info CLI".colorize(:yellow)
        puts "SELECT AN INSECT BY NUMBER TO LEARN MORE.".colorize(:yellow)
        puts ""
    end
    
    def new_ant
        ant_array = Insects::Scraper.ant_scraper
        Insects::AntType.create_from_hash(ant_array)
    end 

    def new_bee
        bee_array = Insects::Scraper.bee_scraper
        Insects::BeeType.create_from_hash(bee_array)
    end 

    def insect_choice
        puts "1. Ants"
        puts "2. Bees"
        puts "3. Exit"
        selection = gets.strip.to_i

        if  selection == 1 
            self.list_ants
        elsif selection == 2
            self.list_bees 
        elsif selection == 3
            exit
        else selection != 1 || 2 || 3
            invalid 
        end
    end 
   
    def list_ants
        puts "SELECT AN ANT BY NUMBER TO LEARN MORE.".colorize(:yellow)
        ant_list = Insects::AntType.all.sort{|a,b| a.name <=> b.name}
        ant_list.each.with_index(1) do |a,i|
        puts "#{i}. #{a.name}"
        end
        self.ant_selection
    end

    def list_bees
        puts "SELECT A BEE BY NUMBER TO LEARN MORE.".colorize(:yellow)
        bee_list = Insects::BeeType.all.sort{|a,b| a.name <=> b.name}
        bee_list.each.with_index(1) do |b,i|
        puts "#{i}. #{b.name}"
        end
         self.bee_selection    
    end

    def next_action(selection)
        if selection == 1 
            self.list_ants
        elsif selection == 2
            self.list_bees
        elsif selection == 3 
            exit   
        else 
         self.invalid 
        end
    end

    def invalid 
        puts ""
        puts "!!!---ERROR SELECT AGAIN---!!!".colorize(:red)
        puts ""
        puts "ENTER NUMBER FOR NEXT ACTION".colorize(:yellow)
        puts ""
        puts "1. Insect List".colorize(:green)
        puts "2. To Exit".colorize(:green)
        puts ""
        selection = gets.strip.to_i
        if selection == 1
            self.insect_choice
        elsif selection == 2 
            exit 
        else 
            invalid
        end
    end
    
    def ant_selection
        ant_choice = gets.strip.to_i
            
        if ant_choice >= 1.to_i &&  ant_choice <6.to_i
           self.ant_details(ant_choice) 
        else 
             invalid   
        end
    end 

    def bee_selection
        bee_choice = gets.strip.to_i
        
        if bee_choice >= 1.to_i &&  bee_choice <5.to_i
           self.bee_details(bee_choice) 
        else 
             invalid   
        end
    end 
    
    def ant_details(ant_choice)
        details = Insects::AntType.all[ant_choice -1]
         details(details)    
    end  

    def bee_details(bee_choice)
        details = Insects::BeeType.all[bee_choice -1]
         details(details)    
    end        
         
    def details(details) 
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
            puts "ENTER NUMBER FOR NEXT ACTION".colorize(:yellow)
            puts ""
            puts "1. Ant List".colorize(:green)
            puts "2. Bee List".colorize(:green)
            puts "3. To Exit".colorize(:green)
            puts ""
            selection = gets.strip.to_i
            self.next_action(selection)
     end 
end 
