import 'package:flutter/material.dart';
import 'package:quizapp/constants/colors.dart';

class QuizScreensContainersData {
  List<Map<String, dynamic>> categoriesData = [
    {
      'title': 'Computer\nScience',
      'quizzes': 17,
      'color': MyCustomColors().kPrimaryColor2,
    },
    {
      'title': 'Physics II\n',
      'quizzes': 14,
      'color': const Color(0xffFFA800),
    },
    {
      'title': 'Chemistry\n',
      'quizzes': 28,
      'color': const Color.fromARGB(255, 64, 147, 161),
    },
    // Add more data for other categories
  ];
  // Define a list of data for images and other information
  List<Map<String, dynamic>> imageAndContainerData = [
    {
      'image': 'assets/images/Rectangle1.png',
      'color': const Color(0xffFFA800),
      'text': '16 questions',
    },
    {
      'image': 'assets/images/Rectangle2.png',
      'color': const Color(0xffAB0BCF),
      'text': '20 questions',
    },
    // Add more data for other images
    {
      'image': 'assets/images/Rectangle2.png',
      'color': const Color(0xffAB0BC5),
      'text': '24 questions',
    },
  ];
  List<String> textList1 = [
    'Microprocessor in Computer\nScience',
    'Guess the Wild animals\nnames',
    'Guess the Wild animals\nnames'
  ];

  List<Color> containerColors = [
    const Color(0xffFFA800),
    const Color(0xffAB0BC5),
    const Color(0xff29BFFF),
    const Color(0xffEA5455),
    const Color(0xff082A6F),
    const Color(0xff01AB1C) // Add more colors as needed
  ];
}
