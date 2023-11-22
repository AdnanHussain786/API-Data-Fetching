import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/Views/User/QuizScreens/quizloadingscreen.dart';
import 'package:quizapp/constants/colors.dart';
import 'package:quizapp/constants/mycustombutton.dart';
import 'package:quizapp/constants/textstylehelper1.dart';

class SpecificServiceScreen extends StatefulWidget {
  const SpecificServiceScreen({super.key});

  @override
  State<SpecificServiceScreen> createState() => _SpecificServiceScreenState();
}

class _SpecificServiceScreenState extends State<SpecificServiceScreen> {
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
          'Service Details',
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
                child: Image.asset('assets/images/service.png'),
              ),
              SizedBox(
                height: 10.w,
              ),
              Row(
                children: [
                  TextStyleHelper().mytext('Training', 20.sp, FontWeight.w700,
                      MyCustomColors().kBlackColor),
                  Spacer(),
                  TextStyleHelper().mytext('2 months', 14.sp, FontWeight.w700,
                      MyCustomColors().kBlackColor2),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),

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

              TextStyleHelper().mytext(
                  'Non dolorum perferendis quo eaque vero est ipsum doloremque. Nisi quis ut sed eum ut. Dignissimos ducimus sunt. Vitae rerum dolores suscipit at qui. Rerum error aut et cum eligendi tempora consequatur molestias.',
                  14.sp,
                  FontWeight.w400,
                  MyCustomColors().kBlackColor2),

              SizedBox(
                height: 40.h,
              ),
              RoundButton(
                  text: 'Purchase Now',
                  textColor: MyCustomColors().kWhiteColor,
                  backgroundColor: MyCustomColors().kPrimaryColor,
                  borderColor: MyCustomColors().kPrimaryColor,
                  height: 57.h,
                  width: 340.w,
                  radius: 10.r,
                  onClick: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => const TemporaryScreen(),
                    //       // CustomBottomNavigationBar(),
                    //     ));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
