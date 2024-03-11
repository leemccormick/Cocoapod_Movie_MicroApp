Pod::Spec.new do |spec|

  spec.name         = "TabMicro"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of TabMicro."
  spec.description = "A TabMicro App for demonstration purposes."
  spec.homepage     = "http://EXAMPLE/TabMicro"
  spec.license      = "MIT"
  spec.author             = { "Lee McCormick" => "lee.mccormick@dialexa.com" }
  spec.source    = { :path => '.' }
  spec.source_files  = "TabMicro/**/*.{swift}"
  spec.swift_versions = '5.0'
  spec.ios.deployment_target = "17.0"
  spec.dependency 'HomeMicro', '~> 0.0.1' 
  spec.dependency 'SearchMicro', '~> 0.0.1' 
  spec.dependency 'FavoriteMicro', '~> 0.0.1' 

end
