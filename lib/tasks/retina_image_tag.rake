require 'rmagick'

namespace :retina_image_tag do
  desc 'convert @2x images to normal images'
  task :convert do
    retina_images = Dir['app/assets/images/**/*@2x*']
      
    retina_images.each do |retina_image|
      img = Magick::ImageList.new(retina_image)
      x1 = img.resize(0.5)
      x1.write retina_image.delete "@2x"
    end
    
  end

end