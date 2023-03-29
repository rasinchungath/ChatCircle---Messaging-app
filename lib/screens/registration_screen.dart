import 'package:flutter/material.dart';
import '../components/custom_button.dart';
import '../constants/constants.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';

  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
                decoration:kTextFieldDecoration.copyWith(hintText: 'Enter your email'),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                ),
                decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your password'),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                title: 'Register',
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
