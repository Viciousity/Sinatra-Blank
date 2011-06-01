
# PROJECT-NAME : Description.
# |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||| v0.1 ||



# Load Gems via Bundler.
# ========================================================================
  require 'bundler'
  Bundler.require



# Load application librairies.
# ========================================================================
  require 'app/controllers/library'
  require 'app/helpers/library'
  require 'app/models/library'



# Main framework configuration.
# ========================================================================
  enable :sessions

  set :environment, :developement
  set :public,       Proc.new { File.join(root, "./public") }
  set :views,        Proc.new { File.join(root, "./app/views") }



# Application launcher.
# ========================================================================
  run Sinatra::Application