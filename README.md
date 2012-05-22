# retina_image_tag

A high-resolution image is loaded when the retina_image_tag is called from a retina display

more info about the problem: http://theindustry.cc/2012/03/30/2x-the-retina-dilemma/

exampleapp: http://retinaimagetag-demoapp.herokuapp.com/

exampleapp sourcecode: https://github.com/ffaerber/retina_image_tag_demoapp



## Installation

Add this line to your application's Gemfile:

    gem 'retina_image_tag'

add this line to application.js:
	
	$ //= require retina_image_tag

And then execute:

    $ bundle




## Usage

create a normal image: foo.jpg (400x400px)

and a @2x Retina Images: foo@2x.jpg (800x800px)

and use it like normal

<%= retina_image_tag 'foo.jpg', :size => "400x400" %>



## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
