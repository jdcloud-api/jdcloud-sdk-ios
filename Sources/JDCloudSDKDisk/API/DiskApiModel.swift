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

   云硬盘相关接口
   云硬盘相关接口，提供批量创建云硬盘，查询云硬盘，删除云硬盘，对云硬盘进行扩容，修改云硬盘信息以及使用快照恢复云硬盘等功能。

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore
    import JDCloudSDKCommon

public class DescribeSnapshotResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:DescribeSnapshotResult?;

    enum DescribeSnapshotResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeSnapshotResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(DescribeSnapshotResult?.self, forKey: .result) ?? nil
    }
}

public extension DescribeSnapshotResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeSnapshotResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    
/// -   删除单个云硬盘快照:快照状态必须为 available 或 error 状态。
      ///       /// -   快照独立于云硬盘生命周期，删除快照不会对创建快照的云硬盘有任何影响。
      ///       /// -   快照删除后不可恢复，请谨慎操作。
      ///       ///  
public class DeleteSnapshotResult:NSObject,JdCloudResult
{
}

///  修改快照的名字或描述信息
public class ModifySnapshotAttributeRequest:JdCloudRequest
{
    /// 快照名称
    var name:String?

    /// 快照描述，name和description必须要指定一个
    var descriptionValue:String?

    /// 快照ID
    var snapshotId:String


    public init(regionId: String,snapshotId:String){
        self.snapshotId = snapshotId
        super.init(regionId: regionId)
    }


    enum ModifySnapshotAttributeRequestRequestCodingKeys: String, CodingKey {
        case name
        case descriptionValue = "description"
        case snapshotId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ModifySnapshotAttributeRequestRequestCodingKeys.self)
        try encoderContainer.encode(name, forKey: .name)
        try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
        try encoderContainer.encode(snapshotId, forKey: .snapshotId)

    }
}

/// 修改快照的名字或描述信息 
public class ModifySnapshotAttributeResult:NSObject,JdCloudResult
{
}
public class CreateSnapshotResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:CreateSnapshotResult?;

    enum CreateSnapshotResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CreateSnapshotResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(CreateSnapshotResult?.self, forKey: .result) ?? nil
    }
}

public extension CreateSnapshotResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateSnapshotResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    
/// 查询云硬盘快照信息详情 
public class DescribeSnapshotResult:NSObject,JdCloudResult
{
    /// Snapshot
    var snapshot:Snapshot?



    public override init(){
        super.init()
    }

    enum DescribeSnapshotResultCodingKeys: String, CodingKey {
        case snapshot
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeSnapshotResultCodingKeys.self)
        if decoderContainer.contains(.snapshot)
        {
            self.snapshot = try decoderContainer.decode(Snapshot?.self, forKey: .snapshot)
        }
    }
}
public extension DescribeSnapshotResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeSnapshotResultCodingKeys.self)
        try encoderContainer.encode(snapshot, forKey: .snapshot)
    }
}
public class ModifySnapshotAttributeResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:ModifySnapshotAttributeResult?;

    enum ModifySnapshotAttributeResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ModifySnapshotAttributeResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(ModifySnapshotAttributeResult?.self, forKey: .result) ?? nil
    }
}

public extension ModifySnapshotAttributeResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ModifySnapshotAttributeResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    
public class DescribeSnapshotsResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:DescribeSnapshotsResult?;

    enum DescribeSnapshotsResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeSnapshotsResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(DescribeSnapshotsResult?.self, forKey: .result) ?? nil
    }
}

public extension DescribeSnapshotsResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeSnapshotsResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    
/// -   为指定云硬盘创建快照，新生成的快照的状态为creating。
      ///       /// -   同一地域下单用户快照的配额为15块。
      ///       /// -   为保证数据完整性，请您在创建快照之前，停止对云硬盘进行写入操作，以保证快照数据的完整性。
      ///       /// -   在执行创建快照前，建议您对云硬盘进行卸载操作，创建快照后再重新挂载到云主机上。
      ///       /// -   手动快照的生命周期独立于云硬盘，请您及时删除不需要的快照。
      ///       /// -   创建快照所需时间取决于云硬盘容量的大小，云硬盘容量越大耗时越长。
      ///       ///  
