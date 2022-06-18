import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gsc/responsive/mobile_screen_layout.dart';
import 'package:gsc/responsive/responsive_layout_screen.dart';
import 'package:gsc/responsive/web_screen_layout.dart';
import 'package:gsc/utils/colors.dart';

void main() async {
  // ensure firebase is initialized when app starts
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    // check if the web run
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyABA0808LdL2v2vkkEhNSBI8e1oNErh71k",
            appId: "",
            messagingSenderId: "918314913921",
            projectId: "gsc-flutter",
            storageBucket: "gsc-flutter.appspot.com",
          ),
        );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GSC',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: const ResponsiveLayout(
          webScreenLayout: WebScreenLayout(),
          mobileScreenLayout: MobileScreenLayout()),
    );
  }
}
