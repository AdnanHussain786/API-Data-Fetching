import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/constants/colors.dart';
import 'package:quizapp/constants/mycustombutton.dart';
import 'package:quizapp/constants/textstylehelper1.dart';

class UploadCSVFileScreen extends StatefulWidget {
  const UploadCSVFileScreen({super.key});

  @override
  State<UploadCSVFileScreen> createState() => _UploadCSVFileScreenState();
}

class _UploadCSVFileScreenState extends State<UploadCSVFileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: TextStyleHelper().mytext('Upload CSV File', 18.sp,
            FontWeight.w500, MyCustomColors().kBlackColor),
        centerTitle: true,
        leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: const Icon(Icons.arrow_back_ios)),
        iconTheme: IconThemeData(color: MyCustomColors().kBlackColor),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('#1',
                style: GoogleFonts.lexend(
                  fontSize: 28.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                )),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextStyleHelper().mytext('Upload CSV File', 13.sp,
                      FontWeight.w500, MyCustomColors().kBlackColor),
                  SizedBox(
                    height: 10.h,
                  ),
                  InkWell(
                    onTap: () {
                      // Handle the tap event here
                    },
                    child: DottedBorder(
                      dashPattern: const [10, 10],
                      color: MyCustomColors()
                          .kBlackColor
                          .withOpacity(0.5), // Border color
                      strokeWidth: 1, // Border width
                      radius: const Radius.circular(10).r, // Border radius
                      borderType: BorderType.RRect, // Rounded rectangle border
                      child: SizedBox(
                        height: 50.h,
                        width: 388.w,
                        child: Center(
                            child: TextStyleHelper().mytext(
                                'Upload',
                                12.sp,
                                FontWeight.w500,
                                MyCustomColors().kBlackColor1)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  TextStyleHelper().mytext('Category', 13.sp, FontWeight.w500,
                      MyCustomColors().kBlackColor),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    width: 388.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(
                        color: MyCustomColors().kBlackColor.withOpacity(0.1),
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: TextStyleHelper().mytext(
                              'Serive',
                              12.sp,
                              FontWeight.w500,
                              MyCustomColors().kBlackColor1,
                            ),
                          ),
                          Spacer(),
                          DropdownButton<String>(
                            icon:
                                SvgPicture.asset('assets/icons/arrow_down.svg'),
                            iconSize: 24,
                            elevation: 16,
                            style: TextStyle(
                              color: MyCustomColors().kBlackColor1,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            underline: Container(
                              height: 0,
                            ),
                            onChanged: (String? newValue) {
                              // Handle dropdown item selection here
                            },
                            items: <String>['Software', 'Hardware']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: TextStyleHelper().mytext(
                                    value,
                                    12.sp,
                                    FontWeight.w500,
                                    MyCustomColors().kBlackColor1),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 30.h,
                        width: 20.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: MyCustomColors().kPrimaryColor,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            size: 18.sp, // Adjust the size as needed
                            color: MyCustomColors()
                                .kWhiteColor, // Change the icon color to white
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      TextStyleHelper().mytext(
                        'Upload another ',
                        12.sp,
                        FontWeight.w500,
                        Color(0xff000000),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 320.h),
                    child: RoundButton(
                        text: 'Finish',
                        textColor: MyCustomColors().kWhiteColor,
                        backgroundColor: MyCustomColors().kPrimaryColor,
                        borderColor: MyCustomColors().kPrimaryColor,
                        height: 57.h,
                        width: 340.w,
                        radius: 10.r,
                        onClick: () {
                          //   Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //         builder: (context) =>
                          //             const CustomBottomNavigationBar(),
                          //       ));
                          // }),
                        }),
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
