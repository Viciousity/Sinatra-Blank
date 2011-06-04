
# VIEWS HELPER : Short helpers for clear views.
# |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||



module ViewsHelper

  # HEADER___________________________________________________________

  def include_stylesheets list
    capture_haml do
      list.each { |name| haml_tag :link, :href=>"/stylesheets/#{name}.css", :media=>"screen", :rel=>"stylesheet", :type=>"text/css" }
    end
  end
  def include_javascripts list
    capture_haml do
      list.each { |name| haml_tag :script, :src=>"/javascripts/#{name}.js", :type=>"text/javascript"} 
    end
  end



  # GENERAL__________________________________________________________

  def link_to label, path, params={}
    attributes = Hash[:href=>path].merge(params)
    capture_haml { haml_tag :a, label, attributes }
  end
  def img_tag path, params={}
    attributes = Hash[:src=>"/images/#{path}"].merge(params)
    capture_haml { haml_tag :img, attributes }
  end

end