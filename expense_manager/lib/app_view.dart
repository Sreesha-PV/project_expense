import 'package:flutter/material.dart';
import 'screens/authentication/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();  
  runApp(const MyAppView());
}
class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expense Manager',
      theme: ThemeData(colorScheme: const ColorScheme.light(
        
        onSurface:Colors.black ,
        primary: Color(0xFF00B2E7),
        secondary: Color(0xFFE064f6),
        tertiary: Color(0xFFFF8D6C),
        outline: Colors.grey
    ),
      ),
      home:const LoginScreen() ,
    );
  }
}
