module RetinaImageTag
  mattr_accessor :app_root
  
  def self.setup
    yield self
  end
end

require "retina_image_tag/engine"