class Ants::AntController
        
    def run
        # self.intro
        self.new_ant
        self.list_ants
        self.selection
        self.details_list
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
        puts "please select an ant to learn more."
        @ant_list = Ants::AntType.all.sort{|a,b| a.name <=> b.name}
        @ant_list.each.with_index(1) do |a,i|
            puts "#{i}. #{a.name}"
            end
        # binding.pry
    end

    def details_list
        @list = Ants::AntType.all.select {|a,b|}
        @list.each.with_index(1) do |a,i|
        puts "#{i}. #{a.diet}"
        end
    end 
    
    def selection
        ant_choice = gets.strip.to_i
        ant_details(ant_choice)
    end 
    
    def ant_details(ant_choice)
         details = @ant_list[ant_choice -1]
         puts "Select more details for #{details.name}"
         self.details_list  
         binding.pry 
    end  
       
    
    # details = Ants::AntType.all 
            # details.each do |k,v|
            # end
            #     details.each do |k,v|
            #     puts "#{k.description} #{k.size}" 
            # end 
        
        
      
    
end 