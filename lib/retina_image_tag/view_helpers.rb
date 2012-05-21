require "image_size"

module RetinaImageTag
  module ViewHelpers
    
    
    def retina_image( pixel_ratio )
            
      if File.exist?(@rails_image_path+"/"+@file_name+"@#{pixel_ratio}x"+@file_ext)
        image_tag(@file_dirname+"/"+@file_name+"@#{pixel_ratio}x"+@file_ext, @options)
      else
        @normal_image_tag
      end
    end
    
    
    def retina_image_tag(image, options = {})
      @devicePixelRatio = cookies[:devicePixelRatio]
      @options          = options
      @rails_image_path = Rails.application.assets.paths.first
      @file_path        = asset_path(image)
      @file_ext         = File.extname(@file_path)
      @file_name        = File.basename(@file_path, @file_ext)
      @file_dirname     = File.dirname(@file_path)
      
      if @options[:size]  == '@1x'
        @options[:size] = ImageSize.path(@rails_image_path+"/"+@file_name+@file_ext).size.to_s  
      end
      
      @normal_image_tag  = image_tag(@file_path, @options)
      
      case @devicePixelRatio
        when '2'
          retina_image '2'
        when '1.5'
          retina_image '1.5'
        else
         @normal_image_tag
       end
     end
     
  end
end