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

  const AnswerBox({
    Key? key,
    required this.answer,
    required this.color,
    required this.selectedIndex,
    required this.currentIndex,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        return onClick();
      },
      child: Container(
        height: 57.h,
        width: 340.w,
        margin: const EdgeInsets.only(top: 10, bottom: 5, left: 10),
        decoration: BoxDecoration(
          border: Border.all(color: MyCustomColors().kSecondaryColor2),
          borderRadius: BorderRadius.circular(10),
          color: currentIndex == selectedIndex
              ? color
              : MyCustomColors().kWhiteColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 30,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: TextStyleHelper().mytext(
                answer,
                14,
                FontWeight.w700,
                currentIndex == selectedIndex
                    ? MyCustomColors().kWhiteColor
                    : MyCustomColors().kBlackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
