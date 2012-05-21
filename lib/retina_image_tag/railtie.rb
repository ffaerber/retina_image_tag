module RetinaImageTag
  class Railtie < Rails::Engine
    
    initialize "retina_image_tag.load_app_instance_data" do |app|
      RetinaImageTag.setup do |config|
        config.app_root = app.root
      end
    end

    initialize "retina_image_tag.view_helpers" do |app|
      ActionView::Base.send :include, ViewHelpers
    end
    
  end
end