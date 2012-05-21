module RetinaImageTag
  module ViewHelpers
    def retina_image_tag(image)
       @file_path    = asset_path(image)
       @file_ext     = File.extname(@file_path)
       @file_name    = File.basename(@file_path, @file_ext)
       @file_dirname = File.dirname(@file_path)
     
       @devicePixelRatio = cookies[:devicePixelRatio]
     
       @normal_image_tag = image_tag(@file_path)
       @retina_image_path = @file_dirname+"/"+@file_name+"@2x"+@file_ext
     
       if @devicePixelRatio != '1'
         image_tag(@retina_image_path)
       else
         @normal_image_tag
       end
     end
  end
end