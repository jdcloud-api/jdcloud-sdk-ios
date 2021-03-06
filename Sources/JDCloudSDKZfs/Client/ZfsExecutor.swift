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

   File-System
   文件系统相关接口。

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

///  -   查询挂载目标列表。
      /// 
public class DescribeMountTargetsExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/mountTargets")
    }
    
}
///  - 为一个文件系统创建一个挂载目标。通过这个挂载目标,你可以挂载将一个文件系统挂载到主机实例上。
      /// - 创建一个挂载目标，为这个挂载目标分配一个Id
      /// 
public class CreateMountTargetExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/mountTargets")
    }
    
}
///  查询挂载目标详情
public class DescribeMountTargetExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/mountTargets/{mountTargetId}")
    }
    
}
///  -   删除挂载目标的同时会删除相关的网络接口。
      /// 
public class DeleteMountTargetExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "DELETE", url: "/regions/{regionId}/mountTargets/{mountTargetId}")
    }
    
}
///  -   查询文件系统列表。
      /// -   filters多个过滤条件之间是逻辑与(AND)，每个条件内部的多个取值是逻辑或(OR)
      /// 
public class DescribeFileSystemsExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/fileSystems")
    }
    
}
///  - 创建一个新的文件系统，为这个文件系统分配一个Id
      /// 
public class CreateFileSystemExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/fileSystems")
    }
    
}
///  查询文件系统详情
public class DescribeFileSystemExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/fileSystems/{fileSystemId}")
    }
    
}
///  修改文件系统属性(name 和 description 必须要指定一个)
public class ModifyFileSystemAttributeExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PATCH", url: "/regions/{regionId}/fileSystems/{fileSystemId}")
    }
    
}
///  -   删除一个文件系统，一旦删除，该文件系统将不存在，也无法访问已删除的文件系统里的任何内容。
      ///  [MFA enabled]
public class DeleteFileSystemExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "DELETE", url: "/regions/{regionId}/fileSystems/{fileSystemId}")
    }
    
}
