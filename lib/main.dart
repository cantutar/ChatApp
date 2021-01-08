import 'package:chat_app/helper/authenticate.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "What's up?",
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF16162C),
        primarySwatch: myColour,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Authenticate(),
    );
  }
}

const MaterialColor myColour = const MaterialColor(
  0xFF43A047,
  const <int, Color>{
    50: const Color(0xFF43A047),
    100: const Color(0xFF43A047),
    200: const Color(0xFF43A047),
    300: const Color(0xFF43A047),
    400: const Color(0xFF43A047),
    500: const Color(0xFF43A047),
    600: const Color(0xFF43A047),
    700: const Color(0xFF43A047),
    800: const Color(0xFF43A047),
    900: const Color(0xFF43A047),
  },
);
