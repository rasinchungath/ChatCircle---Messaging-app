import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

const logoText = Text(
  'ChatCircle',
  style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 30,
    color: Colors.blue,
  ),
);

const colorOne = Colors.blue;
const colorTwo = Color.fromARGB(255, 5, 89, 158);
const kTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.only(top: 15, bottom: 15, left: 30),
  hintText: 'Enter a value',
  hintStyle:
      TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w500),
  border: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.blue,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(30),
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.blue,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(30),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.blue,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(30),
    ),
  ),
);

RichText logoColorText = RichText(
  text: const TextSpan(
    style: TextStyle(
      fontSize: 30,
    ),
    children: <TextSpan>[
      TextSpan(
        text: 'Chat',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: colorOne,
        ),
      ),
      TextSpan(
        text: 'Circle',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: colorTwo,
        ),
      ),
    ],
  ),
);

DefaultTextStyle animatedText = DefaultTextStyle(
  style: const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 30,
    color: colorTwo,
  ),
  child: AnimatedTextKit(
    animatedTexts: [
      TypewriterAnimatedText('ChatCircle'),
    ],
  ),
);
