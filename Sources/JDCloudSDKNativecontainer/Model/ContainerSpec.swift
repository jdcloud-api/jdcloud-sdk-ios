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
import JDCloudSDKCharge

///  指定挂载的Volume
@objc(ContainerSpec)
public class ContainerSpec:NSObject,Codable{
    /// 实例类型；参考[文档](https://www.jdcloud.com/help/detail/1992/isCatalog/1)
    /// Required:true
    var instanceType:String
    /// 容器所属可用区
    /// Required:true
    var az:String
    /// 容器名称
    /// Required:true
    var name:String
    /// 域名和IP映射的信息；&lt;/br&gt; 最大10个alias
    var hostAliases:[HostAlias?]?
    /// 主机名，规范请参考说明文档；默认容器ID
    var hostname:String?
    /// 容器执行命令，如果不指定默认是docker镜像的ENTRYPOINT
    var command:[String?]?
    /// 容器执行命令的参数，如果不指定默认是docker镜像的CMD
    var args:[String?]?
    /// 容器执行的环境变量；如果和镜像中的环境变量Key相同，会覆盖镜像中的值；&lt;/br&gt; 最大10对
    var envs:[EnvVar?]?
    /// 镜像名称 &lt;/br&gt; 1. Docker Hub官方镜像通过类似nginx, mysql/mysql-server的名字指定 &lt;/br&gt; &lt;/br&gt; repository长度最大256个字符，tag最大128个字符，registry最大255个字符 &lt;/br&gt; 下载镜像超时时间：10分钟
    /// Required:true
    var image:String
    /// secret引用名称；使用Docker Hub和京东云CR的镜像不需要secret
    var secret:String?
    /// 容器是否分配tty。默认不分配
    var tty:Bool?
    /// 容器的工作目录。如果不指定，默认是根目录（/）；必须是绝对路径
    var workingDir:String?
    /// 根Volume信息
    /// Required:true
    var rootVolume:VolumeMountSpec
    /// 挂载的数据Volume信息；最多7个
    var dataVolumes:[VolumeMountSpec?]?
    /// 主网卡主IP关联的弹性IP规格
    var elasticIp:ElasticIpSpec?
    /// 主网卡配置信息
    /// Required:true
    var primaryNetworkInterface:ContainerNetworkInterfaceAttachmentSpec
    /// 容器日志配置信息；默认会在本地分配10MB的存储空间
    var logConfiguration:LogConfiguration?
    /// 容器描述
    var descriptionValue:String?
    /// 计费配置；如不指定，默认计费类型是后付费-按使用时常付费
    var charge:ChargeSpec?



    public  init(instanceType:String,az:String,name:String,image:String,rootVolume:VolumeMountSpec,primaryNetworkInterface:ContainerNetworkInterfaceAttachmentSpec){
             self.instanceType = instanceType
             self.az = az
             self.name = name
             self.image = image
             self.rootVolume = rootVolume
             self.primaryNetworkInterface = primaryNetworkInterface
    }

    enum ContainerSpecCodingKeys: String, CodingKey {
        case instanceType
        case az
        case name
        case hostAliases
        case hostname
        case command
        case args
        case envs
        case image
        case secret
        case tty
        case workingDir
        case rootVolume
        case dataVolumes
        case elasticIp
        case primaryNetworkInterface
        case logConfiguration
        case descriptionValue = "description"
        case charge
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ContainerSpecCodingKeys.self)
        self.instanceType = try decoderContainer.decode(String.self, forKey: .instanceType)
        self.az = try decoderContainer.decode(String.self, forKey: .az)
        self.name = try decoderContainer.decode(String.self, forKey: .name)
        if decoderContainer.contains(.hostAliases)
        {
            self.hostAliases = try decoderContainer.decode([HostAlias?]?.self, forKey: .hostAliases)
        }
        if decoderContainer.contains(.hostname)
        {
            self.hostname = try decoderContainer.decode(String?.self, forKey: .hostname)
        }
        if decoderContainer.contains(.command)
        {
            self.command = try decoderContainer.decode([String?]?.self, forKey: .command)
        }
        if decoderContainer.contains(.args)
        {
            self.args = try decoderContainer.decode([String?]?.self, forKey: .args)
        }
        if decoderContainer.contains(.envs)
        {
            self.envs = try decoderContainer.decode([EnvVar?]?.self, forKey: .envs)
        }
        self.image = try decoderContainer.decode(String.self, forKey: .image)
        if decoderContainer.contains(.secret)
        {
            self.secret = try decoderContainer.decode(String?.self, forKey: .secret)
        }
        if decoderContainer.contains(.tty)
        {
            self.tty = try decoderContainer.decode(Bool?.self, forKey: .tty)
        }
        if decoderContainer.contains(.workingDir)
        {
            self.workingDir = try decoderContainer.decode(String?.self, forKey: .workingDir)
        }
        self.rootVolume = try decoderContainer.decode(VolumeMountSpec.self, forKey: .rootVolume)
        if decoderContainer.contains(.dataVolumes)
        {
            self.dataVolumes = try decoderContainer.decode([VolumeMountSpec?]?.self, forKey: .dataVolumes)
        }
        if decoderContainer.contains(.elasticIp)
        {
            self.elasticIp = try decoderContainer.decode(ElasticIpSpec?.self, forKey: .elasticIp)
        }
        self.primaryNetworkInterface = try decoderContainer.decode(ContainerNetworkInterfaceAttachmentSpec.self, forKey: .primaryNetworkInterface)
        if decoderContainer.contains(.logConfiguration)
        {
            self.logConfiguration = try decoderContainer.decode(LogConfiguration?.self, forKey: .logConfiguration)
        }
        if decoderContainer.contains(.descriptionValue)
        {
            self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
        }
        if decoderContainer.contains(.charge)
        {
            self.charge = try decoderContainer.decode(ChargeSpec?.self, forKey: .charge)
        }
    }
}
public extension ContainerSpec{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ContainerSpecCodingKeys.self)
         try encoderContainer.encode(instanceType, forKey: .instanceType)
         try encoderContainer.encode(az, forKey: .az)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(hostAliases, forKey: .hostAliases)
         try encoderContainer.encode(hostname, forKey: .hostname)
         try encoderContainer.encode(command, forKey: .command)
         try encoderContainer.encode(args, forKey: .args)
         try encoderContainer.encode(envs, forKey: .envs)
         try encoderContainer.encode(image, forKey: .image)
         try encoderContainer.encode(secret, forKey: .secret)
         try encoderContainer.encode(tty, forKey: .tty)
         try encoderContainer.encode(workingDir, forKey: .workingDir)
         try encoderContainer.encode(rootVolume, forKey: .rootVolume)
         try encoderContainer.encode(dataVolumes, forKey: .dataVolumes)
         try encoderContainer.encode(elasticIp, forKey: .elasticIp)
         try encoderContainer.encode(primaryNetworkInterface, forKey: .primaryNetworkInterface)
         try encoderContainer.encode(logConfiguration, forKey: .logConfiguration)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
         try encoderContainer.encode(charge, forKey: .charge)
    }
}
