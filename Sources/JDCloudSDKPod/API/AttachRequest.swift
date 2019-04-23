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

   原生容器
   container 相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查询单个容器日志
      ///       /// 
@objc(AttachRequest)
public class AttachRequest:JdCloudRequest
{
    /// Pod ID
    var podId:String

    /// container name
    var containerName:String


    public init(regionId: String,podId:String,containerName:String){
        self.podId = podId
        self.containerName = containerName
        super.init(regionId: regionId)
    }


    enum AttachRequestRequestCodingKeys: String, CodingKey {
        case podId
        case containerName
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AttachRequestRequestCodingKeys.self)
        try encoderContainer.encode(podId, forKey: .podId)
        try encoderContainer.encode(containerName, forKey: .containerName)

    }
}