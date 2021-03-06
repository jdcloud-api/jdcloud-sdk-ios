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

   Product
   关于产品基本信息操作的相关接口

   OpenAPI spec version: v2
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

///  查看产品功能列表接口
public class ListProductAbilitiesExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/products/{productKey}/abilities")
    }
    
}
///  导入物模型
public class ImportThingModelExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PUT", url: "/regions/{regionId}/products/{productKey}/abilities:importThingModel")
    }
    
}
///  导出物模型
public class ExportThingModelExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/products/{productKey}/abilities:exportThingModel")
    }
    
}
///  查看设备影子
public class DescribeThingShadowExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/products/{productKey}/devices/{identifier}/shadow")
    }
    
}
///  更新设备影子的期望值
public class UpdateThingShadowExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PATCH", url: "/regions/{regionId}/products/{productKey}/devices/{identifier}/shadow")
    }
    
}
///  设备服务调用
public class InvokeThingServiceExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/products/{productKey}/devices/{identifier}/services")
    }
    
}
///  分页查询设备信息,支持一个或多个条件
public class QueryDevicePageExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/devices:queryPage")
    }
    
}
///  修改设备详情
public class UpdateDeviceExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/device/{deviceId}:update")
    }
    
}
///  注册单个设备并返回秘钥信息
public class AddDeviceExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/device:add")
    }
    
}
///  查询设备详情
public class QueryDeviceDetailExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/products/{productKey}/device/{deviceName}:detail")
    }
    
}
///  删除设备
public class RemoveDeviceExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "DELETE", url: "/regions/{regionId}/products/{productKey}/device/{deviceName}:delete")
    }
    
}
///  删除设备
public class RemoveDeviceByIdExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "DELETE", url: "/regions/{regionId}/device/{deviceId}:deleteById")
    }
    
}
///  查看产品列表接口
public class ListProductsExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/products")
    }
    
}
///  新建产品
public class CreateProductExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/products")
    }
    
}
///  查看产品
public class DescribeProductExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/products/{productKey}")
    }
    
}
///  修改产品
public class UpdateProductExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PATCH", url: "/regions/{regionId}/products/{productKey}")
    }
    
}
///  删除产品
public class DeleteProductExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "DELETE", url: "/regions/{regionId}/products/{productKey}")
    }
    
}
