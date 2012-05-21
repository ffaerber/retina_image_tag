# retina_image_tag

A high-resolution image is loaded when the retina_image_tag is called from a retina display

more info about the problem: http://theindustry.cc/2012/03/30/2x-the-retina-dilemma/

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

<%= retina_image_tag 'foo.jpg', :alt => 'BrainHead', :class => 'some-class' %>

add :size => "@1x" so the foo@2x.jpg is the same size as foo.jpg

<%= retina_image_tag 'foo.jpg', :alt => 'BrainHead', :class => 'some-class', :size => "@1x"  %>


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