public class CreateSnapshotResult:NSObject,JdCloudResult
{
    /// 创建的快照ID
    var snapshotId:String?



    public override init(){
        super.init()
    }

    enum CreateSnapshotResultCodingKeys: String, CodingKey {
        case snapshotId
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CreateSnapshotResultCodingKeys.self)
        if decoderContainer.contains(.snapshotId)
        {
            self.snapshotId = try decoderContainer.decode(String?.self, forKey: .snapshotId)
        }
    }
}
public extension CreateSnapshotResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateSnapshotResultCodingKeys.self)
        try encoderContainer.encode(snapshotId, forKey: .snapshotId)
    }
}
public class DeleteSnapshotResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:DeleteSnapshotResult?;

    enum DeleteSnapshotResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DeleteSnapshotResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(DeleteSnapshotResult?.self, forKey: .result) ?? nil
    }
}

public extension DeleteSnapshotResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DeleteSnapshotResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    

///  查询云硬盘快照列表，filters多个过滤条件之间是逻辑与(AND)，每个条件内部的多个取值是逻辑或(OR)
public class DescribeSnapshotsRequest:JdCloudRequest
{
    /// 页码, 默认为1, 取值范围：[1,∞)
    var pageNumber:Int?

    /// 分页大小，默认为20，取值范围：[10,100]
    var pageSize:Int?

    /// 查找快照的类型，可以为private，others，shared，默认为private
    var snapshotSource:String?

    /// snapshotId - 云硬盘快照ID，支持多个
      /// diskId - 生成快照的云硬盘ID，支持多个
      /// status - 快照状态，精确匹配，支持多个,取值为 creating、available、copying、deleting、error_create、error_delete
      /// name - 快照名称，模糊匹配，支持单个
      /// 
    var filters:[Filter?]?




    enum DescribeSnapshotsRequestRequestCodingKeys: String, CodingKey {
        case pageNumber
        case pageSize
        case snapshotSource
        case filters
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeSnapshotsRequestRequestCodingKeys.self)
        try encoderContainer.encode(pageNumber, forKey: .pageNumber)
        try encoderContainer.encode(pageSize, forKey: .pageSize)
        try encoderContainer.encode(snapshotSource, forKey: .snapshotSource)
        try encoderContainer.encode(filters, forKey: .filters)

    }
}

/// 查询云硬盘快照列表，filters多个过滤条件之间是逻辑与(AND)，每个条件内部的多个取值是逻辑或(OR) 
public class DescribeSnapshotsResult:NSObject,JdCloudResult
{
    /// 查询的快照信息详情列表
    var snapshots:[Snapshot?]?

    /// 查询的快照数目
    var totalCount:Int?



    public override init(){
        super.init()
    }

    enum DescribeSnapshotsResultCodingKeys: String, CodingKey {
        case snapshots
        case totalCount
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeSnapshotsResultCodingKeys.self)
        if decoderContainer.contains(.snapshots)
        {
            self.snapshots = try decoderContainer.decode([Snapshot?]?.self, forKey: .snapshots)
        }
        if decoderContainer.contains(.totalCount)
        {
            self.totalCount = try decoderContainer.decode(Int?.self, forKey: .totalCount)
        }
    }
}
public extension DescribeSnapshotsResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeSnapshotsResultCodingKeys.self)
        try encoderContainer.encode(snapshots, forKey: .snapshots)
        try encoderContainer.encode(totalCount, forKey: .totalCount)
    }
}

///  -   删除单个云硬盘快照:快照状态必须为 available 或 error 状态。
      ///       /// -   快照独立于云硬盘生命周期，删除快照不会对创建快照的云硬盘有任何影响。
      ///       /// -   快照删除后不可恢复，请谨慎操作。
      ///       /// 
public class DeleteSnapshotRequest:JdCloudRequest
{
    /// 快照ID
    var snapshotId:String


