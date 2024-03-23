import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'DesktopApp.dart';
import 'MobApp.dart';
import 'WebApp.dart';

void main() {
  if (kIsWeb) {
    runApp(WebApp());
  } else if (Platform.isIOS|| Platform.isAndroid) {
    runApp(MobApp());
  }
  else if (Platform.isWindows || Platform.isMacOS || Platform.isLinux) {
    runApp(DesktopApp());
  }
}