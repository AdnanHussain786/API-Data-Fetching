import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/Views/screens/QuizScreens/lastquestion.dart';
import 'package:quizapp/constants/colors.dart';
import 'package:quizapp/constants/mycustombutton.dart';
import 'package:quizapp/constants/textstylehelper1.dart';

class AttemptingQuizScreen extends StatefulWidget {
  const AttemptingQuizScreen({
    Key? key,
  }) : super(key: key);

  static String question01 = "";

  @override
  State<AttemptingQuizScreen> createState() => _AttemptingQuizScreenState();
}

class _AttemptingQuizScreenState extends State<AttemptingQuizScreen> {
  String selectedAns01 = "";
  int selectedIndex = -1;

  var options = {
    "1": "RAM",
    "2": "Hard Disk",
    "3": "DVD",
    "4": "ROM",
  };

  @override
  Widget build(BuildContext context) {
    Color boxColor = MyCustomColors().kPrimaryColor3;
    Color backgroundColor = MyCustomColors().kWhiteColor;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyCustomColors().kPrimaryColor3,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15, top: 10).r,
            child: Column(
              children: [
                Container(
                  width: 47.w,
                  height: 37.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: MyCustomColors()
                        .kWhiteColor, // Notification badge color
                  ),
                  child: Center(
                    child: TextStyleHelper().mytext(
                      '1/16',
                      16.sp,
                      FontWeight.w500,
                      MyCustomColors().kBlackColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        // Use ScreenUtil to set padding
        padding: EdgeInsets.only(
          left: 10.w,
          right: 10.w,
          top: 20.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextStyleHelper().mytext(
              "Question #1", // Add the question number
              20,
              FontWeight.w500,
              MyCustomColors().kBlackColor2, // Customize the color
            ),
            const SizedBox(
              height: 10,
            ),
            TextStyleHelper().mytext(
              "What is the Permanent or volatile memory of a computer System?", // Add the question number
              20,
              FontWeight.w500,
              MyCustomColors().kBlackColor, // Customize the color
            ),
            const SizedBox(
              height: 30,
            ),
            Wrap(
              children: List.generate(4, (index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                      selectedAns01 = options.values.elementAt(index);
                    });
                  },
                  child: Column(
                    children: [
                      AnswerBox(
                        answer: options.values.elementAt(index),
                        color:
                            selectedIndex == index ? boxColor : backgroundColor,
                        currentIndex: index, // Pass the current index
                        selectedIndex: selectedIndex, // Pass the selected index
                        onClick: () {
                          setState(() {
                            selectedIndex = index;
                            selectedAns01 = options.values.elementAt(index);
                          });
                        },
                      ),
                    ],
                  ),
                );
              }),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: RoundButton(
                text: 'Next',
                textColor: MyCustomColors().kWhiteColor,
                backgroundColor: MyCustomColors().kPrimaryColor,
                borderColor: MyCustomColors().kPrimaryColor,
                height: 57.h,
                width: 340.w,
                radius: 10.r,
                onClick: () {
                  if (selectedAns01.isNotEmpty) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LastQuestionScreen(),
                      ),
                    );
                  } else {
                    // Show a dialog if no option is selected
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: TextStyleHelper().mytext(
                          "Select an Option",
                          18.sp,
                          FontWeight.normal,
                          MyCustomColors().kBlackColor,
                        ),
                        content: TextStyleHelper().mytext(
                          "Please select an answer before moving to the next question.",
                          16.sp,
                          FontWeight.normal,
                          MyCustomColors().kBlackColor,
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: TextStyleHelper().mytext(
                              "OK",
                              18.sp,
                              FontWeight.normal,
                              MyCustomColors().kPrimaryColor,
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AnswerBox extends StatelessWidget {
  final String answer;
  final Color color;
  final int selectedIndex; // Track the selected answer's index
  final int currentIndex; // The index of this answer box
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
        margin: const EdgeInsets.only(
          top: 10,
          bottom: 5,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: MyCustomColors().kSecondaryColor2),
          borderRadius: BorderRadius.circular(10),
          color: currentIndex == selectedIndex
              ? color
              : MyCustomColors()
                  .kWhiteColor, // Change text color based on isSelected
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
                    : MyCustomColors()
                        .kBlackColor, // Change text color based on isSelected
              ),
            ),
          ],
        ),
      ),
    );
  }
}
