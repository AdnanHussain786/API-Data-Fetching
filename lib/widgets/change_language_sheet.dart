import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangeLanguageSheet extends StatefulWidget {
  final Function onPressed;
  const ChangeLanguageSheet({super.key, required this.onPressed});

  @override
  State<ChangeLanguageSheet> createState() => _ChangeLanguageSheet();
}

class _ChangeLanguageSheet extends State<ChangeLanguageSheet> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffFAFAFA),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          )),
      // width: 200.w,
      child: SingleChildScrollView(
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.w, top: 20.h, right: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Language",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp,
                          color: const Color(0xFF000000),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = 0;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 15.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: selected == 0
                            ? Color(0xff064DAE).withOpacity(0.12)
                            : Colors.white,
                        border: Border.all(
                          color: selected == 0
                              ? Color(0xff064DAE)
                              : Colors.black.withOpacity(0.1),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'English',
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 14.sp,
                              color: selected == 0
                                  ? Color(0xff064DAE)
                                  : const Color(0xFF0A1828),
                            ),
                          ),
                          selected == 0
                              ? Icon(
                                  Icons.check,
                                  color: Color(0xff064DAE),
                                  size: 20.sp,
                                )
                              : Container()
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = 1;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 15.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: selected == 1
                            ? Color(0xff064DAE).withOpacity(0.12)
                            : Colors.white,
                        border: Border.all(
                          color: selected == 1
                              ? Color(0xff064DAE)
                              : Colors.black.withOpacity(0.1),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Italian',
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 14.sp,
                              color: selected == 1
                                  ? Color(0xff064DAE)
                                  : const Color(0xFF0A1828),
                            ),
                          ),
                          selected == 1
                              ? Icon(
                                  Icons.check,
                                  color: Color(0xff064DAE),
                                  size: 20.sp,
                                )
                              : Container()
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
