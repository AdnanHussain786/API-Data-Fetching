import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/Views/auth/loginscreen.dart';
import 'package:quizapp/constants/colors.dart';
import 'package:quizapp/constants/mycustombutton.dart';
import 'package:quizapp/constants/textstylehelper1.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final fullNamecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final confirmpasswordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 386.w,
              height: 200.h,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/Group.png'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 30.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextStyleHelper().mytext(
                    'Register an Account',
                    22.sp,
                    FontWeight.w600,
                    MyCustomColors().kBlackColor,
                  ),
                  SizedBox(height: 10.h),
                  TextStyleHelper().mytext(
                    'Full Name',
                    13.sp,
                    FontWeight.w500,
                    MyCustomColors().kBlackColor,
                  ),
                  TextStyleHelper().mInputFields(
                    fullNamecontroller,
                    false,
                    TextInputType.text,
                    'Enter your Name',
                    'Enter your Name',
                    MyCustomColors().kBlackColor1,
                    'Enter your Name',
                    335,
                    50,
                    0,
                    0,
                    10,
                  ),
                  SizedBox(height: 20.h),
                  TextStyleHelper().mytext(
                    'Email',
                    13.sp,
                    FontWeight.w500,
                    MyCustomColors().kBlackColor,
                  ),
                  TextStyleHelper().mInputFields(
                    emailcontroller,
                    false,
                    TextInputType.emailAddress,
                    'Enter your Email Address',
                    'Enter your Email Address',
                    MyCustomColors().kBlackColor1,
                    'Enter Your Email Address',
                    335,
                    50,
                    0,
                    0,
                    10,
                  ),
                  SizedBox(height: 20.h),
                  TextStyleHelper().mytext(
                    'Password',
                    13.sp,
                    FontWeight.w500,
                    MyCustomColors().kBlackColor,
                  ),
                  TextStyleHelper().mInputFields(
                    passwordcontroller,
                    true,
                    TextInputType.text,
                    'At least 8 characters',
                    'At least 8 characters',
                    MyCustomColors().kBlackColor1,
                    'At least 8 characters',
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
                    confirmpasswordcontroller,
                    true,
                    TextInputType.text,
                    'Must match password',
                    'Must match password',
                    MyCustomColors().kBlackColor1,
                    'Must match password',
                    335,
                    50,
                    0,
                    0,
                    10,
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  RoundButton(
                      text: 'Create Account',
                      textColor: MyCustomColors().kWhiteColor,
                      backgroundColor: MyCustomColors().kPrimaryColor,
                      borderColor: MyCustomColors().kPrimaryColor,
                      height: 57.h,
                      width: 335.w,
                      radius: 10.r,
                      onClick: () {}),
                  SizedBox(
                    height: 40.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextStyleHelper().mytext(
                          "Already have an account?",
                          16.sp,
                          FontWeight.w400,
                          MyCustomColors().kBlackColor2),
                      SizedBox(
                        width: 3.w,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              ));
                        },
                        child: TextStyleHelper().mytext('Login', 16.sp,
                            FontWeight.w500, MyCustomColors().kPrimaryColor),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
