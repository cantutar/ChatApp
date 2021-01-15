import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/services/auth.dart';
import 'package:chat_app/views/home.dart';
import 'package:chat_app/views/signin.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whats Up?',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFECE5DD),
        primarySwatch: myColour,
      ),
      home: FutureBuilder(
        future: AuthMethods().getCurrentUser(),
        builder: (context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasData) {
            return Home();
          } else {
            return SignIn();
          }
        },
      ),
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
