import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/Views/User/mainScreens/setinfoscreen.dart';
import 'package:quizapp/constants/colors.dart';
import 'package:quizapp/constants/mycustombutton.dart';
import 'package:quizapp/constants/textstylehelper1.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

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
            child: const Icon(Icons.arrow_back_ios)),
        iconTheme: IconThemeData(color: MyCustomColors().kBlackColor),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                      color: MyCustomColors().kPrimaryColor1,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Container(
                    width: 13.w,
                    height: 13.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: MyCustomColors().kPrimaryColor1,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              TextStyleHelper().mytext('Reset Password', 22.sp, FontWeight.w700,
                  MyCustomColors().kBlackColor),
              SizedBox(
                height: 10.h,
              ),
              TextStyleHelper().mytext('Set your new password', 12.sp,
                  FontWeight.w400, MyCustomColors().kBlackColor2),
              SizedBox(
                height: 30.h,
              ),
              TextStyleHelper().mytext(
                'New Password',
                13.sp,
                FontWeight.w500,
                MyCustomColors().kBlackColor,
              ),
              TextStyleHelper().mInputFields(
                passwordController,
                true,
                TextInputType.emailAddress,
                'New Password',
                'New Password',
                MyCustomColors().kBlackColor1,
                'New Password',
                335,
                50,
                0,
                0,
                10,
              ),
              SizedBox(height: 20.h),
              TextStyleHelper().mytext(
                'Confirm Password',
                13.sp,
                FontWeight.w500,
                MyCustomColors().kBlackColor,
              ),
              TextStyleHelper().mInputFields(
                confirmPasswordController,
                true,
                TextInputType.emailAddress,
                'Confirm Password',
                'Confirm Password',
                MyCustomColors().kBlackColor1,
                'Confirm Password',
                335,
                50,
                0,
                0,
                10,
              ),
              SizedBox(
                height: 130.h,
              ),
              RoundButton(
                  text: 'Reset',
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
                          builder: (context) => const SetInformationScreen(),
                        ));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
