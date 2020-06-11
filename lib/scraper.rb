require 'nokogiri'
require 'open-uri'

require_relative './course.rb'

class Scraper
  attr_reader :doc
  def get_page
    html = open("http://learn-co-curriculum.github.io/site-for-scraping/courses")
    @doc = Nokogiri::HTML(html)
  end
  
  def get_courses
    doc.css("")
  end
  
  def make_courses
    course = Course.new
  end
  
  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title && course.title != ""
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end
  
end



