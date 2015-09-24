require 'nokogiri'
require 'open-uri'

PAGE_URL = "http://joongang.joins.com/"

page = Nokogiri::HTML(open(PAGE_URL))


link_tags = page.css('.main_article li a') 
link_tags.each do |link|
    puts "타이틀 : " + link.text

    newUrl = link['href'].to_s
    
    page = Nokogiri::HTML(open(newUrl))

    articles = page.css('.article_body')

    mainbody = []

    articles.each do |article|
    mainbody.push article.text
    end
    
    print "내용 :"
    puts mainbody

    
end