    public init(regionId: String,snapshotId:String){
        self.snapshotId = snapshotId
        super.init(regionId: regionId)
    }


    enum DeleteSnapshotRequestRequestCodingKeys: String, CodingKey {
        case snapshotId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DeleteSnapshotRequestRequestCodingKeys.self)
        try encoderContainer.encode(snapshotId, forKey: .snapshotId)

    }
}


///  -   为指定云硬盘创建快照，新生成的快照的状态为creating。
      ///       /// -   同一地域下单用户快照的配额为15块。
      ///       /// -   为保证数据完整性，请您在创建快照之前，停止对云硬盘进行写入操作，以保证快照数据的完整性。
      ///       /// -   在执行创建快照前，建议您对云硬盘进行卸载操作，创建快照后再重新挂载到云主机上。
      ///       /// -   手动快照的生命周期独立于云硬盘，请您及时删除不需要的快照。
      ///       /// -   创建快照所需时间取决于云硬盘容量的大小，云硬盘容量越大耗时越长。
      ///       /// 
public class CreateSnapshotRequest:JdCloudRequest
{
    /// 创建快照规格
    var snapshotSpec:SnapshotSpec

    /// 幂等性校验参数
    var clientToken:String


    public init(regionId: String,snapshotSpec:SnapshotSpec,clientToken:String){
        self.snapshotSpec = snapshotSpec
        self.clientToken = clientToken
        super.init(regionId: regionId)
    }


    enum CreateSnapshotRequestRequestCodingKeys: String, CodingKey {
        case snapshotSpec
        case clientToken
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateSnapshotRequestRequestCodingKeys.self)
        try encoderContainer.encode(snapshotSpec, forKey: .snapshotSpec)
        try encoderContainer.encode(clientToken, forKey: .clientToken)

    }
}


///  查询云硬盘快照信息详情
public class DescribeSnapshotRequest:JdCloudRequest
{
    /// 快照ID
    var snapshotId:String


    public init(regionId: String,snapshotId:String){
        self.snapshotId = snapshotId
        super.init(regionId: regionId)
    }


    enum DescribeSnapshotRequestRequestCodingKeys: String, CodingKey {
        case snapshotId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeSnapshotRequestRequestCodingKeys.self)
        try encoderContainer.encode(snapshotId, forKey: .snapshotId)

    }
}

public class ExtendDiskResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:ExtendDiskResult?;

    enum ExtendDiskResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ExtendDiskResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(ExtendDiskResult?.self, forKey: .result) ?? nil
    }
}

public extension ExtendDiskResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ExtendDiskResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    
public class RestoreDiskResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:RestoreDiskResult?;

    enum RestoreDiskResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: RestoreDiskResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(RestoreDiskResult?.self, forKey: .result) ?? nil
    }
}

public extension RestoreDiskResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: RestoreDiskResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    
/// -   删除一块按配置计费的云硬盘，云盘类型包括高效云盘、SSD云盘、通用型SSD、性能型SSD和容量型HDD。
      ///       /// -   删除云盘时，云盘的状态必须为 待挂载（Available）。
      ///       /// -   云盘被删除后，云硬盘快照可以被保留。
      ///       ///  
public class DeleteDiskResult:NSObject,JdCloudResult
{
}

///  -   仅可对制作快照的源硬盘进行数据恢复操作。
      ///       /// -   仅源硬盘处于可用状态时才能使用快照进行数据恢复操作。
      ///       /// -   云硬盘恢复后，当前数据将被清除，请您谨慎操作。
      ///       /// 
public class RestoreDiskRequest:JdCloudRequest
{
    /// 用于恢复云盘的快照ID
    var snapshotId:String

    /// 云硬盘ID
    var diskId:String


    public init(regionId: String,snapshotId:String,diskId:String){
        self.snapshotId = snapshotId
        self.diskId = diskId
        super.init(regionId: regionId)
    }


    enum RestoreDiskRequestRequestCodingKeys: String, CodingKey {
        case snapshotId
        case diskId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: RestoreDiskRequestRequestCodingKeys.self)
        try encoderContainer.encode(snapshotId, forKey: .snapshotId)
        try encoderContainer.encode(diskId, forKey: .diskId)

    }
}

