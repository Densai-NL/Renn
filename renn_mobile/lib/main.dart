import 'package:flutter/material.dart';
import 'package:renn_mobile/main_nav.dart';
import 'package:here_sdk/core.dart';
import 'package:here_sdk/core.engine.dart';
import 'package:here_sdk/core.errors.dart';

void main() async {
  await _initializeHERESDK();
  runApp(const MyApp());
}

Future<void> _initializeHERESDK() async {
  // Needs to be called before accessing SDKOptions to load necessary libraries.
  SdkContext.init(IsolateOrigin.main);

  // Set your credentials for the HERE SDK.
  String accessKeyId = "";
  String accessKeySecret = "";
  AuthenticationMode authenticationMode = AuthenticationMode.withKeySecret(
    accessKeyId,
    accessKeySecret,
  );
  SDKOptions sdkOptions = SDKOptions.withAuthenticationMode(authenticationMode);

  try {
    await SDKNativeEngine.makeSharedInstance(sdkOptions);
  } on InstantiationException {
    throw Exception("Failed to initialize the HERE SDK.");
  }
}

const Color backgroundColor = Color.fromRGBO(19, 37, 23, 1);

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final AppLifecycleListener _appLifecycleListener;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Renn',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: backgroundColor,
          foregroundColor: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(
              Color.fromRGBO(63, 236, 141, 1),
            ),
            foregroundColor: WidgetStateProperty.all(Colors.black),
            textStyle: WidgetStateProperty.all(
              const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
          ),
        ),
        colorScheme: .fromSeed(seedColor: Colors.green),
        textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
        scaffoldBackgroundColor: backgroundColor,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Color.fromRGBO(63, 236, 141, 1),
          unselectedItemColor: Colors.grey,
          backgroundColor: backgroundColor,
          unselectedLabelStyle: TextStyle(color: Colors.grey),
        ),
      ),
      home: MainNav(),
    );
  }

  @override
  void initState() {
    super.initState();
    _appLifecycleListener = AppLifecycleListener(
      onDetach: () =>
          // Sometimes Flutter may not reliably call dispose(),
          // therefore it is recommended to dispose the HERE SDK
          // also when the AppLifecycleListener is detached.
          // See more details: https://github.com/flutter/flutter/issues/40940
          {print('AppLifecycleListener detached.'), _disposeHERESDK()},
    );
  }

  @override
  void dispose() {
    _disposeHERESDK();
    super.dispose();
  }

  void _disposeHERESDK() async {
    // Free HERE SDK resources before the application shuts down.
    await SDKNativeEngine.sharedInstance?.dispose();
    SdkContext.release();
    _appLifecycleListener.dispose();
  }
}
