# retina_image_tag

### How it Works
retina_image_tag is a ViewHelper for Rails 3.1. in contrast to the normal Rails image_tag knows the retina_image_tag if the user invokes an image on a Apple Retina Display.
When the page loads on the screen, a cookie hold the devicePixelRatio set by JavaScript.
When an image is requested by the server, retina_image_tag checks for the following.
A cookie holding devicePixelRatio exists.
The value set in the cookie is greater than 1.
If any of the above are false, it will send the regular image. 
Otherwise, the high-res image is sent.

### Example
herokuapp: <http://retinaimagetag.herokuapp.com/>

sourcecode: <https://github.com/ffaerber/retina_image_tag_demoapp/>


### Benfits
* Only one image is loaded by the view.
* compatible with the rails 3 assetpipline. like assethost and assets:precompile
* no photoshop is needed, an rake task is includet for downsclaing to normal size.
* Compatible with Carrierwave for user genereted retina images
* Fallback to regular image if JavaScript and Cookies are disabled.


### Retina Display
The Retina Display on the iPhone4 and iPad3 doubles the pixel resolution of the display.
You can think about a full screen display with dimensions of 320x480 for iPhone4 and 1024x768 for iPad3. The big difference is that these dimensions are now expressed in points not in pixels. What has changed is the scaling factor of the screen which determines how a point relates to a pixel. The iPhone4 retina display has a scale of 2 so that 1 point = 2 pixels.

### @2x
The '@2x' naming convention will be instantly familiar to any iOS developer. It's simply a way of naming an alternate, high-resolution version of an image so that it will be recognized and used by high-resolution Retina Displays.





## Installation

Add this line to your application's Gemfile:

    gem 'retina_image_tag'

add this line to application.js:
	
	//= require retina_image_tag

And then execute:

    $ bundle




## Usage via Asset Pipeline
 
```erb
<%= retina_image_tag 'foo.jpg', :size => "400x400" %>
```


## Workflow

start working with the @2x version.

To scale down the @2x images run `rake retina_image_tag:convert`, the rake task will look for @2x image in `app/assets/images/`, creates a copy and renames those files and reduces the image dimensions.

before:

* `foo@2x.jpg (800x800px)`
* `subdir/bar@2x.png (1000×556px)` 

after:

* `foo@2x.jpg (800x800px)`
* `foo.jpg (400x400px)`
* `subdir/bar@2x.png (1000×556px)`
* `subdir/bar.png (500×278px)`


## Usage via CarrierWave
 
```erb
<%= retina_image_tag @picture.image.thumb %>
```

Uploader: <https://github.com/ffaerber/retina_image_tag_demoapp/blob/master/app/uploaders/image_uploader.rb>



## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
