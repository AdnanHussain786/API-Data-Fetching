import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/Views/User/profile/done_screen.dart';
import 'package:quizapp/constants/constants.dart';

class BankDetailsScreen extends StatefulWidget {
  const BankDetailsScreen({super.key});

  @override
  State<BankDetailsScreen> createState() => _BankDetailsScreenState();
}

class _BankDetailsScreenState extends State<BankDetailsScreen> {
  List banks = [
    'assets/images/mastercard.png',
    'assets/images/visa.png',
    'assets/images/amex.png',
    'assets/images/paypal.png',
  ];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.chevron_left,
                    color: Color(0xff0A1828),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Text(
                  'Bank Details',
                  style: GoogleFonts.dmSans(
                      color: const Color(0xff0A1828),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 50.w,
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                'Choose Debit Card',
                style: GoogleFonts.dmSans(
                    color: const Color(0xff0D0D0D),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: 45.h,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = index;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.w, vertical: 10.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(
                          color: selected == index
                              ? const Color(0xff05ADEE)
                              : const Color(0xffC5C5C5),
                        ),
                      ),
                      child: Image.asset(
                        banks[index],
                        height: 40.h,
                        width: 40.w,
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 20.w,
                  );
                },
                itemCount: banks.length,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(children: [
                Text(
                  'Card Number',
                  style: GoogleFonts.dmSans(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff0D0D0D),
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: ProfileTextField(
                controller: TextEditingController(),
                hintText: 'Card Number',
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(children: [
                Text(
                  'Full Name',
                  style: GoogleFonts.dmSans(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff0D0D0D),
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: ProfileTextField(
                controller: TextEditingController(),
                hintText: 'Name',
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Expiry',
                      style: GoogleFonts.dmSans(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff0D0D0D),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Expanded(
                    child: Text(
                      'CVV',
                      style: GoogleFonts.dmSans(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff0D0D0D),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  Expanded(
                    child: ProfileTextField(
                        controller: TextEditingController(), hintText: '01/25'),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Expanded(
                    child: ProfileTextField(
                        controller: TextEditingController(), hintText: '335'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: kBigButton(
                text: 'Continue',
                onPressed: () {
                  Get.to(() => DoneScreen());
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
