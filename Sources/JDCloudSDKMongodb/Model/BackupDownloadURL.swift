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

///  backupDownloadURL
@objc(BackupDownloadURL)
public class BackupDownloadURL:NSObject,Codable{
    /// 备份名称
    var backupName:String?
    /// 公网下载链接的地址
    var backupInternetDownloadURL:String?
    /// 内网下载链接的地址
    var backupIntranetDownloadURL:String?
    /// 公网和内网的下载链接过期时间
    var linkExpiredTime:String?



    public override init(){
            super.init()
    }

    enum BackupDownloadURLCodingKeys: String, CodingKey {
        case backupName
        case backupInternetDownloadURL
        case backupIntranetDownloadURL
        case linkExpiredTime
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: BackupDownloadURLCodingKeys.self)
        if decoderContainer.contains(.backupName)
        {
            self.backupName = try decoderContainer.decode(String?.self, forKey: .backupName)
        }
        if decoderContainer.contains(.backupInternetDownloadURL)
        {
            self.backupInternetDownloadURL = try decoderContainer.decode(String?.self, forKey: .backupInternetDownloadURL)
        }
        if decoderContainer.contains(.backupIntranetDownloadURL)
        {
            self.backupIntranetDownloadURL = try decoderContainer.decode(String?.self, forKey: .backupIntranetDownloadURL)
        }
        if decoderContainer.contains(.linkExpiredTime)
        {
            self.linkExpiredTime = try decoderContainer.decode(String?.self, forKey: .linkExpiredTime)
        }
    }
}
public extension BackupDownloadURL{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: BackupDownloadURLCodingKeys.self)
         try encoderContainer.encode(backupName, forKey: .backupName)
         try encoderContainer.encode(backupInternetDownloadURL, forKey: .backupInternetDownloadURL)
         try encoderContainer.encode(backupIntranetDownloadURL, forKey: .backupIntranetDownloadURL)
         try encoderContainer.encode(linkExpiredTime, forKey: .linkExpiredTime)
    }
}
