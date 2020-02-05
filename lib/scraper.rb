
class Ants::Scraper


    def self.scraper
        url = "https://pestworldforkids.org/pest-guide/ants"
        unparsed_page = HTTParty.get(url)
        parsed_page = Nokogiri::HTML(unparsed_page)
        ant_group =[]
        ant_info = parsed_page.css("div.content-block.orange-border")
        ant_info.map do |ant_data|
            ant = {
                name: ant_data.css("div h2").text,
                description: ant_data.css("div p").text.strip,
                size: ant_data.css("li")[0].text,
                diet: ant_data.css("div.pest-details")[0].text.strip,
                habitat: ant_data.css("div.pest-details p")[1].text.strip
            }
            ant_group << ant 
            
        end
        ant_group
        # binding.pry
    end    
    
end 