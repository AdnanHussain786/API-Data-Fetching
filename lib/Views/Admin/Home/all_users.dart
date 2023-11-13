import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/constants/colors.dart';
import 'package:quizapp/constants/constants.dart';
import 'package:quizapp/constants/textstylehelper1.dart';

class AllUsersScreen extends StatefulWidget {
  const AllUsersScreen({super.key});

  @override
  State<AllUsersScreen> createState() => _AllUsersScreenState();
}

class _AllUsersScreenState extends State<AllUsersScreen> {
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
                  onTap: () => _showBottomSheetUsersActions(context),
                  child: ListView.builder(
                    itemCount: 20, // Replace with the number of users,
                    itemBuilder: (context, index) {
                      // Replace with your user data

                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 5.h),
                        child: Container(
                          width: 388.w,
                          height: 64.h,
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
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: MyCustomColors().kWhiteColor,
                              // Replace with your avatar image
                              backgroundImage:
                                  AssetImage('assets/images/Avatar.png'),
                            ),
                            title: TextStyleHelper().mytext('Cathy Bode', 14,
                                FontWeight.w700, MyCustomColors().kBlackColor),
                            trailing: Icon(
                              Icons.more_vert,
                              color: MyCustomColors().kBlackColor,
                            ), // Replace with your three dots icon
                          ),
                        ),
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

  void _showBottomSheetUsersActions(BuildContext context) {
    showModalBottomSheet(
      isDismissible: false,
      // isDismissible: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(45),
          topRight: Radius.circular(45),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return Wrap(
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(
                    width: 33.w,
                    child: Divider(
                      color: MyCustomColors().kBlackColor3,
                      thickness: 2,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    child: Column(
                      children: [
                        TextStyleHelper().mytext('Delete User Account', 16.sp,
                            FontWeight.w500, MyCustomColors().kBlackColor9),
                        Divider(
                          color: MyCustomColors().kBlackColor3,
                          height: 40.h,
                          thickness: 0.5,
                          endIndent: 0,
                        ),
                        TextStyleHelper().mytext('Block User', 16.sp,
                            FontWeight.w500, MyCustomColors().kBlackColor9),
                        Divider(
                          color: MyCustomColors().kBlackColor3,
                          height: 40.h,
                          thickness: 0.5,
                          endIndent: 0,
                        ),
                        InkWell(
                          onTap: () => Navigator.pop(context),
                          child: TextStyleHelper().mytext('Cancel', 18.sp,
                              FontWeight.w500, MyCustomColors().kBlackColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
