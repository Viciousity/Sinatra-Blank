
# CONTROLLERS LIBRARY: Load controllers files.
# ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||



# Load Controllers.
# ========================================================================
  require File.join(File.dirname(__FILE__), 'static_controller')



# Transform Coffee scripts into JS.
# ========================================================================
  get '/javascripts/application.js' do coffee :'coffee/application'; end
