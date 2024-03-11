
Pod::Spec.new do |spec|

  spec.name         = "SearchMicro"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of SearchMicro."
  spec.description = "A SearchMicro pod for demonstration purposes."
  spec.homepage     = "http://EXAMPLE/SearchMicro"
  spec.license      = "MIT"
  spec.author             = { "Lee McCormick" => "lee.mccormick@dialexa.com" }
  spec.source    = { :path => '.' }
  spec.source_files  = "SearchMicro/**/*.{swift}"
  spec.swift_versions = '5.0'
  spec.ios.deployment_target = "17.0"

end

