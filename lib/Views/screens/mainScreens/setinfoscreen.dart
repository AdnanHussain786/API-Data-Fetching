import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/Views/screens/home/homescreen.dart';
import 'package:quizapp/constants/bottom_navigation_bar.dart';
import 'package:quizapp/constants/colors.dart';
import 'package:quizapp/constants/mycustombutton.dart';
import 'package:quizapp/constants/textstylehelper1.dart';

class SetInformationScreen extends StatefulWidget {
  const SetInformationScreen({super.key});

  @override
  State<SetInformationScreen> createState() => _SetInformationScreenState();
}

class _SetInformationScreenState extends State<SetInformationScreen> {
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: Align(
          alignment: Alignment.topRight,
          child: InkWell(
            onTap: () {},
            child: TextStyleHelper().mytext('Skip', 14.sp, FontWeight.w700,
                MyCustomColors().kSecondaryColor),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  TextStyleHelper().mytext('Fill your', 25.sp, FontWeight.w500,
                      MyCustomColors().kBlackColor1),
                  SizedBox(
                    width: 3.w,
                  ),
                  TextStyleHelper().mytext('information', 25.sp,
                      FontWeight.w700, MyCustomColors().kBlackColor),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              TextStyleHelper().mytext('below', 25.sp, FontWeight.w500,
                  MyCustomColors().kBlackColor),
              SizedBox(
                height: 10.h,
              ),
              TextStyleHelper().mytext(
                  'You can edit this later on your account setting.',
                  12.sp,
                  FontWeight.w400,
                  MyCustomColors().kBlackColor2),
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: InkWell(
                  onTap: () {},
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        radius: 50.w,
                        backgroundColor: MyCustomColors().kGreyColor,
                        backgroundImage:
                            const AssetImage('assets/images/dummyuser1.png'),
                      ),
                      // Add the additional container for further alignment here
                      Container(
                        width: 30.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: MyCustomColors().kSecondaryColor,
                        ),
                        child: Center(
                          child: SizedBox(
                              height: 12.h,
                              width: 12.w,
                              child: Image.asset('assets/images/Pen1.png')),
                        ),

                        // Additional container alignment properties
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              TextStyleHelper().mytext(
                'Full Name',
                13.sp,
                FontWeight.w500,
                MyCustomColors().kBlackColor,
              ),
              TextStyleHelper().mInputFields(
                fullNameController,
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
                emailController,
                false,
                TextInputType.emailAddress,
                'Enter your Email Address',
                'Enter your Email Address',
                MyCustomColors().kBlackColor1,
                'Enter your Email Address',
                335,
                50,
                0,
                0,
                10,
              ),
              SizedBox(height: 20.h),
              TextStyleHelper().mytext(
                'Phone Number',
                13.sp,
                FontWeight.w500,
                MyCustomColors().kBlackColor,
              ),
              TextStyleHelper().mInputFields(
                phoneNumberController,
                false,
                TextInputType.phone,
                'Enter your Phone Number',
                'Enter your Phone Number',
                MyCustomColors().kBlackColor1,
                '+93568 4515515',
                335,
                50,
                0,
                0,
                10,
              ),
              SizedBox(
                height: 80.h,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: RoundButton(
                    text: 'Next',
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
                            builder: (context) =>
                                const CustomBottomNavigationBar(),
                          ));
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