/// 查询某一块云硬盘的信息详情 
public class DescribeDiskResult:NSObject,JdCloudResult
{
    /// Disk
    var disk:Disk?



    public override init(){
        super.init()
    }

    enum DescribeDiskResultCodingKeys: String, CodingKey {
        case disk
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeDiskResultCodingKeys.self)
        if decoderContainer.contains(.disk)
        {
            self.disk = try decoderContainer.decode(Disk?.self, forKey: .disk)
        }
    }
}
public extension DescribeDiskResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeDiskResultCodingKeys.self)
        try encoderContainer.encode(disk, forKey: .disk)
    }
}
/// -   扩容云硬盘到指定大小，云硬盘状态必须为 available。
      ///       /// -   当云硬盘正在创建快照时，不允许扩容。
      ///       ///  
public class ExtendDiskResult:NSObject,JdCloudResult
{
}
/// 修改云硬盘的名字或描述信息，名字或描述信息至少要指定一个。 
public class ModifyDiskAttributeResult:NSObject,JdCloudResult
{
}

///  查询某一块云硬盘的信息详情
public class DescribeDiskRequest:JdCloudRequest
{
    /// 云硬盘ID
    var diskId:String


    public init(regionId: String,diskId:String){
        self.diskId = diskId
        super.init(regionId: regionId)
    }


    enum DescribeDiskRequestRequestCodingKeys: String, CodingKey {
        case diskId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeDiskRequestRequestCodingKeys.self)
        try encoderContainer.encode(diskId, forKey: .diskId)

    }
}

public class DescribeDiskResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:DescribeDiskResult?;

    enum DescribeDiskResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeDiskResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(DescribeDiskResult?.self, forKey: .result) ?? nil
    }
}

public extension DescribeDiskResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeDiskResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    
/// -   仅可对制作快照的源硬盘进行数据恢复操作。
      ///       /// -   仅源硬盘处于可用状态时才能使用快照进行数据恢复操作。
      ///       /// -   云硬盘恢复后，当前数据将被清除，请您谨慎操作。
      ///       ///  
public class RestoreDiskResult:NSObject,JdCloudResult
{
}
public class DeleteDiskResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:DeleteDiskResult?;

    enum DeleteDiskResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DeleteDiskResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(DeleteDiskResult?.self, forKey: .result) ?? nil
    }
}

public extension DeleteDiskResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DeleteDiskResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    

///  -   创建一块或多块按配置或者按使用时长付费的云硬盘。
      ///       /// -   云硬盘类型包括高效云盘(premium-hdd)、SSD云盘(ssd)、通用型SSD(ssd.gp1)、性能型SSD(ssd.io1)、容量型HDD(hdd.std1)。
      ///       /// -   计费方式默认为按配置付费。
      ///       /// -   创建完成后，云硬盘状态为 available。
      ///       /// -   可选参数快照 ID用于从快照创建新盘。
      ///       /// -   批量创建时，云硬盘的命名为 硬盘名称-数字，例如 myDisk-1，myDisk-2。
      ///       /// -   maxCount为最大努力，不保证一定能达到maxCount。
      ///       /// 
public class CreateDisksRequest:JdCloudRequest
{
    /// 创建云硬盘规格
    var diskSpec:DiskSpec

    /// 购买实例数量；取值范围：[1,100]
    var maxCount:Int

    /// 幂等性校验参数
    var clientToken:String


    public init(regionId: String,diskSpec:DiskSpec,maxCount:Int,clientToken:String){
        self.diskSpec = diskSpec
        self.maxCount = maxCount
        self.clientToken = clientToken
        super.init(regionId: regionId)
    }


    enum CreateDisksRequestRequestCodingKeys: String, CodingKey {
        case diskSpec
        case maxCount
        case clientToken
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateDisksRequestRequestCodingKeys.self)
        try encoderContainer.encode(diskSpec, forKey: .diskSpec)
        try encoderContainer.encode(maxCount, forKey: .maxCount)
        try encoderContainer.encode(clientToken, forKey: .clientToken)

    }
}

