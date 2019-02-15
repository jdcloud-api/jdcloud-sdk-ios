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

///  noticeLevel
@objc(NoticeLevel)
public class NoticeLevel:NSObject,Codable{
    /// 是否为用户自己定义的级别，自定义(true) or 固定(false)
    /// Required:true
    var custom:Bool
    /// 报警级别以及对应的阈值，是一个map[string]float64对象。key:common(一般)、critial(严重)、 fatal(紧急),value:各报警级别对应的阀值，要符合operation参数对应的递进关系。 eg: &quot;levels&quot;:{&quot;common&quot;:1000,&quot;critial&quot;:10000,&quot;fatal&quot;:15000}
    /// Required:true
    var levels:[String:Double?]



    public  init(custom:Bool,levels:[String:Double?]){
             self.custom = custom
             self.levels = levels
    }

    enum NoticeLevelCodingKeys: String, CodingKey {
        case custom
        case levels
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: NoticeLevelCodingKeys.self)
        self.custom = try decoderContainer.decode(Bool.self, forKey: .custom)
        self.levels = try decoderContainer.decode([String:Double?].self, forKey: .levels)
    }
}
public extension NoticeLevel{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: NoticeLevelCodingKeys.self)
         try encoderContainer.encode(custom, forKey: .custom)
         try encoderContainer.encode(levels, forKey: .levels)
    }
}
