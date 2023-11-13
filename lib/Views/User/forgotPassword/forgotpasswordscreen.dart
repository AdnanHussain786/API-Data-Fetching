import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/Views/User/forgotPassword/otpverifyscreen.dart';
import 'package:quizapp/constants/colors.dart';
import 'package:quizapp/constants/mycustombutton.dart';
import 'package:quizapp/constants/textstylehelper1.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: TextStyleHelper().mytext('Forgot Password', 18.sp,
            FontWeight.w500, MyCustomColors().kBlackColor),
        centerTitle: true,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.arrow_back_ios),
        ),
        iconTheme: IconThemeData(color: MyCustomColors().kBlackColor),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Dotted Progress Indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 13.w,
                  height: 13.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: MyCustomColors().kPrimaryColor1,
                  ),
                ),
                SizedBox(width: 10.w),
                Container(
                  width: 13.w,
                  height: 13.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: MyCustomColors().kBlackColor5,
                  ),
                ),
                SizedBox(width: 10.w),
                Container(
                  width: 13.w,
                  height: 13.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: MyCustomColors().kBlackColor5,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            TextStyleHelper().mytext('Enter email address', 22.sp,
                FontWeight.w500, MyCustomColors().kBlackColor),
            SizedBox(
              height: 10.h,
            ),
            TextStyleHelper().mytext('Enter the email address associated with',
                12.sp, FontWeight.w400, MyCustomColors().kBlackColor2),
            SizedBox(
              height: 5.h,
            ),
            TextStyleHelper().mytext('your account', 12.sp, FontWeight.w400,
                MyCustomColors().kBlackColor2),
            SizedBox(
              height: 25.h,
            ),
            TextStyleHelper().mytext(
              'Email',
              13.sp,
              FontWeight.w500,
              MyCustomColors().kBlackColor,
            ),
            TextStyleHelper().mInputFields(
              emailController,
              false,
              TextInputType.emailAddress,
              'Enter your Email Address',
              'Enter your Email Address',
              MyCustomColors().kBlackColor1,
              'Email',
              335,
              50,
              0,
              0,
              10,
            ),
            SizedBox(
              height: 10.h,
            ),
            TextStyleHelper().mytext(
                'We will send a verification code on your email Address \nto confirm its you.',
                12.sp,
                FontWeight.w400,
                MyCustomColors().kSecondaryColor),
            SizedBox(
              height: 80.h,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: RoundButton(
                text: 'Send',
                textColor: MyCustomColors().kWhiteColor,
                backgroundColor: MyCustomColors().kPrimaryColor,
                borderColor: MyCustomColors().kPrimaryColor,
                height: 57.h,
                width: 340.w,
                radius: 10,
                onClick: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OTPVerifyScreen(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
