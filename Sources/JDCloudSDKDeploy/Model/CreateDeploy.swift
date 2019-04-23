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

///  createDeploy
@objc(CreateDeploy)
public class CreateDeploy:NSObject,Codable{
    /// 部署组ID，部署组的唯一标识
    /// Required:true
    var groupId:String
    /// 描述
    var desc:String?
    /// 部署来源：1url，2云编译，3云存储
    /// Required:true
    var deploySource:Int
    /// 部署操作
    var deployCmd:String?
    /// 1使用输入的操作，2使用程序自带操作
    var cmdSource:Int?
    /// 部署操作展示格式：1form,2ymal
    var cmdType:Int?
    /// 项目类型 1tomcat,2
    var productType:Int?
    /// 下载url
    var downloadUrl:String?
    /// md5
    var md5:String?
    /// 云编译项目名
    var compileProject:String?
    /// 云编译构建序号
    var compileSeries:String?
    /// 云存储空间
    var ossSpace:String?
    /// 云存储目录
    var ossDir:String?
    /// 文件类型：1.tar，2.zip,3.tar.gz
    var fileType:Int?



    public  init(groupId:String,deploySource:Int){
             self.groupId = groupId
             self.deploySource = deploySource
    }

    enum CreateDeployCodingKeys: String, CodingKey {
        case groupId
        case desc
        case deploySource
        case deployCmd
        case cmdSource
        case cmdType
        case productType
        case downloadUrl
        case md5
        case compileProject
        case compileSeries
        case ossSpace
        case ossDir
        case fileType
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CreateDeployCodingKeys.self)
        self.groupId = try decoderContainer.decode(String.self, forKey: .groupId)
        if decoderContainer.contains(.desc)
        {
            self.desc = try decoderContainer.decode(String?.self, forKey: .desc)
        }
        self.deploySource = try decoderContainer.decode(Int.self, forKey: .deploySource)
        if decoderContainer.contains(.deployCmd)
        {
            self.deployCmd = try decoderContainer.decode(String?.self, forKey: .deployCmd)
        }
        if decoderContainer.contains(.cmdSource)
        {
            self.cmdSource = try decoderContainer.decode(Int?.self, forKey: .cmdSource)
        }
        if decoderContainer.contains(.cmdType)
        {
            self.cmdType = try decoderContainer.decode(Int?.self, forKey: .cmdType)
        }
        if decoderContainer.contains(.productType)
        {
            self.productType = try decoderContainer.decode(Int?.self, forKey: .productType)
        }
        if decoderContainer.contains(.downloadUrl)
        {
            self.downloadUrl = try decoderContainer.decode(String?.self, forKey: .downloadUrl)
        }
        if decoderContainer.contains(.md5)
        {
            self.md5 = try decoderContainer.decode(String?.self, forKey: .md5)
        }
        if decoderContainer.contains(.compileProject)
        {
            self.compileProject = try decoderContainer.decode(String?.self, forKey: .compileProject)
        }
        if decoderContainer.contains(.compileSeries)
        {
            self.compileSeries = try decoderContainer.decode(String?.self, forKey: .compileSeries)
        }
        if decoderContainer.contains(.ossSpace)
        {
            self.ossSpace = try decoderContainer.decode(String?.self, forKey: .ossSpace)
        }
        if decoderContainer.contains(.ossDir)
        {
            self.ossDir = try decoderContainer.decode(String?.self, forKey: .ossDir)
        }
        if decoderContainer.contains(.fileType)
        {
            self.fileType = try decoderContainer.decode(Int?.self, forKey: .fileType)
        }
    }
}
public extension CreateDeploy{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateDeployCodingKeys.self)
         try encoderContainer.encode(groupId, forKey: .groupId)
         try encoderContainer.encode(desc, forKey: .desc)
         try encoderContainer.encode(deploySource, forKey: .deploySource)
         try encoderContainer.encode(deployCmd, forKey: .deployCmd)
         try encoderContainer.encode(cmdSource, forKey: .cmdSource)
         try encoderContainer.encode(cmdType, forKey: .cmdType)
         try encoderContainer.encode(productType, forKey: .productType)
         try encoderContainer.encode(downloadUrl, forKey: .downloadUrl)
         try encoderContainer.encode(md5, forKey: .md5)
         try encoderContainer.encode(compileProject, forKey: .compileProject)
         try encoderContainer.encode(compileSeries, forKey: .compileSeries)
         try encoderContainer.encode(ossSpace, forKey: .ossSpace)
         try encoderContainer.encode(ossDir, forKey: .ossDir)
         try encoderContainer.encode(fileType, forKey: .fileType)
    }
}
