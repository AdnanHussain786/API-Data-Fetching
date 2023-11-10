import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/Views/screens/Analytics/stats.dart';
import 'package:quizapp/Views/screens/auth/registerscreen.dart';
import 'package:quizapp/Views/screens/forgotPassword/forgotpasswordscreen.dart';
import 'package:quizapp/constants/colors.dart';
import 'package:quizapp/constants/mycustombutton.dart';
import 'package:quizapp/constants/textstylehelper1.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
            // padding: const EdgeInsets.only(left: 15, right: 15, top: 30).r,
            Padding(
              padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 30.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextStyleHelper().mytext(
                    'Login to your Account',
                    22.sp,
                    FontWeight.w600,
                    MyCustomColors().kBlackColor,
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
                    TextInputType.emailAddress,
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
                  SizedBox(height: 5.h),
                  Row(
                    children: [
                      Checkbox(
                        value: rememberMe,
                        onChanged: (bool? value) {
                          setState(() {
                            rememberMe = value ?? false;
                          });
                        },
                      ),
                      const Text('Remember me'),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          // Handle "Forgot Password" action
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ForgotPasswordScreen(),
                              ));
                        },
                        child: Container(
                            padding: EdgeInsets.all(8.r),
                            child: TextStyleHelper().mytext(
                                'Forgot Password?',
                                13.sp,
                                FontWeight.w500,
                                MyCustomColors().kBlackColor2)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  RoundButton(
                      text: 'Login',
                      textColor: MyCustomColors().kWhiteColor,
                      backgroundColor: MyCustomColors().kPrimaryColor,
                      borderColor: MyCustomColors().kPrimaryColor,
                      height: 57.h,
                      width: 340.w,
                      radius: 10.r,
                      onClick: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const StatsScreen(),
                            ));
                      }),
                  SizedBox(
                    height: 40.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 108.w, // Adjust the width as needed
                        height: 0.5, // Adjust the height as needed
                        color: MyCustomColors()
                            .kBlackColor6, // Color of the line on the left
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 10.w), // Adjust the margin as needed
                        child: TextStyleHelper().mytext(
                            'or sign in with',
                            12.sp,
                            FontWeight.w500,
                            MyCustomColors().kBlackColor3),
                      ),
                      Container(
                        height: 0.5, // Adjust the height as needed
                        width: 108.w, // Adjust the width as needed
                        color: MyCustomColors()
                            .kBlackColor6, // Color of the line on the right
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 160.w,
                          height: 55.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            border: Border.all(
                              color: MyCustomColors()
                                  .kBlackColor3, // Solid line color
                              width: 1.0.w, // Border width
                            ),
                          ),
                          child: Center(
                            child: SizedBox(
                              width: 26.46
                                  .w, // Set width using w for screen adaptation
                              height: 27
                                  .h, // Set height using h for screen adaptation
                              child: Image.asset('assets/images/google.png'),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 160.w,
                          height: 55.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            border: Border.all(
                              color: MyCustomColors()
                                  .kBlackColor3, // Solid line color
                              width: 1.0.w, // Border width
                            ),
                          ),
                          child: Center(
                            child: SizedBox(
                              width: 26.46
                                  .w, // Set width using w for screen adaptation
                              height: 27
                                  .h, // Set height using h for screen adaptation
                              child: Image.asset('assets/images/apple.png'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextStyleHelper().mytext("Don't have an account?", 16.sp,
                          FontWeight.w400, MyCustomColors().kBlackColor2),
                      SizedBox(
                        width: 3.w,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const RegisterScreen(),
                              ));
                        },
                        child: TextStyleHelper().mytext('Register', 16.sp,
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
