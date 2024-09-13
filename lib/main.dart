import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_project/views/splash_screen/splashScreen.dart';
import 'providers/authProvider.dart';
import 'providers/payment_providers.dart';
import 'providers/student_providers.dart';
import 'views/home_screen/homeScreen.dart';
import 'views/authentication_screens/signin_screen/signin_screen.dart';
import 'views/authentication_screens/signup_screen/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        // ChangeNotifierProvider(create: (_) => StudentProvider()),
        // ChangeNotifierProvider(create: (_) => PaymentProvider()),
      ],
      child: MaterialApp(
        title: 'School Management App',
        theme: ThemeData(primarySwatch: Colors.blue),
        initialRoute: '/splash',
        routes: {
          '/signin': (context) => SignInScreen(),
          '/signup': (context) => SignUpScreen(),
          '/home': (context) =>const HomeScreen(),
          '/splash':(context)=>const SplashScreen(),
        },
      ),
    );
  }
}
