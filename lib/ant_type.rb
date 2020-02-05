
class Ants::AntType
    attr_accessor :name, :description, :size, :diet, :habitat

    @@all = []

    def initialize(ant_group)
        @name= [:name]
        @description = [:description]
        @size = [:size]
        @diet = [:diet]
        @habitat = [:habitat]
        self << @@all
        binding.pry
    end 


end 