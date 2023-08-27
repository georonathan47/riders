import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GMSServices.provideAPIKey("AIzaSyDTcHLuV7jYEY-xH8g69IwJ9oRTUsWxp-Y")
    GeneratedPluginRegistrant.register(with: self)
    
    if let uuid = getDeviceUUID() {
        print("Device UUID: \(uuid)")
    } else {
        print("Failed to retrieve device UUID.")
    }
    
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
  
func getDeviceUUID() -> String? {
    if let uuid = UIDevice.current.identifierForVendor?.uuidString {
        return uuid
    }
    return nil
  }
}
