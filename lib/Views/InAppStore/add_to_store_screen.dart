import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/constants/colors.dart';
import 'package:quizapp/constants/constants.dart';
import 'package:quizapp/constants/textstylehelper1.dart';
import 'package:quizapp/widgets/dropdown.dart';

class AddToStoreScreen extends StatefulWidget {
  const AddToStoreScreen({super.key});

  @override
  State<AddToStoreScreen> createState() => _AddToStoreScreenState();
}

class _AddToStoreScreenState extends State<AddToStoreScreen> {
  String selectedType = '';

  List<String> types = [
    'Service',
    'Book',
    'Course',
    'Article',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: TextStyleHelper().mytext(
          'Upload to store',
          18.sp,
          FontWeight.w500,
          MyCustomColors().kBlackColor,
        ),
        leading: Icon(
          Icons.arrow_back_ios,
          size: 20.sp,
          color: MyCustomColors().kBlackColor,
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: MyCustomColors().kBlackColor),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SizedBox(height: 10.h),
              Row(children: [
                Text(
                  'Type',
                  style: GoogleFonts.dmSans(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff0D0D0D),
                  ),
                ),
              ]),
              SizedBox(
                height: 10.h,
              ),
              MyDropDown(
                dropdownItems: types,
                hint: 'Select Type',
                onChanged: (p0) {
                  setState(() {
                    selectedType = p0;
                    print(selectedType);
                  });
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(children: [
                Text(
                  'Title',
                  style: GoogleFonts.dmSans(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff0D0D0D),
                  ),
                ),
              ]),
              SizedBox(
                height: 10.h,
              ),
              ProfileTextField(
                  controller: TextEditingController(), hintText: 'Enter Title'),
              Visibility(
                  visible: selectedType == 'Service',
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(children: [
                        Text(
                          'Month Details',
                          style: GoogleFonts.dmSans(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff0D0D0D),
                          ),
                        ),
                      ]),
                      SizedBox(
                        height: 10.h,
                      ),
                      ProfileTextField(
                          controller: TextEditingController(),
                          hintText: 'Enter Month Details'),
                    ],
                  )),
              Visibility(
                  visible: selectedType == 'Book',
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(children: [
                        Text(
                          'Link',
                          style: GoogleFonts.dmSans(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff0D0D0D),
                          ),
                        ),
                      ]),
                      SizedBox(
                        height: 10.h,
                      ),
                      ProfileTextField(
                          controller: TextEditingController(),
                          hintText: 'Paste link of page'),
                    ],
                  )),
              Visibility(
                  visible: selectedType == 'Course',
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(children: [
                        Text(
                          'Material',
                          style: GoogleFonts.dmSans(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff0D0D0D),
                          ),
                        ),
                      ]),
                      SizedBox(
                        height: 10.h,
                      ),
                      ProfileTextField(
                          controller: TextEditingController(),
                          hintText: '10 videos, 5 notes'),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(children: [
                        Text(
                          'Link',
                          style: GoogleFonts.dmSans(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff0D0D0D),
                          ),
                        ),
                      ]),
                      SizedBox(
                        height: 10.h,
                      ),
                      ProfileTextField(
                          controller: TextEditingController(),
                          hintText: 'Paste link of page'),
                    ],
                  )),
              Visibility(
                  visible: selectedType == 'Article',
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(children: [
                        Text(
                          'Material',
                          style: GoogleFonts.dmSans(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff0D0D0D),
                          ),
                        ),
                      ]),
                      SizedBox(
                        height: 10.h,
                      ),
                      ProfileTextField(
                          controller: TextEditingController(),
                          hintText: '10 videos, 5 notes'),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(children: [
                        Text(
                          'Link',
                          style: GoogleFonts.dmSans(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff0D0D0D),
                          ),
                        ),
                      ]),
                      SizedBox(
                        height: 10.h,
                      ),
                      ProfileTextField(
                          controller: TextEditingController(),
                          hintText: 'Paste link of page'),
                    ],
                  )),
              SizedBox(
                height: 20.h,
              ),
              Row(children: [
                Text(
                  'Upload Picture',
                  style: GoogleFonts.dmSans(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff0D0D0D),
                  ),
                ),
              ]),
              Container(
                height: 200.h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/dotted_box.png'),
                  ),
                ),
                child: Center(
                  child: Image.asset(
                    'assets/images/picture.png',
                    height: 50.h,
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              kBigButton(
                  text: 'Save',
                  onPressed: () {
                    Get.back();
                  }),
              SizedBox(
                height: 30.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
