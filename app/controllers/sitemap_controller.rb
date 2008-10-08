class SitemapController < ApplicationController
  session :off  
  layout nil

  def index
    Article.with_published do
      @articles = site.articles.find(:all)
    end
    @sections = site.sections.find(:all) 
    @plugin   = Engines.plugins[:mephisto_sitemap]
  end

end