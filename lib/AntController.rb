class Ants::AntController
        
    
    def initialize
        # self.new_ant
    # binding.pry
    end

    def run
        self.intro
        self.new_ant
        self.list_ants
       
          binding.pry
    end 
    def intro        
        puts "please select an ant to learn more."
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
end 