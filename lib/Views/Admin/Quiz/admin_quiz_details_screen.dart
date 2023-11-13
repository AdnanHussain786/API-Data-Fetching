import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/Views/User/QuizScreens/quizloadingscreen.dart';
import 'package:quizapp/constants/colors.dart';
import 'package:quizapp/constants/mycustombutton.dart';
import 'package:quizapp/constants/textstylehelper1.dart';

class AdminQuizDetailsScreen extends StatefulWidget {
  const AdminQuizDetailsScreen({super.key});

  @override
  State<AdminQuizDetailsScreen> createState() => _AdminQuizDetailsScreenState();
}

class _AdminQuizDetailsScreenState extends State<AdminQuizDetailsScreen> {
  final questionsController = TextEditingController();
  bool isStandardSelected = true;
  bool isCustomizeSelected = false;
  @override
  Widget build(BuildContext context) {
    // Initialize flutter_screenutil in the build method

    return Scaffold(
      backgroundColor: MyCustomColors().kPrimaryColor3,
      appBar: AppBar(
        elevation: 0,
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
            // border: Border.all(
            //     color: MyCustomColors().kWhiteColor,
            //     strokeAlign: 0,
            //     width: 0.w),
            color: MyCustomColors().kWhiteColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            )),
        child: Padding(
          // Use ScreenUtil to set padding
          padding: EdgeInsets.only(
            left: 20.w,
            right: 20.w,
            top: 15.h,
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
                        TextStyleHelper().mytext('3.5K', 14.sp, FontWeight.w700,
                            MyCustomColors().kBlackColor2),
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
                        TextStyleHelper().mytext('3.5K', 14.sp, FontWeight.w700,
                            MyCustomColors().kBlackColor2),
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
                        TextStyleHelper().mytext('210', 14.sp, FontWeight.w700,
                            MyCustomColors().kBlackColor2),
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
                  'Non dolorum perferendis quo eaque vero eston dolorum perferendis quo eaque vero est ipsum doloremque. Nisi quis ut sed eum ut. Dignissimos ducimus sunt. Vitae rerum dolores suscipit at qui. Rerum error aut et cum eligendi tempora consequatur molestias.',
                  14.sp,
                  FontWeight.w400,
                  MyCustomColors().kBlackColor2),

              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RoundButton(
                    text: 'Remove',
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
                    },
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  RoundButton(
                    text: 'Edit',
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
    );
  }
}
