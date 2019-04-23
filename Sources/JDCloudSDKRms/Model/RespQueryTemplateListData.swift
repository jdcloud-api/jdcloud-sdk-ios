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

///  respQueryTemplateListData
@objc(RespQueryTemplateListData)
public class RespQueryTemplateListData:NSObject,Codable{
    /// reason参数
    var reason:String?
    /// createTime参数
    var createTime:String?
    /// contentSize参数
    var contentSize:String?
    /// description参数
    var descriptionValue:String?
    /// templateId参数
    var templateId:String?
    /// title参数
    var title:String?
    /// status参数
    var status:String?



    public override init(){
            super.init()
    }

    enum RespQueryTemplateListDataCodingKeys: String, CodingKey {
        case reason
        case createTime
        case contentSize
        case descriptionValue = "description"
        case templateId
        case title
        case status
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: RespQueryTemplateListDataCodingKeys.self)
        if decoderContainer.contains(.reason)
        {
            self.reason = try decoderContainer.decode(String?.self, forKey: .reason)
        }
        if decoderContainer.contains(.createTime)
        {
            self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        }
        if decoderContainer.contains(.contentSize)
        {
            self.contentSize = try decoderContainer.decode(String?.self, forKey: .contentSize)
        }
        if decoderContainer.contains(.descriptionValue)
        {
            self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        }
        if decoderContainer.contains(.templateId)
        {
            self.templateId = try decoderContainer.decode(String?.self, forKey: .templateId)
        }
        if decoderContainer.contains(.title)
        {
            self.title = try decoderContainer.decode(String?.self, forKey: .title)
        }
        if decoderContainer.contains(.status)
        {
            self.status = try decoderContainer.decode(String?.self, forKey: .status)
        }
    }
}
public extension RespQueryTemplateListData{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: RespQueryTemplateListDataCodingKeys.self)
         try encoderContainer.encode(reason, forKey: .reason)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(contentSize, forKey: .contentSize)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
         try encoderContainer.encode(templateId, forKey: .templateId)
         try encoderContainer.encode(title, forKey: .title)
         try encoderContainer.encode(status, forKey: .status)
    }
}