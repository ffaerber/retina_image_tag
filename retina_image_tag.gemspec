# -*- encoding: utf-8 -*-
require File.expand_path('../lib/retina_image_tag/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Felix Faerber"]
  gem.email         = ["mail@ffaerber.com"]
  gem.description   = %q{A high-resolution image is loaded when the retina_image_tag is called from a retina display }
  gem.summary       = %q{A high-resolution image is loaded when the retina_image_tag is called from a retina display }
  gem.homepage      = "https://github.com/ffaerber/retina_image_tag"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "retina_image_tag"
  gem.require_paths = ["lib","vendor"]
  gem.version       = RetinaImageTag::VERSION
  gem.add_dependency "railties", "~> 3.1"
  
end
