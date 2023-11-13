import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/Views/Admin/Quiz/add_quiz_screen.dart';
import 'package:quizapp/Views/Admin/UploadCsvFiles/uploadfile.dart';
import 'package:quizapp/constants/colors.dart';
import 'package:quizapp/constants/constants.dart';
import 'package:quizapp/constants/textstylehelper1.dart';

class CSVFilesScreen extends StatefulWidget {
  const CSVFilesScreen({super.key});

  @override
  State<CSVFilesScreen> createState() => _CSVFilesScreenState();
}

class _CSVFilesScreenState extends State<CSVFilesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: TextStyleHelper().mytext(
          'CSV',
          20.sp,
          FontWeight.w500,
          MyCustomColors().kBlackColor,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          children: [
            SizedBox(
              height: 5.h,
            ),
            CustomSearchField(
              controller: TextEditingController(),
              hintText: 'Ricerca',
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextStyleHelper().mytext(
                    'CSV',
                    20.sp,
                    FontWeight.w700,
                    MyCustomColors().kBlackColor,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UploadCSVFileScreen(),
                          ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: Color(0xff064DAE),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 10.h),
                        child: Row(
                          children: [
                            Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 20.sp,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              'Upload CSV',
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 12.sp,
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
            ),
            Row(
              children: [
                TextStyleHelper().mytext(
                  '6 CSVs',
                  16.sp,
                  FontWeight.w500,
                  MyCustomColors().kBlackColor2,
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Expanded(
              child: InkWell(
                child: ListView.builder(
                  itemCount: 6, // Replace with the number of users,
                  itemBuilder: (context, index) {
                    // Replace with your user data

                    return Padding(
                        padding: EdgeInsets.symmetric(vertical: 5.h),
                        child: Container(
                            width: 388.w,
                            height: 50.h,
                            decoration: BoxDecoration(
                              color: Color(0xff064DAE).withOpacity(0.1),
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  TextStyleHelper().mytext(
                                      'Computersciencequizfile.csv',
                                      12.sp,
                                      FontWeight.w500,
                                      MyCustomColors().kPrimaryColor),
                                  Spacer(),
                                  Container(
                                    width: 14.w,
                                    height: 14.h,
                                    child: Image.asset(
                                      'assets/images/Pen2.png',
                                      color: MyCustomColors().kBlackColor,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Container(
                                    width: 13.6.w,
                                    height: 15.11.h,
                                    child: Image.asset(
                                        'assets/images/Delete.png',
                                        color: Color(0xffDC3545)),
                                  ),
                                ],
                              ),
                            )));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
