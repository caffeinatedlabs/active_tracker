module ActiveTracker
  #TODO: unjankify this
  
  $LOAD_PATH.unshift( File.join( File.dirname(__FILE__), 'providers' ) ) 
  require 'kissmetrics'
  require 'mixpanel'  
end