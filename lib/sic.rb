require 'httparty'
require 'nokogiri'

require 'naics/version'

module SIC

  @search_url = 'https://www.osha.gov/pls/imis/sicsearch.html'

  def self.search(code)
  	@code = code
  	@doc = Nokogiri::HTML(result_page)
  	result = Hash.new
  	resutt[:code] = code
  	result[:description] = description
  	result
  end

  def self.result_page
  	HTTParty.post(@search_url, :query => {:p_sic => @code})
  end

  def self.description
  	arr = @doc.css("div.well a").text.split
  	arr.shift
  	(arr.length > 0) ? arr.join(' ') : nil 	
  end

  def self.version_info
    puts "SIC gem - v#{SIC::VERSION}"
    puts "Author: Ed de Almeida (edvaldoajunior@gmail.com)"
  end

end