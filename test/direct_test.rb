if defined?(JRUBY_VERSION)

require File.join(File.dirname(__FILE__), 'test_helpers')

require 'connection_test_methods'

class DirectTest < Test::Unit::TestCase
  
  include ConnectionTestMethods
  
  def setup
    base = File.expand_path( File.dirname(__FILE__) )
    dist = File.join(base, '..', 'apache-solr')
    home = File.join(dist, 'example', 'solr')
    @solr = Solr.connect(:direct, {:home_dir=>home, :dist_dir=>dist}, :auto_commit=>true)
  end
  
end

end