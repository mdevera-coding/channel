import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      
      let controller : FlutterViewController = window?.rootViewController as! FlutterViewController // swiftlint:disable:this force_cast
      let sampleChannel = FlutterMethodChannel(name: "com.domain/sample", binaryMessenger: controller.binaryMessenger)
      sampleChannel.setMethodCallHandler({(call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in self.handleSample()})
        
      GeneratedPluginRegistrant.register(with: self)
      return super.application(application, didFinishLaunchingWithOptions: launchOptions)
      
  }
    
    private func handleSample(){print("Sample was invoked.")}
    
    
}
