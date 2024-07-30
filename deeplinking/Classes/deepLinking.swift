import Foundation
import AppsOnAirIOSCore

public class DeepLink: NSObject {
    let appsOnAirCore = AppsOnAirCoreServices()
    private var appId: String = ""
    
    public func initialize(){
        self.appId = appsOnAirCore.getAppId();
        print("appID \(self.appId)")
        appsOnAirCore.initialize()
    }
    
    public func deepLinkAdded() {
       if self.appId != "" {
            print("App ID DeepLinking Enable \(self.appsOnAirCore.getAppId())")
            self.appsOnAirCore.networkStatusListenerHandler { isConnected in
                    print("DeepLink Connected -> \(isConnected)")
            }
        }
       
    }
}
