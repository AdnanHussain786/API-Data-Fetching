import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/constants/colors.dart';
import 'package:quizapp/constants/textstylehelper1.dart';

class AnswerBox extends StatelessWidget {
  final String answer;
  final Color color;
  final int selectedIndex;
  final int currentIndex;
  final VoidCallback onClick;
  final bool isCorrectAnswer;
  final List<String> options;
  final String correctAnswer;

  const AnswerBox({
    Key? key,
    required this.answer,
    required this.color,
    required this.selectedIndex,
    required this.currentIndex,
    required this.onClick,
    required this.isCorrectAnswer,
    required this.options,
    required this.correctAnswer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isAnswerSelected = currentIndex == selectedIndex;

    return InkWell(
      onTap: onClick,
      child: Container(
        height: 57.h,
        width: 340.w,
        margin: const EdgeInsets.only(top: 10, bottom: 5, left: 10),
        decoration: BoxDecoration(
          border: Border.all(
            color: currentIndex == selectedIndex
                ? (isCorrectAnswer
                    ? Colors.green // Correct answer color
                    : (isAnswerSelected && isCorrectAnswer)
                        ? Colors
                            .green // Change the color of the correct answer when selected and incorrect
                        : MyCustomColors()
                            .kFalseColor) // Red border for wrong answer
                : MyCustomColors().kSecondaryColor2,

            width: 2, // Border width
          ),
          borderRadius: BorderRadius.circular(10),
          color: currentIndex == selectedIndex
              ? (isCorrectAnswer
                  ? Colors.green // Correct answer color
                  : Colors.transparent) // Wrong answer color
              : MyCustomColors().kWhiteColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  answer,
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: currentIndex == selectedIndex
                          ? isCorrectAnswer
                              ? MyCustomColors().kWhiteColor
                              : MyCustomColors().kFalseColor
                          : MyCustomColors().kBlackColor),
                )),
            if (currentIndex == selectedIndex)
              isCorrectAnswer
                  ? Icon(Icons.check,
                      color: Colors.white) // Check icon for correct answer
                  : Icon(Icons.close,
                      color: MyCustomColors()
                          .kFalseColor), // Cross icon for wrong answer
          ],
        ),
      ),
    );
  }
}
