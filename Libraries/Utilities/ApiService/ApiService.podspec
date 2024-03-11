
Pod::Spec.new do |spec|

  spec.name         = "ApiService"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of ApiService."
  spec.description = "A ApiService pod for demonstration purposes."
  spec.homepage     = "http://EXAMPLE/ApiService"
  spec.license      = "MIT"
  spec.author             = { "Lee McCormick" => "lee.mccormick@dialexa.com" }
  spec.source    = { :path => '.' }
  spec.source_files  = "ApiService/**/*.{swift}"
  spec.swift_versions = '5.0'
  spec.ios.deployment_target = "17.0"
  spec.dependency 'DataModels', '~> 0.0.1'

end
