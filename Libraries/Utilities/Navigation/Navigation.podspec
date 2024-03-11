
Pod::Spec.new do |spec|

  spec.name         = "Navigation"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of Navigation."
  spec.description = "A Navigation pod for demonstration purposes."
  spec.homepage     = "http://EXAMPLE/Navigation"
  spec.license      = "MIT"
  spec.author             = { "Lee McCormick" => "lee.mccormick@dialexa.com" }
  spec.source    = { :path => '.' }
  spec.source_files  = "Navigation/**/*.{swift}"
  spec.swift_versions = '5.0'
  spec.ios.deployment_target = "17.0"

end
