
class Insects::Scraper

    def self.ant_scraper
        url = "https://pestworldforkids.org/pest-guide/ants"
        unparsed_page = HTTParty.get(url)
        parsed_page = Nokogiri::HTML(unparsed_page.body)
       
        ant_info = parsed_page.css("div.content-block.orange-border")
        ant_info.collect do |ant_data|
            ant= {
                :name => ant_data.css("div h2").text,
                :description => ant_data.css("div p").text.strip,
                :size => ant_data.css("li")[0].text.split(' ')[1..-1].join(' '),
                :diet => ant_data.css("div.pest-details")[0].text.split(' ')[1..-1].join(' '),
                :habitat => ant_data.css("div.pest-details p")[1].text.strip}
            end
        
    end    

    def self.bee_scraper
        url = "https://pestworldforkids.org/pest-guide/bees"
        unparsed_page = HTTParty.get(url)
        parsed_page = Nokogiri::HTML(unparsed_page.body)
        
        bee_info = parsed_page.css("div.content-block.orange-border") 
        bee_info.collect do |bee_data|
            
            bee= {
                :name => bee_data.css("div h2").text,
                :description => bee_data.css("div p").text.strip,
                :size => bee_data.css("li")[0].text.gsub("\"", "").split(' ')[1..-1].join(' '),
                :diet => bee_data.css("div.pest-details")[0].text.split(' ')[1..-1].join(' '),
                :habitat => bee_data.css("div.pest-details p")[1].text.strip}
            end
            
    end    
end 