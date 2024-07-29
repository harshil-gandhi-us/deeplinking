import Foundation
import AppsOnAirIOSCore

public class DeepLink: NSObject {
    let appsOnAirCore = AppsOnAirCoreServices()
    public func deepLinkAdded() {
        print("App ID DeepLinking Enable \(appsOnAirCore.getAppId())")
        appsOnAirCore.networkStatusListenerHandler { isConnected in
            print("DeepLink Connected -> \(isConnected)")
        }
    }
}
