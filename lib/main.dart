import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wecani/src/app.dart';

void main() {
  /// See more on handling error;
  ///
  /// Flutter Doc:
  /// https://flutter.dev/docs/testing/errors
  ///
  /// Kodrillar:
  /// https://www.kodrillar.com/2023/04/how-does-flutter-handle-uncaught-errors.html
  ///

  ErrorWidget.builder = (FlutterErrorDetails details) {
    // TODO: Create error view
    return Scaffold(
      appBar: AppBar(title: const Text('An error occurred!')),
    );
  };

  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
  };

  PlatformDispatcher.instance.onError = (Object error, StackTrace stackTrace) {
    debugPrint(error.toString());
    return true;
  };

  runApp(
    const ProviderScope(child: WecaniApp()),
  );
}
