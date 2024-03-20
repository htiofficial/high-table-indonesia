import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/colors/colors.dart';
import 'package:hti_indonesia/src/config/font/font.dart';
import 'package:hti_indonesia/src/routes/router_generator.dart';
import 'package:hti_indonesia/src/routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyBcoIQZH7IKLPF3ftXbYvdcLybE_6jz7Ho",
      authDomain: "high-table-indonesia.firebaseapp.com",
      projectId: "high-table-indonesia",
      storageBucket: "high-table-indonesia.appspot.com",
      messagingSenderId: "319566678819",
      appId: "1:319566678819:web:75dc31ce13e2fc3f41da96",
      measurementId: "G-KY8M1KVX6B",
    ),
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        fontFamily: appFont,
        scaffoldBackgroundColor: AppColors.backgroundColor,
        primaryColor: AppColors.primaryColor,
        colorScheme: const ColorScheme.light(
          primary: AppColors.primaryColor,
        ),
      ),
      initialRoute: routeMain,
      navigatorKey: navKey,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
