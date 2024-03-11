
Pod::Spec.new do |spec|

  spec.name         = "UserData"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of UserData."
  spec.description = "A UserData pod for demonstration purposes."
  spec.homepage     = "http://EXAMPLE/DataModels"
  spec.license      = "MIT"
  spec.author             = { "Lee McCormick" => "lee.mccormick@dialexa.com" }
  spec.source    = { :path => '.' }
  spec.source_files  = "UserData/**/*.{swift}"
  spec.swift_versions = '5.0'
  spec.ios.deployment_target = "17.0"
  spec.dependency 'DataModels', '~> 0.0.1'

end
