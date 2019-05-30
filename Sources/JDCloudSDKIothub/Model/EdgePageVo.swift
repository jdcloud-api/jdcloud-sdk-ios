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

///  edgePageVo
@objc(EdgePageVo)
public class EdgePageVo:NSObject,Codable{
    /// Edge编号
    var edgeId:String?
    /// Edge显示名称
    var edgeName:String?
    /// Edge状态
    var edgeState:String?
    /// 物模型名称
    var omName:String?
    /// 最后在线时间
    var lastOnlineTime:String?



    public override init(){
            super.init()
    }

    enum EdgePageVoCodingKeys: String, CodingKey {
        case edgeId
        case edgeName
        case edgeState
        case omName
        case lastOnlineTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: EdgePageVoCodingKeys.self)
        if decoderContainer.contains(.edgeId)
        {
            self.edgeId = try decoderContainer.decode(String?.self, forKey: .edgeId)
        }
        if decoderContainer.contains(.edgeName)
        {
            self.edgeName = try decoderContainer.decode(String?.self, forKey: .edgeName)
        }
        if decoderContainer.contains(.edgeState)
        {
            self.edgeState = try decoderContainer.decode(String?.self, forKey: .edgeState)
        }
        if decoderContainer.contains(.omName)
        {
            self.omName = try decoderContainer.decode(String?.self, forKey: .omName)
        }
        if decoderContainer.contains(.lastOnlineTime)
        {
            self.lastOnlineTime = try decoderContainer.decode(String?.self, forKey: .lastOnlineTime)
        }
    }
}
public extension EdgePageVo{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: EdgePageVoCodingKeys.self)
         try encoderContainer.encode(edgeId, forKey: .edgeId)
         try encoderContainer.encode(edgeName, forKey: .edgeName)
         try encoderContainer.encode(edgeState, forKey: .edgeState)
         try encoderContainer.encode(omName, forKey: .omName)
         try encoderContainer.encode(lastOnlineTime, forKey: .lastOnlineTime)
    }
}