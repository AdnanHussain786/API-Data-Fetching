import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/Views/screens/QuizScreens/quizloadingscreen.dart';
import 'package:quizapp/constants/colors.dart';
import 'package:quizapp/constants/mycustombutton.dart';
import 'package:quizapp/constants/textstylehelper1.dart';

class QuizDetailsScreen extends StatefulWidget {
  const QuizDetailsScreen({super.key});

  @override
  State<QuizDetailsScreen> createState() => _QuizDetailsScreenState();
}

class _QuizDetailsScreenState extends State<QuizDetailsScreen> {
  final questionsController = TextEditingController();
  bool isStandardSelected = true;
  bool isCustomizeSelected = false;
  @override
  Widget build(BuildContext context) {
    // Initialize flutter_screenutil in the build method

    return Container(
      decoration: BoxDecoration(color: MyCustomColors().kPrimaryColor3),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: MyCustomColors().kPrimaryColor3,
          title: TextStyleHelper().mytext(
            'Quiz Details',
            18.sp,
            FontWeight.w500,
            MyCustomColors().kWhiteColor,
          ),
          centerTitle: true,
          leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: const Icon(Icons.arrow_back_ios),
          ),
          iconTheme: IconThemeData(color: MyCustomColors().kWhiteColor),
        ),
        body: Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: MyCustomColors().kWhiteColor,
                  strokeAlign: 0,
                  width: 0.w),
              color: MyCustomColors().kWhiteColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              )),
          child: Padding(
            // Use ScreenUtil to set padding
            padding: EdgeInsets.only(
              left: 10.w,
              right: 10.w,
              top: 20.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Use ScreenUtil to set height and width
                SizedBox(
                  height: 204.54.h,
                  width: 386.w,
                  child: Image.asset('assets/images/Rectangle1.1.png'),
                ),
                SizedBox(
                  height: 10.w,
                ),
                TextStyleHelper().mytext('Microprocessor in computer Science',
                    20.sp, FontWeight.w700, MyCustomColors().kBlackColor),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20).r,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          TextStyleHelper().mytext('Played', 14.sp,
                              FontWeight.w500, MyCustomColors().kBlackColor2),
                          SizedBox(
                            height: 8.h,
                          ),
                          TextStyleHelper().mytext('3.5K', 14.sp,
                              FontWeight.w700, MyCustomColors().kBlackColor2),
                        ],
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Column(
                        children: [
                          TextStyleHelper().mytext('Questions', 14.sp,
                              FontWeight.w500, MyCustomColors().kBlackColor2),
                          SizedBox(
                            height: 8.h,
                          ),
                          TextStyleHelper().mytext('3.5K', 14.sp,
                              FontWeight.w700, MyCustomColors().kBlackColor2),
                        ],
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Column(
                        children: [
                          TextStyleHelper().mytext('Max. Score', 14.sp,
                              FontWeight.w500, MyCustomColors().kBlackColor2),
                          SizedBox(
                            height: 8.h,
                          ),
                          TextStyleHelper().mytext('08/10', 14.sp,
                              FontWeight.w700, MyCustomColors().kBlackColor2),
                        ],
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      Column(
                        children: [
                          TextStyleHelper().mytext('Shared', 14.sp,
                              FontWeight.w500, MyCustomColors().kBlackColor2),
                          SizedBox(
                            height: 7.h,
                          ),
                          TextStyleHelper().mytext('210', 14.sp,
                              FontWeight.w700, MyCustomColors().kBlackColor2),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
                TextStyleHelper().mytext('Description', 14.sp, FontWeight.w700,
                    MyCustomColors().kBlackColor),
                SizedBox(height: 10.sp),
                TextStyleHelper().mytext(
                    'Non dolorum perferendis quo eaque vero est ipsum doloremque. Nisi quis ut sed eum ut. Dignissimos ducimus sunt. Vitae rerum dolores suscipit at qui. Rerum error aut et cum eligendi tempora consequatur molestias.',
                    14.sp,
                    FontWeight.w400,
                    MyCustomColors().kBlackColor2),
                SizedBox(
                  height: 20.h,
                ),
                Center(
                  child: TextStyleHelper().mytext('Play Now!', 18.sp,
                      FontWeight.w700, MyCustomColors().kBlackColor),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RoundButton(
                      text: 'Customize',
                      textColor: isCustomizeSelected
                          ? MyCustomColors().kWhiteColor
                          : MyCustomColors().kSecondaryColor,
                      backgroundColor: isCustomizeSelected
                          ? MyCustomColors().kPrimaryColor5
                          : MyCustomColors().kWhiteColor,
                      borderColor: MyCustomColors().kPrimaryColor,
                      height: 57.h,
                      width: 160.w,
                      radius: 10.r,
                      onClick: () {
                        setState(() {
                          isStandardSelected = false;
                          isCustomizeSelected = true;
                        });
                        // Show bottom sheet here
                        showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(25))),
                          context: context,
                          builder: (BuildContext context) {
                            bool isCheckbox1Checked = false;
                            bool isCheckbox2Checked = false;
                            return SizedBox(
                              height: 370.h, // Set the height you want
                              width: 428.w,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0).r,
                                child: StatefulBuilder(
                                  builder: (BuildContext context,
                                      StateSetter setState) {
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: TextStyleHelper().mytext(
                                            'Customize Quiz',
                                            18.sp,
                                            FontWeight.w700,
                                            MyCustomColors().kBlackColor,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 30.h,
                                        ),
                                        TextStyleHelper().mytext(
                                          'Number of Questions',
                                          13,
                                          FontWeight.w500,
                                          MyCustomColors().kBlackColor,
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        TextStyleHelper().mInputFields(
                                          questionsController,
                                          false,
                                          TextInputType.emailAddress,
                                          'Enter No. of Questions',
                                          'Enter No. of Questions',
                                          MyCustomColors().kBlackColor1,
                                          'Questions',
                                          335,
                                          50,
                                          0,
                                          0,
                                          10,
                                        ),
                                        SizedBox(
                                          height: 30.h,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                                  left: 10, right: 10)
                                              .w,
                                          child: Row(
                                            children: [
                                              TextStyleHelper().mytext(
                                                'Please select category',
                                                13.sp,
                                                FontWeight.w500,
                                                MyCustomColors().kBlackColor,
                                              ),
                                              SizedBox(
                                                width: 2.w,
                                              ),
                                              TextStyleHelper().mytext(
                                                '(minimum 1)',
                                                13.sp,
                                                FontWeight.w500,
                                                MyCustomColors().kBlackColor2,
                                              ),
                                              SizedBox(
                                                width: 50.w,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    isCheckbox1Checked = false;
                                                    isCheckbox2Checked = false;
                                                  });
                                                },
                                                child: Text(
                                                  'Reset all',
                                                  style: TextStyle(
                                                    color: MyCustomColors()
                                                        .kPrimaryColor2,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12.sp,
                                                    decoration: TextDecoration
                                                        .underline,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(
                                              activeColor: MyCustomColors()
                                                  .kPrimaryColor3,
                                              value: isCheckbox1Checked,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  isCheckbox1Checked =
                                                      value ?? false;
                                                });
                                              },
                                            ),
                                            TextStyleHelper().mytext(
                                              'Hardware',
                                              10.sp,
                                              FontWeight.w500,
                                              MyCustomColors().kThemeColor,
                                            ),
                                            Checkbox(
                                              activeColor: MyCustomColors()
                                                  .kPrimaryColor3,
                                              value: isCheckbox2Checked,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  isCheckbox2Checked =
                                                      value ?? false;
                                                });
                                              },
                                            ),
                                            TextStyleHelper().mytext(
                                              'Software',
                                              10.sp,
                                              FontWeight.w500,
                                              MyCustomColors().kThemeColor,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 30.h,
                                        ),
                                        RoundButton(
                                          text: 'Start Quiz',
                                          textColor:
                                              MyCustomColors().kWhiteColor,
                                          backgroundColor:
                                              MyCustomColors().kPrimaryColor,
                                          borderColor:
                                              MyCustomColors().kPrimaryColor,
                                          height: 45.h,
                                          width: 388.w,
                                          radius: 10.r,
                                          onClick: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const QuizLoadingScreen(),
                                                ));
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    RoundButton(
                      text: 'Standard',
                      textColor: isStandardSelected
                          ? MyCustomColors().kWhiteColor
                          : MyCustomColors().kSecondaryColor,
                      backgroundColor: isStandardSelected
                          ? MyCustomColors().kPrimaryColor5
                          : MyCustomColors().kWhiteColor,
                      borderColor: MyCustomColors().kPrimaryColor,
                      height: 57.h,
                      width: 160.w,
                      radius: 10.r,
                      onClick: () {
                        setState(() {
                          isStandardSelected = true;
                          isCustomizeSelected = false;
                        });
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
