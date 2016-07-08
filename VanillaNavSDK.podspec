
Pod::Spec.new do |s|

  s.name         = "VanillaNavSDK"
  s.version      = "0.1"
  s.summary      = "VanillaNavSDK"


  s.homepage     = "http://vanillanav.com"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  #s.license      = "MIT"
  s.license      = { :type => "MIT", :file => "LICENSE" }


  s.author             = { "Danilov Dorin" => "d.danilov@rosoftlab.net" }
  # Or just: s.author    = "Danilov Dorin"
  # s.authors            = { "Danilov Dorin" => "" }
  # s.social_media_url   = "http://twitter.com/Danilov Dorin"


  s.platform     = :ios, "8.0"


  s.source       = { :git => "https://github.com/vanillanav/vanillanav-sdk-ios.git", 
          :tag => "0.1" }

  s.source_files  = "vanillanav-sdk-ios/**/*.swift"
end