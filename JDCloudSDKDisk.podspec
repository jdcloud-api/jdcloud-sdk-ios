Pod::Spec.new do |s|
 
  s.name         = "JDCloudSDKDisk"
  s.version      = "0.0.3"
  s.summary      = "JD Cloud Open API Swift SDK Disk"
 
  s.description  = <<-DESC
    JDCloud Open API Swift SDK Disk framework
  DESC

  s.homepage     = "https://github.com/jdcloud-api/jdcloud-sdk-ios"

  s.license      = "Apache License, Version 2.0"
  
  s.author       = { "JDCloud API GateWay Team" => "JDCloud API GateWay Team" }

 
  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"
    
  s.source       = { :git => "https://github.com/jdcloud-api/jdcloud-sdk-ios.git", :tag => "#{s.version}" }

 
  s.source_files  = "Sources/JDCloudSDKDisk", "Sources/JDCloudSDKDisk/**/*.{h,swift}"
 

  s.public_header_files = "Sources/JDCloudSDKDisk/*.h"


 
  s.requires_arc = true
  s.dependency "JDCloudSDKCore", "~> 0.0.1"
  s.dependency "JDCloudSDKCommon", "~> 0.0.2"
  s.dependency "JDCloudSDKCharge", "~> 0.0.2"
end
