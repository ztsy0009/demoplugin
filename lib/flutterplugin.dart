
import 'dart:async';

import 'package:flutter/services.dart';

class Flutterplugin {
  static const MethodChannel _channel = MethodChannel('flutterplugin');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
  static Future<String?> get showAleartDialog async{
    final String? text =await  _channel.invokeMethod('getshowAlertDialog');
    return text;

  }
}
