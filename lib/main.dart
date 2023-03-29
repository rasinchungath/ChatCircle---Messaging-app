import 'package:chat_circle/screens/chat_screen.dart';
import 'package:chat_circle/screens/login_screen.dart';
import 'package:chat_circle/screens/registration_screen.dart';
import 'package:chat_circle/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: WelcomeScreen.id,
    routes: {
      WelcomeScreen.id: (context)=>  const WelcomeScreen(),
      RegistrationScreen.id: (context)=> const RegistrationScreen(),
      LoginScreen.id: (context)=> const LoginScreen(),
      ChatScreen.id: (context)=> const ChatScreen(),
    },

  ),
  );
  
}