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

///  transferTaskFailedDetailInfo
@objc(TransferTaskFailedDetailInfo)
public class TransferTaskFailedDetailInfo:NSObject,Codable{
    /// 错误文件个数
    var count:String?
    /// Files
    var files:[TransferTaskFailedFileInfo?]?



    public override init(){
            super.init()
    }

    enum TransferTaskFailedDetailInfoCodingKeys: String, CodingKey {
        case count
        case files
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: TransferTaskFailedDetailInfoCodingKeys.self)
        if decoderContainer.contains(.count)
        {
            self.count = try decoderContainer.decode(String?.self, forKey: .count)
        }
        if decoderContainer.contains(.files)
        {
            self.files = try decoderContainer.decode([TransferTaskFailedFileInfo?]?.self, forKey: .files)
        }
    }
}
public extension TransferTaskFailedDetailInfo{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: TransferTaskFailedDetailInfoCodingKeys.self)
         try encoderContainer.encode(count, forKey: .count)
         try encoderContainer.encode(files, forKey: .files)
    }
}
