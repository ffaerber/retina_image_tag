module RetinaImageTag
  module ViewHelpers
    
    
    def retina_image( pixel_ratio )
      @retina_image_path = image_path(@file_name+"@#{pixel_ratio}x"+@file_ext)
      image_tag(@retina_image_path, @options)
    end
    
    
    def retina_image_tag(image, options = {})
      @devicePixelRatio = cookies[:devicePixelRatio]
      @options          = options
      
      @file_path        = image_path(image)
      @file_ext         = File.extname(@file_path)                # .jpg, .png
      @file_name        = File.basename(@file_path, @file_ext)    # pic1, foo
      @file_dirname     = File.dirname(@file_path)
      
            
      case @devicePixelRatio
        when '2'
          retina_image '2'
        when '1.5'
          retina_image '2'
        else
          image_tag(@file_path, @options)
       end
     end
     
  end
end