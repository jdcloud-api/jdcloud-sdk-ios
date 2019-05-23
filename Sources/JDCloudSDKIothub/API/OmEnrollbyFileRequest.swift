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

   OMManager
   用于完成物模型管理

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  物模型通过文件上传注册接口
      ///       /// 
@objc(OmEnrollbyFileRequest)
public class OmEnrollbyFileRequest:JdCloudRequest
{
    /// 待上传物模型的IoT Hub实例编号
    var instanceId:String

    /// 物模型文件名称
    var fileName:String


    public init(regionId: String,instanceId:String,fileName:String){
        self.instanceId = instanceId
        self.fileName = fileName
        super.init(regionId: regionId)
    }


    enum OmEnrollbyFileRequestRequestCodingKeys: String, CodingKey {
        case instanceId
        case fileName
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: OmEnrollbyFileRequestRequestCodingKeys.self)
        try encoderContainer.encode(instanceId, forKey: .instanceId)
        try encoderContainer.encode(fileName, forKey: .fileName)

    }
}
