import Foundation
import AppsOnAirIOSCore

public class DeepLink {
    public static func deepLinkAdded() {
        print("App ID DeepLinking Enable \(AppsOnAirCoreServices.shared.getAppId())")
    }
}
