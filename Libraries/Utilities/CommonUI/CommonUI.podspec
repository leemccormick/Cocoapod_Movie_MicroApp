
Pod::Spec.new do |spec|

  spec.name         = "CommonUI"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of CommonUI."
  spec.description = "A CommonUI pod for demonstration purposes."
  spec.homepage     = "http://EXAMPLE/CommonUI"
  spec.license      = "MIT"
  spec.author             = { "Lee McCormick" => "lee.mccormick@dialexa.com" }
  spec.source    = { :path => '.' }
  spec.source_files  = "CommonUI/**/*.{swift}"
  spec.swift_versions = '5.0'
  spec.ios.deployment_target = "17.0"

end
