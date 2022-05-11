import Flutter
import UIKit

public class SwiftFlutterpluginPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutterplugin", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterpluginPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
  if(call.method.elementsEqual("showAleartDialog")){
  let arguments =call.arguments as? NSDictionary
  let msg = arguments["Hello World...iOS"] as String
  result(msg)
  }
  result("Hello World...iOS")

    //result("iOS " + UIDevice.current.systemVersion)
  }
}
