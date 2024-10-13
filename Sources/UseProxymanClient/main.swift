import UseProxyman
import Foundation

let a = 17
let b = 25

@UseProxyman
class TestClass {
 
    func test() {
        if isProxymanEnabled {
            print("ENABLED \(isProxymanEnabled)")
        } else {
            print("NOT ENABLED")
        }
    }
}

let testClass = TestClass()
testClass.test()

 
