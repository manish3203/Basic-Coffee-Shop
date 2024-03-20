
import 'package:coffe_shop/Screens/Splash%20Screen/splash_screen.dart';
import 'package:coffe_shop/Services/db_service.dart';
import 'package:flutter/material.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();
  createDataBase();
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner:false,
      home:SplashScreen()
    );
  }
}
