class SitemapController < ApplicationController
  self.template_root = File.join(File.dirname(__FILE__),'../', 'views')
  session :off  
  layout nil

  def index
    @articles = Article.find(:all, :conditions => "published_at is not null")  
    @sections = site.sections.find(:all)  
  end

end