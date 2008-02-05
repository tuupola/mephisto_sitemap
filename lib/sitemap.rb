module Mephisto
  module Plugins
    class Sitemap < Mephisto::Plugin
      author 'Mika Tuupola'
      version '0.1.1'
      homepage "http://www.appelsiini.net/projects/mephisto_sitemap"
      notes "Automatically generates sitemap of your site."
      
      option :frontpage_frequency, 'daily'
      option :frontpage_priority, '1.0'
      option :section_frequency, 'daily'
      option :section_priority, '0.9'
      option :article_frequency, 'daily'
      option :article_priority, '0.5'
      
      add_route 'sitemap.xml', :controller => 'sitemap', :action => 'index'            
    end
  end
end
      
