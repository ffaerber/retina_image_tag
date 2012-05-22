module RetinaImageTag
  module ViewHelpers
    
    def retina_image( pixel_ratio )
      insert_on = -File.extname(@image).size-1
      image_tag(@image.insert(insert_on, "@#{pixel_ratio}x"), @options)
    end
    
    
    def retina_image_tag(image, options = {})
      @devicePixelRatio = cookies[:devicePixelRatio]
      @options          = options
      @image            = image             # foo.jpg, subdir/foo.png

      case @devicePixelRatio
        when '2'
          retina_image 2
        when '1.5'
          retina_image 2
        else
          image_tag(@image, @options)
       end
     end
     
  end
end