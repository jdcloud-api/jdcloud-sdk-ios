Pod::Spec.new do |s|
 
  s.name         = "JDCloudSDKJdfusion"
  s.version      = "0.0.2"
  s.summary      = "JD Cloud open API SDK Jdfusion"
 
  s.description  = <<-DESC
    JDCloud Open API SDK Jdfusion framework   
  DESC

  s.homepage     = "https://github.com/jdcloud-api/jdcloud-sdk-ios"
 
 

  s.license      = "Apache License, Version 2.0"
  
  s.author             = { "JDCloud API GateWay Team" => "JDCloud API GateWay Team" }

 
  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"
    
  s.source       = { :git => "https://github.com/jdcloud-api/jdcloud-sdk-ios.git", :tag => "#{s.version}" }

 
  s.source_files  = "Sources/JDCloudSDKJdfusion", "Sources/JDCloudSDKJdfusion/**/*.{h,swift}"
 

  s.public_header_files = "Sources/JDCloudSDKJdfusion/*.h"


 
  s.requires_arc = true
  s.dependency "JDCloudSDKCore", "~> 0.0.1"
end
