import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/Views/screens/QuizScreens/questiondata.dart';
import 'package:quizapp/Views/screens/QuizScreens/questionscreen.dart';
import 'package:quizapp/constants/colors.dart';
import 'package:quizapp/constants/textstylehelper1.dart';

class AttemptingQuizScreen extends StatefulWidget {
  const AttemptingQuizScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<AttemptingQuizScreen> createState() => _AttemptingQuizScreenState();
}

class _AttemptingQuizScreenState extends State<AttemptingQuizScreen> {
  final PageController _pageController = PageController();

  int currentPage = 0; // Track the current page

  @override
  void initState() {
    super.initState();

    // Add a listener to the PageController to update the current page
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page?.toInt() ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (currentPage > 0) {
          _pageController.previousPage(
            duration: const Duration(milliseconds: 100),
            curve: Curves.ease,
          );
          return false; // Prevent default back button behavior
        }
        return true; // Allow default back button behavior if on the first question
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: MyCustomColors().kPrimaryColor3,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: SizedBox(
                  width: 171.w,
                  height: 8.h,
                  child: LinearProgressIndicator(
                    value: (currentPage + 1) / questions.length,
                    valueColor: AlwaysStoppedAnimation<Color>(
                        MyCustomColors().kSecondaryColor),
                    backgroundColor: MyCustomColors().kWhiteColor3,
                  ),
                ),
              ),
              const Spacer(), // To push the title to the right
              Container(
                width: 47.w,
                height: 37.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: MyCustomColors().kWhiteColor,
                ),
                child: Center(
                  child: TextStyleHelper().mytext(
                    '${currentPage + 1}/${questions.length}',
                    16.sp,
                    FontWeight.w500,
                    MyCustomColors().kBlackColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: PageView.builder(
          physics: const NeverScrollableScrollPhysics(),
          controller: _pageController,
          itemCount: questions.length,
          itemBuilder: (context, index) {
            return QuestionScreen(
              questions: questions,
              questionData: questions[index],
              onNext: () {
                if (index < questions.length - 1) {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.ease,
                  );
                } else {
                  showBottomSheet(
                      context); // Show bottom sheet on the last question
                }
              },
            );
          },
        ),
      ),
    );
  }

  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextStyleHelper().mytext(
                  "Quiz Finished",
                  20,
                  FontWeight.bold,
                  MyCustomColors().kBlackColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextStyleHelper().mytext(
                  "Congratulations! You have completed the quiz.",
                  16,
                  FontWeight.normal,
                  MyCustomColors().kBlackColor,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
