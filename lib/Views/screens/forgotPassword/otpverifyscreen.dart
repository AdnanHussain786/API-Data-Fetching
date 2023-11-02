import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/Views/screens/forgotPassword/resetpasswordscreen.dart';
import 'package:quizapp/constants/colors.dart';
import 'package:quizapp/constants/mycustombutton.dart';
import 'package:quizapp/constants/textstylehelper.dart';

class OTPVerifyScreen extends StatefulWidget {
  const OTPVerifyScreen({super.key});

  @override
  State<OTPVerifyScreen> createState() => _OTPVerifyScreenState();
}

class _OTPVerifyScreenState extends State<OTPVerifyScreen> {
  final emailController = TextEditingController();
  final List<TextEditingController> otpControllers = List.generate(
      4, (index) => TextEditingController()); // Create 4 controllers

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
                    color: MyCustomColors().kBlackColor5,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            TextStyleHelper().mytext('Enter 4 digit Code', 22.sp,
                FontWeight.w500, MyCustomColors().kBlackColor),
            SizedBox(
              height: 10.h,
            ),
            TextStyleHelper().mytext(
                'Enter the 4 digit code sent to your email address',
                12.sp,
                FontWeight.w400,
                MyCustomColors().kBlackColor2),
            SizedBox(
              height: 5.h,
            ),
            Row(
              children: [
                TextStyleHelper().mytext('iamzaibi004@gmail.com', 12.sp,
                    FontWeight.w400, MyCustomColors().kBlackColor),
                SizedBox(
                  width: 5.w,
                ),
                Image.asset(
                  'assets/images/Pen.png',
                  color: MyCustomColors().kSecondaryColor,
                ),
              ],
            ),
            SizedBox(
              height: 25.h,
            ),
            Row(
              children: List.generate(4, (index) {
                return Container(
                  width: 74.25.w,
                  height: 55.h,
                  margin: EdgeInsets.only(right: 10.w),
                  child: TextField(
                    style: TextStyle(fontSize: 24.sp),
                    controller: otpControllers[index],
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      fillColor: MyCustomColors().kGreyColor,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onChanged: (text) {
                      if (text.isNotEmpty && text.length > 1) {
                        otpControllers[index].text = text.substring(0, 1);
                      }
                      if (text.isNotEmpty && index < 3) {
                        FocusScope.of(context).nextFocus();
                      } else if (text.isEmpty && index > 0) {
                        FocusScope.of(context).previousFocus();
                      }
                    },
                  ),
                );
              }),
            ),
            SizedBox(
              height: 30.h,
            ),
            Center(
              child: Container(
                  width: 90.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    color: MyCustomColors().kGreyColor,
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: MyCustomColors().kBlackColor3, // Solid line color
                      width: 1.0.w, // Border width
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Image.asset('assets/images/timer.png'),
                        SizedBox(
                          width: 10.w,
                        ),
                        TextStyleHelper().mytext('00:21', 12, FontWeight.w500,
                            MyCustomColors().kBlackColor)
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextStyleHelper().mytext("Didn’t receive the OTP?", 16.sp,
                    FontWeight.w400, MyCustomColors().kBlackColor2),
                SizedBox(
                  width: 3.w,
                ),
                InkWell(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => RegisterScreen(),
                    //     ));
                  },
                  child: TextStyleHelper().mytext('Resend OTP', 16.sp,
                      FontWeight.w500, MyCustomColors().kPrimaryColor),
                )
              ],
            ),
            SizedBox(
              height: 80.h,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: RoundButton(
                  text: 'Continue',
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
                          builder: (context) => const ResetPasswordScreen(),
                        ));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
