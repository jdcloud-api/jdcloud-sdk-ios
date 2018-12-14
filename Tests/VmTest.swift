import XCTest
@testable import JDCloudSDKCore
@testable import JDCloudSDKVm

class VmTests: XCTestCase{
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
      //  XCTAssertEqual(Core.text, "Hello, World!")
    }

    func testVmClient() throws{
       
        let semaphore = DispatchSemaphore(value: 0)
        let credentials = Credential(accessKeyId: "636B856DCF14D467D313CCB0C0E2B21C", secretAccessKey: "6EA0C4C1FC1AD060568A1C117E5C0287");
        let sdkEnvironment = SDKEnvironment(endPoint: "192.168.182.82:8000")
        let vmClient = VmJDCloudClient(credential: credentials,sdkEnvironment: sdkEnvironment)
        vmClient.httpRequestProtocol = "http"
        let describeInstancesRequest = DescribeInstancesRequest(regionId: "cn-north-1");
        GlobalConfig.debug = true 
        try vmClient.describeInstancesAsync(request: describeInstancesRequest) { (statusCode, requestResponse, error,data) in
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
