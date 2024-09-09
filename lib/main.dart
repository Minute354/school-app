import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_project/views/home_screen/homeScreen.dart';
import 'package:sample_project/views/signup_screen/signup_screen.dart';
import 'package:sample_project/views/splash_screen/splashScreen.dart';
import 'providers/auth_provider.dart';
import 'views/signin_screen/signin_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'School Management App',
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/signin': (context) => SignInScreen(),
        '/signup': (context) => SignUpScreen(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}
