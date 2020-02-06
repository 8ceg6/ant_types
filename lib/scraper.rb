
class Ants::Scraper


    def self.scraper
        url = "https://pestworldforkids.org/pest-guide/ants"
        unparsed_page = HTTParty.get(url)
        parsed_page = Nokogiri::HTML(unparsed_page)
        # ant_array = []
        ant_info = parsed_page.css("div.content-block.orange-border")
        ants = [] 
        ant_info.collect do |ant_data|
            ant= {
                :name => ant_data.css("div h2").text,
                :description => ant_data.css("div p").text.strip,
                :size => ant_data.css("li")[0].text.split(' ')[1..-1].join(' '),
                :diet => ant_data.css("div.pest-details")[0].text.split(' ')[1..-1].join(' '),
                :habitat => ant_data.css("div.pest-details p")[1].text.strip}
                # ant = {:name =>name, :description => description, :size => size,
                        # :diet => diet, :habitat => habitat}
                ants << ant 
            #   binding.pry
                end
                ants
    
        # binding.pry
    end    
    
end 