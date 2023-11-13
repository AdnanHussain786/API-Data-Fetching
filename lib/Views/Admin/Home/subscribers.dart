import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/constants/colors.dart';
import 'package:quizapp/constants/constants.dart';
import 'package:quizapp/constants/textstylehelper1.dart';

class SubscribersScreen extends StatefulWidget {
  const SubscribersScreen({super.key});

  @override
  State<SubscribersScreen> createState() => _SubscribersScreenState();
}

class _SubscribersScreenState extends State<SubscribersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: TextStyleHelper().mytext(
          'Users',
          18.sp,
          FontWeight.w500,
          MyCustomColors().kBlackColor,
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.arrow_back_ios),
        ),
        iconTheme: IconThemeData(color: MyCustomColors().kBlackColor),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            CustomSearchField(
              controller: TextEditingController(),
              hintText: 'Ricerca',
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: InkWell(
                  child: ListView.builder(
                    itemCount: 20, // Replace with the number of users,
                    itemBuilder: (context, index) {
                      // Replace with your user data

                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 5.h),
                        child: Container(
                            width: 388.w,
                            height: 181.h,
                            decoration: BoxDecoration(
                              color: MyCustomColors().kWhiteColor,
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color(0xff000000).withOpacity(0.12),
                                  offset: Offset(0, 3.h),
                                  blurRadius: 10.r,
                                  spreadRadius: 0,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: Column(
                              children: [
                                ListTile(
                                  leading: CircleAvatar(
                                    backgroundColor:
                                        MyCustomColors().kWhiteColor,
                                    // Replace with your avatar image
                                    backgroundImage:
                                        AssetImage('assets/images/Avatar.png'),
                                  ),
                                  title: TextStyleHelper().mytext(
                                      'Cathy Bode',
                                      14,
                                      FontWeight.w700,
                                      MyCustomColors().kBlackColor),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                              width: 8.w,
                                              height: 8.w,
                                              decoration: BoxDecoration(
                                                color: MyCustomColors()
                                                    .kPrimaryColor1,
                                                shape: BoxShape.circle,
                                              )),
                                          SizedBox(
                                            width: 8.w,
                                          ),
                                          TextStyleHelper().mytext(
                                              'Registration Date:',
                                              14.sp,
                                              FontWeight.w500,
                                              MyCustomColors().kBlackColor3),
                                          SizedBox(
                                            width: 8.w,
                                          ),
                                          TextStyleHelper().mytext(
                                              '02 Jan 2023',
                                              14.sp,
                                              FontWeight.w400,
                                              MyCustomColors().kBlackColor),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                              width: 8.w,
                                              height: 8.w,
                                              decoration: BoxDecoration(
                                                color: MyCustomColors()
                                                    .kPrimaryColor1,
                                                shape: BoxShape.circle,
                                              )),
                                          SizedBox(
                                            width: 8.w,
                                          ),
                                          TextStyleHelper().mytext(
                                              'Expiry Date:',
                                              14.sp,
                                              FontWeight.w500,
                                              MyCustomColors().kBlackColor3),
                                          SizedBox(
                                            width: 8.w,
                                          ),
                                          TextStyleHelper().mytext(
                                              '02 Jan 2023',
                                              14.sp,
                                              FontWeight.w400,
                                              MyCustomColors().kBlackColor),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20.h,
                                      ),
                                      Row(
                                        children: [
                                          TextStyleHelper().mytext(
                                              'Days',
                                              14.sp,
                                              FontWeight.w500,
                                              MyCustomColors().kBlackColor),
                                          Spacer(),
                                          TextStyleHelper().mytext(
                                              '4 days remaining',
                                              12.sp,
                                              FontWeight.w500,
                                              MyCustomColors().kBlackColor3),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      SizedBox(
                                        width: 348.w,
                                        height: 8.h,
                                        child: LinearProgressIndicator(
                                          backgroundColor: MyCustomColors()
                                              .kPrimaryColor
                                              .withOpacity(0.12),
                                          value:
                                              0.7, // Set to 1.0 for full progress without animation
                                          valueColor: AlwaysStoppedAnimation<
                                                  Color>(
                                              MyCustomColors().kPrimaryColor),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
