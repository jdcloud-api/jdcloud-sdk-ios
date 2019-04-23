/* Copyright 2018 JDCLOUD.COM

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

     http:#www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.

   
   

   
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation

///  app
@objc(App)
public class App:NSObject,Codable{
    /// 应用ID
    var appId:String?
    /// 应用名称
    var appName:String?
    /// 地域
    var regionId:String?
    /// 部署平台：1云主机，2原生容器
    var platform:Int?
    /// 使用分布式服务框架：0不使用，1使用
    var jdsfEnabled:Int?
    /// 描述
    var desc:String?
    /// 上次部署时间
    var lastDeployTime:Int?



    public override init(){
            super.init()
    }

    enum AppCodingKeys: String, CodingKey {
        case appId
        case appName
        case regionId
        case platform
        case jdsfEnabled
        case desc
        case lastDeployTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: AppCodingKeys.self)
        if decoderContainer.contains(.appId)
        {
            self.appId = try decoderContainer.decode(String?.self, forKey: .appId)
        }
        if decoderContainer.contains(.appName)
        {
            self.appName = try decoderContainer.decode(String?.self, forKey: .appName)
        }
        if decoderContainer.contains(.regionId)
        {
            self.regionId = try decoderContainer.decode(String?.self, forKey: .regionId)
        }
        if decoderContainer.contains(.platform)
        {
            self.platform = try decoderContainer.decode(Int?.self, forKey: .platform)
        }
        if decoderContainer.contains(.jdsfEnabled)
        {
            self.jdsfEnabled = try decoderContainer.decode(Int?.self, forKey: .jdsfEnabled)
        }
        if decoderContainer.contains(.desc)
        {
            self.desc = try decoderContainer.decode(String?.self, forKey: .desc)
        }
        if decoderContainer.contains(.lastDeployTime)
        {
            self.lastDeployTime = try decoderContainer.decode(Int?.self, forKey: .lastDeployTime)
        }
    }
}
public extension App{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AppCodingKeys.self)
         try encoderContainer.encode(appId, forKey: .appId)
         try encoderContainer.encode(appName, forKey: .appName)
         try encoderContainer.encode(regionId, forKey: .regionId)
         try encoderContainer.encode(platform, forKey: .platform)
         try encoderContainer.encode(jdsfEnabled, forKey: .jdsfEnabled)
         try encoderContainer.encode(desc, forKey: .desc)
         try encoderContainer.encode(lastDeployTime, forKey: .lastDeployTime)
    }
}
