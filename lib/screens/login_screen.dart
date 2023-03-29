import 'package:flutter/material.dart';
import '../components/custom_button.dart';
import '../constants/constants.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 60, left: 10, right: 10),
          child: Column(
            children: [
              Hero(
                tag: 'logo',
                child: SizedBox(
                  height: 150,
                  child: Image.asset('assets/images/chat.png'),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              logoColorText,
              const SizedBox(
                height: 40,
              ),
              TextFormField(
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                ),
                decoration:
                    kTextFieldDecoration.copyWith(hintText: 'Enter your email'),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                ),
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Enter your password'),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                title: 'Login',
                color: colorTwo,
                onpressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
