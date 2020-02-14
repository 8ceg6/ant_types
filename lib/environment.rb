require_relative "./ants/version"
require 'pry'
require 'httparty'
require 'nokogiri'
require_relative './ant_type'
require_relative './bee_type'
require_relative './scraper'
require_relative './AntController'
require 'colorize'
require 'colorized_string'
module Insects
  class Error < StandardError; end
  
end
