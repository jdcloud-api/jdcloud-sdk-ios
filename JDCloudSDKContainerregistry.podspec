Pod::Spec.new do |s|
 
  s.name         = "JDCloudSDKContainerregistry"
  s.version      = "0.0.2"
  s.summary      = "JD Cloud open API SDK Containerregistry"
 
  s.description  = <<-DESC
    JDCloud Open API SDK Containerregistry framework   
  DESC

  s.homepage     = "https://github.com/jdcloud-api/jdcloud-sdk-ios"
 
 

  s.license      = "Apache License, Version 2.0"
  
  s.author             = { "JDCloud API GateWay Team" => "JDCloud API GateWay Team" }

 
  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"
    
  s.source       = { :git => "https://github.com/jdcloud-api/jdcloud-sdk-ios.git", :tag => "#{s.version}" }

 
  s.source_files  = "Sources/JDCloudSDKContainerregistry", "Sources/JDCloudSDKContainerregistry/**/*.{h,swift}"
 

  s.public_header_files = "Sources/JDCloudSDKContainerregistry/*.h"


 
  s.requires_arc = true
  s.dependency "JDCloudSDKCore", "~> 0.0.2"
  s.dependency "JDCloudSDKCommon", "~> 0.0.2"
end
