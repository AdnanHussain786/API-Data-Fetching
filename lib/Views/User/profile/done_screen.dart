import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp/constants/bottom_navigation_bar.dart';

class DoneScreen extends StatelessWidget {
  const DoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: GestureDetector(
        onTap: () {
          Get.offAll(() => const CustomBottomNavigationBar());
        },
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/done.png'), fit: BoxFit.cover),
          ),
        ),
      ),
    ));
  }
}
