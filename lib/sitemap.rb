module Mephisto
  module Plugins
    class Sitemap < Mephisto::Plugin
      author 'Mika Tuupola'
      version '0.0.1'
      homepage "http://www.appelsiini.net/projects/mephisto_sitemap"
      notes "Automatically generates sitemap of your site."
      
#      option :something, 'else'
      
      add_route 'sitemap.xml', :controller => 'sitemap', :action => 'index'            
    end
  end
end
      