public class DescribeDisksResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:DescribeDisksResult?;

    enum DescribeDisksResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeDisksResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(DescribeDisksResult?.self, forKey: .result) ?? nil
    }
}

public extension DescribeDisksResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeDisksResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    
public class CreateDisksResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:CreateDisksResult?;

    enum CreateDisksResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CreateDisksResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(CreateDisksResult?.self, forKey: .result) ?? nil
    }
}

public extension CreateDisksResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateDisksResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    
public class ModifyDiskAttributeResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:ModifyDiskAttributeResult?;

    enum ModifyDiskAttributeResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ModifyDiskAttributeResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(ModifyDiskAttributeResult?.self, forKey: .result) ?? nil
    }
}

public extension ModifyDiskAttributeResponse{
        func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ModifyDiskAttributeResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}    
/// -   创建一块或多块按配置或者按使用时长付费的云硬盘。
      ///       /// -   云硬盘类型包括高效云盘(premium-hdd)、SSD云盘(ssd)、通用型SSD(ssd.gp1)、性能型SSD(ssd.io1)、容量型HDD(hdd.std1)。
      ///       /// -   计费方式默认为按配置付费。
      ///       /// -   创建完成后，云硬盘状态为 available。
      ///       /// -   可选参数快照 ID用于从快照创建新盘。
      ///       /// -   批量创建时，云硬盘的命名为 硬盘名称-数字，例如 myDisk-1，myDisk-2。
      ///       /// -   maxCount为最大努力，不保证一定能达到maxCount。
      ///       ///  
public class CreateDisksResult:NSObject,JdCloudResult
{
    /// 创建的云硬盘ID列表
    var diskIds:[String?]?



    public override init(){
        super.init()
    }

    enum CreateDisksResultCodingKeys: String, CodingKey {
        case diskIds
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CreateDisksResultCodingKeys.self)
        if decoderContainer.contains(.diskIds)
        {
            self.diskIds = try decoderContainer.decode([String?]?.self, forKey: .diskIds)
        }
    }
}
public extension CreateDisksResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateDisksResultCodingKeys.self)
        try encoderContainer.encode(diskIds, forKey: .diskIds)
    }
}

///  -   查询您已经创建的云硬盘。
      ///       /// -   filters多个过滤条件之间是逻辑与(AND)，每个条件内部的多个取值是逻辑或(OR)
      ///       /// 
public class DescribeDisksRequest:JdCloudRequest
{
    /// 页码, 默认为1, 取值范围：[1,∞)
    var pageNumber:Int?

    /// 分页大小，默认为20，取值范围：[10,100]
    var pageSize:Int?

    /// Tag筛选条件
    var tags:[TagFilter?]?

    /// diskId - 云硬盘ID，精确匹配，支持多个
      /// diskType - 云硬盘类型，精确匹配，支持多个，取值为 ssd,premium-hdd,ssd.io1,ssd.gp1,hdd.std1
      /// instanceId - 云硬盘所挂载主机的ID，精确匹配，支持多个
      /// instanceType - 云硬盘所挂载主机的类型，精确匹配，支持多个
      /// status - 可用区，精确匹配，支持多个
      /// az - 云硬盘状态，精确匹配，支持多个
      /// name - 云硬盘名称，模糊匹配，支持单个
      /// multiAttach - 云硬盘是否多点挂载，精确匹配，支持单个
      /// encrypted - 云硬盘是否加密，精确匹配，支持单个
      /// 
    var filters:[Filter?]?




    enum DescribeDisksRequestRequestCodingKeys: String, CodingKey {
        case pageNumber
        case pageSize
        case tags
        case filters
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeDisksRequestRequestCodingKeys.self)
        try encoderContainer.encode(pageNumber, forKey: .pageNumber)
        try encoderContainer.encode(pageSize, forKey: .pageSize)
        try encoderContainer.encode(tags, forKey: .tags)
        try encoderContainer.encode(filters, forKey: .filters)

    }
}

