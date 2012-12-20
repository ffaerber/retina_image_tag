module RetinaImageTag
  module ViewHelpers


    def retina_image( pixel_ratio )
      if @image.class.superclass.superclass.to_s == "CarrierWave::Uploader::Base"
        image_tag(@image, :size => @image.class.sizes[@image.version_name].join('x'))
      else
        insert_on = -File.extname(@image).size-1
        image_tag(@image.insert(insert_on, "@#{pixel_ratio}x"), @options)
      end
    end

    def retina_image_tag(image, options = {})
      @devicePixelRatio = cookies[:devicePixelRatio].to_i
      @options          = options
      @image            = image

      case @devicePixelRatio
        when 4
          retina_image 2
        when 3
          retina_image 2
        when 2
          retina_image 2
        when 1.5
          retina_image 2
        else
          if @image.class.superclass.superclass.to_s == "CarrierWave::Uploader::Base"
            image_tag(@image.normal)
          else
            image_tag(@image, @options)
          end
       end
     end

  end
end

