import XCTest
@testable import JDCloudSDKCore
@testable import JDCloudSDKVm

class VmTests: XCTestCase{
    func testExample() {
    }
    
    func testVmClient() throws{
        
        let semaphore = DispatchSemaphore(value: 0)
        let credentials = Credential(accessKeyId: "your ak ", secretAccessKey: "your sk");
        
        let vmClient = VmJDCloudClient(credential: credentials)
        let describeInstancesRequest = DescribeInstancesRequest(regionId: "cn-north-1");
      
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
