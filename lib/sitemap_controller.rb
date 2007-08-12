class SitemapController < ApplicationController
  self.template_root = File.join(File.dirname(__FILE__),'../', 'views')
  session :off  
  layout nil

  def index
    Article.with_published do
      @articles = site.articles.find(:all)
    end
    @sections = site.sections.find(:all)  
  end

end