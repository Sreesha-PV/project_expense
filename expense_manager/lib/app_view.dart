import 'package:flutter/material.dart';
import './screens/home/views/home_screen.dart';

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
      home:const HomeScreen() ,
    );
  }
}