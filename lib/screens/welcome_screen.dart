import 'package:chat_circle/screens/registration_screen.dart';
import 'package:flutter/material.dart';

import '../components/custom_button.dart';
import '../constants/constants.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    animation = ColorTween(begin: Colors.white70, end: Colors.white)
        .animate(controller);
    controller.forward();
    animation.addStatusListener((status) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Hero(
                      tag: 'logo',
                      child: SizedBox(
                        height: 50,
                        child: Image.asset('assets/images/chat.png'),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    animatedText,
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomButton(
                  title: 'Login',
                  color: colorOne,
                  onpressed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                  title: 'Register',
                  color: colorTwo,
                  onpressed: () {
                    Navigator.pushNamed(context, RegistrationScreen.id);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