/// -   查询您已经创建的云硬盘。
      ///       /// -   filters多个过滤条件之间是逻辑与(AND)，每个条件内部的多个取值是逻辑或(OR)
      ///       ///  
public class DescribeDisksResult:NSObject,JdCloudResult
{
    /// 查询的云硬盘信息详情列表
    var disks:[Disk?]?

    /// 查询的云硬盘数目
    var totalCount:Int?



    public override init(){
        super.init()
    }

    enum DescribeDisksResultCodingKeys: String, CodingKey {
        case disks
        case totalCount
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeDisksResultCodingKeys.self)
        if decoderContainer.contains(.disks)
        {
            self.disks = try decoderContainer.decode([Disk?]?.self, forKey: .disks)
        }
        if decoderContainer.contains(.totalCount)
        {
            self.totalCount = try decoderContainer.decode(Int?.self, forKey: .totalCount)
        }
    }
}
public extension DescribeDisksResult{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeDisksResultCodingKeys.self)
        try encoderContainer.encode(disks, forKey: .disks)
        try encoderContainer.encode(totalCount, forKey: .totalCount)
    }
}

///  -   扩容云硬盘到指定大小，云硬盘状态必须为 available。
      ///       /// -   当云硬盘正在创建快照时，不允许扩容。
      ///       /// 
public class ExtendDiskRequest:JdCloudRequest
{
    /// 扩容后的云硬盘大小，单位为GiB
    var diskSizeGB:Int

    /// 修改ssd.io1型云硬盘的iops数量，当且仅当ssd.io1型的云盘类型有效，步长是10.
    var iops:Int?

    /// 云硬盘ID
    var diskId:String


    public init(regionId: String,diskSizeGB:Int,diskId:String){
        self.diskSizeGB = diskSizeGB
        self.diskId = diskId
        super.init(regionId: regionId)
    }


    enum ExtendDiskRequestRequestCodingKeys: String, CodingKey {
        case diskSizeGB
        case iops
        case diskId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ExtendDiskRequestRequestCodingKeys.self)
        try encoderContainer.encode(diskSizeGB, forKey: .diskSizeGB)
        try encoderContainer.encode(iops, forKey: .iops)
        try encoderContainer.encode(diskId, forKey: .diskId)

    }
}


///  -   删除一块按配置计费的云硬盘，云盘类型包括高效云盘、SSD云盘、通用型SSD、性能型SSD和容量型HDD。
      ///       /// -   删除云盘时，云盘的状态必须为 待挂载（Available）。
      ///       /// -   云盘被删除后，云硬盘快照可以被保留。
      ///       /// 
public class DeleteDiskRequest:JdCloudRequest
{
    /// 云硬盘ID
    var diskId:String


    public init(regionId: String,diskId:String){
        self.diskId = diskId
        super.init(regionId: regionId)
    }


    enum DeleteDiskRequestRequestCodingKeys: String, CodingKey {
        case diskId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DeleteDiskRequestRequestCodingKeys.self)
        try encoderContainer.encode(diskId, forKey: .diskId)

    }
}


///  修改云硬盘的名字或描述信息，名字或描述信息至少要指定一个。
public class ModifyDiskAttributeRequest:JdCloudRequest
{
    /// 云硬盘名称，只允许输入中文、数字、大小写字母、英文下划线“_”及中划线“-”，不允许为空且不超过32字符。
    var name:String?

    /// 云硬盘描述，允许输入UTF-8编码下的全部字符，不超过256字符。
    var descriptionValue:String?

    /// 云硬盘ID
    var diskId:String


    public init(regionId: String,diskId:String){
        self.diskId = diskId
        super.init(regionId: regionId)
    }


    enum ModifyDiskAttributeRequestRequestCodingKeys: String, CodingKey {
        case name
        case descriptionValue = "description"
        case diskId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ModifyDiskAttributeRequestRequestCodingKeys.self)
        try encoderContainer.encode(name, forKey: .name)
        try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
        try encoderContainer.encode(diskId, forKey: .diskId)

    }
}
