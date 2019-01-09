import XCTest
@testable import JDCloudSDKCore
@testable import JDCloudSDKVm

class VmTests: XCTestCase{
    func testExample() {
    }
    
    func testVmClient() throws{
        
        let semaphore = DispatchSemaphore(value: 0)
        let credentials = Credential(accessKeyId: "0E91C3765B78CBD71715F9BF24997AF3", secretAccessKey: "AF7B13C8010F50F03A52C01458714701");
        let sdkEnvironment = SDKEnvironment(endPoint: "apigw-internal.cn-north-1.jcloudcs.com")
        let vmClient = VmJDCloudClient(credential: credentials,sdkEnvironment:sdkEnvironment)
        let describeInstancesRequest = DescribeInstancesRequest(regionId: "cn-north-1");
        vmClient.httpRequestProtocol = "http";
        GlobalConfig.debug = true
        try vmClient.describeInstancesAsync(request: describeInstancesRequest) { (statusCode, requestResponse, error,resultString) in
            print(statusCode)
            print(requestResponse)
            print(error)
            semaphore.signal()
        }
        _ = semaphore.wait(timeout: DispatchTime.distantFuture)
    }
    
    static var allTests = [
        ("testVmClient", testVmClient),
        ]
}
