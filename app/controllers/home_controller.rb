class HomeController < ApplicationController

  require 'nokogiri'
  require 'open-uri'

  def index
    
    
    doc = Nokogiri::HTML(open('http://www.naver.com'))
    @naver = []
    doc.css('.ah_l')[0].css('.ah_k').each do |n|
      @naver << n.text
    end

  end

end
