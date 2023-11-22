import 'dart:math';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/constants/colors.dart';
import 'package:quizapp/constants/constants.dart';
import 'package:quizapp/constants/textstylehelper1.dart';
import 'package:quizapp/widgets/dropdown.dart';

class UpdateQuizScreen extends StatefulWidget {
  const UpdateQuizScreen({super.key});

  @override
  State<UpdateQuizScreen> createState() => _UpdateQuizScreenState();
}

class _UpdateQuizScreenState extends State<UpdateQuizScreen> {
  int selectedColor = 0;

  List<String> categories = [
    'Software',
    'Hardware',
    'Computer Science',
    'Computer Engineering',
    'Electronics',
    'Electrical'
  ];
  List<Map<String, dynamic>> addedCategories = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: TextStyleHelper().mytext(
          'Make a Quiz',
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
              SizedBox(height: 10.h),
              Row(children: [
                Text(
                  'Choose a color',
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
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedColor = 0;
                      });
                    },
                    child: Container(
                      width: 30.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffFFA800),
                        border: selectedColor == 0
                            ? Border.all(color: Color(0xff064DAE), width: 2)
                            : null,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedColor = 1;
                      });
                    },
                    child: Container(
                      width: 30.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffAB0BC5),
                        border: selectedColor == 1
                            ? Border.all(color: Color(0xff064DAE), width: 2)
                            : null,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedColor = 2;
                      });
                    },
                    child: Container(
                      width: 30.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff29BFFF),
                        border: selectedColor == 2
                            ? Border.all(color: Color(0xff064DAE), width: 2)
                            : null,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedColor = 3;
                      });
                    },
                    child: Container(
                      width: 30.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffEA5455),
                        border: selectedColor == 3
                            ? Border.all(color: Color(0xff064DAE), width: 2)
                            : null,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedColor = 4;
                      });
                    },
                    child: Container(
                      width: 30.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff082A6F),
                        border: selectedColor == 4
                            ? Border.all(color: Color(0xff064DAE), width: 2)
                            : null,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedColor = 5;
                      });
                    },
                    child: Container(
                      width: 30.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff01A81C),
                        border: selectedColor == 5
                            ? Border.all(color: Color(0xff064DAE), width: 2)
                            : null,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedColor = Random().nextInt(5);
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: Color(0xffF0F0F0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.w, vertical: 12.h),
                        child: Row(
                          children: [
                            Text(
                              'Random',
                              style: GoogleFonts.inter(
                                color: Colors.black,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(children: [
                Text(
                  'Quiz Title',
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
                  hintText: 'Microprocessor in computer Science'),
              SizedBox(
                height: 20.h,
              ),
              Row(children: [
                Text(
                  'Description',
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
              CustomMessageField(
                  controller: TextEditingController(),
                  hintText: 'This Quiz is'),
              SizedBox(
                height: 20.h,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  'Total Number of questions',
                  style: GoogleFonts.dmSans(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff0D0D0D),
                  ),
                ),
                SvgPicture.asset(
                  'assets/icons/arrow_up.svg',
                  height: 10.h,
                  width: 10.w,
                ),
              ]),
              SizedBox(
                height: 10.h,
              ),
              ProfileTextField(
                  controller: TextEditingController(), hintText: '15'),
              SizedBox(
                height: 20.h,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  'Category',
                  style: GoogleFonts.dmSans(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff0D0D0D),
                  ),
                ),
                SvgPicture.asset(
                  'assets/icons/arrow_up.svg',
                  height: 10.h,
                  width: 10.w,
                ),
              ]),
              SizedBox(
                height: 20.h,
              ),
              for (int i = 0; i < addedCategories.length; i++)
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Category',
                                    style: GoogleFonts.dmSans(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff0D0D0D),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        addedCategories.removeAt(i);
                                      });
                                    },
                                    child: Container(
                                      width: 17.5.w,
                                      height: 17.h,
                                      decoration: BoxDecoration(
                                        color: Color(0xffFFFFFF),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xA7AEB5)
                                                .withOpacity(0.4),
                                            offset: Offset(0, 1.5),
                                            blurRadius: 3.9999,
                                          ),
                                        ],
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.close,
                                          size: 10,
                                          // Add any additional styling for the Icon as needed
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              MyDropDown(
                                dropdownItems: categories,
                                hint: 'Select Category',
                                onChanged: (value) {
                                  setState(() {
                                    addedCategories[i]['selectedCategory'] =
                                        value;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Questions',
                                style: GoogleFonts.dmSans(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff0D0D0D),
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              SingleTextField(
                                controller: TextEditingController(),
                                hintText: '4',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                ),
              SizedBox(
                height: 20.h,
              ),
              addedCategories.length == 0
                  ? InkWell(
                      onTap: () {
                        setState(() {
                          addedCategories.add({
                            'selectedCategory': categories[0],
                            'questions': '',
                          });
                        });
                      },
                      child: DottedBorder(
                        dashPattern: const [10, 10],
                        color: MyCustomColors().kPrimaryColor.withOpacity(0.5),
                        strokeWidth: 1,
                        radius: const Radius.circular(10).r,
                        borderType: BorderType.RRect,
                        child: SizedBox(
                          height: 57.h,
                          width: 388.w,
                          child: Center(
                            child: TextStyleHelper().mytext(
                              'Add Category',
                              16.sp,
                              FontWeight.w700,
                              MyCustomColors().kPrimaryColor3,
                            ),
                          ),
                        ),
                      ),
                    )
                  : InkWell(
                      onTap: () {
                        setState(() {
                          addedCategories.add({
                            'selectedCategory': categories[0],
                            'questions': '',
                          });
                        });
                      },
                      child: DottedBorder(
                        dashPattern: const [10, 10],
                        color: MyCustomColors().kPrimaryColor.withOpacity(0.5),
                        strokeWidth: 1,
                        radius: const Radius.circular(10).r,
                        borderType: BorderType.RRect,
                        child: SizedBox(
                          height: 57.h,
                          width: 388.w,
                          child: Center(
                            child: TextStyleHelper().mytext(
                              'Add Another Category',
                              16.sp,
                              FontWeight.w700,
                              MyCustomColors().kPrimaryColor3,
                            ),
                          ),
                        ),
                      ),
                    ),
              Divider(
                color: Colors.black.withOpacity(0.1),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(children: [
                Text(
                  'Weightage',
                  style: GoogleFonts.dmSans(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff0D0D0D),
                  ),
                ),
              ]),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Correct',
                          style: GoogleFonts.dmSans(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff0D0D0D),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        SizedBox(
                          height: 60.h,
                          width: 90.w,
                          child: SingleTextField(
                              controller: TextEditingController(),
                              hintText: '1'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30.w,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Incorrect',
                          style: GoogleFonts.dmSans(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff0D0D0D),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        SizedBox(
                          height: 60.h,
                          width: 90.w,
                          child: SingleTextField(
                              controller: TextEditingController(),
                              hintText: '-1'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30.w,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Unanswered',
                          style: GoogleFonts.dmSans(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff0D0D0D),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        SizedBox(
                          height: 60.h,
                          width: 90.w,
                          child: SingleTextField(
                              controller: TextEditingController(),
                              hintText: '0'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              kBigButton(
                  text: 'Update',
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
