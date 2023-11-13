import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/Views/Admin/Quiz/add_quiz_screen.dart';
import 'package:quizapp/Views/Admin/Quiz/admin_quiz_details_screen.dart';
import 'package:quizapp/Views/User/QuizScreens/quizdetails.dart';
import 'package:quizapp/constants/colors.dart';
import 'package:quizapp/constants/constants.dart';
import 'package:quizapp/constants/quizscreenscontainersdata.dart';
import 'package:quizapp/constants/textstylehelper1.dart';

class AdminQuizScreen extends StatefulWidget {
  const AdminQuizScreen({super.key});

  @override
  State<AdminQuizScreen> createState() => _AdminQuizScreenState();
}

class _AdminQuizScreenState extends State<AdminQuizScreen> {
  final quizscreencontainersdata = QuizScreensContainersData();

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: TextStyleHelper().mytext(
          'Quizzes',
          18.sp,
          FontWeight.w500,
          MyCustomColors().kBlackColor,
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: MyCustomColors().kBlackColor),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomSearchField(
                controller: TextEditingController(),
                hintText: 'Ricerca',
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextStyleHelper().mytext(
                    'ALL',
                    20.sp,
                    FontWeight.w700,
                    MyCustomColors().kBlackColor,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const AddQuizScreen());
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
                              'Make a quiz',
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
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: Row(
                children: [
                  TextStyleHelper().mytext(
                    '17 Quizzes',
                    16.sp,
                    FontWeight.w500,
                    MyCustomColors().kBlackColor2,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            // Replace this SizedBox with the ListView
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AdminQuizDetailsScreen(),
                    ));
              },
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 20, // Iterate 5 times
                itemBuilder: (context, index) {
                  final containerColor = quizscreencontainersdata
                          .containerColors[
                      index % quizscreencontainersdata.containerColors.length];

                  return Padding(
                    padding: const EdgeInsets.only(left: 20).w,
                    child: QuizzCategoryWidget(
                      title: 'Microprocessor in computer Science',
                      timeAgoText: '2 Days Ago',
                      playsText: '3.2K Plays',
                      containerColor: containerColor,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class QuizzCategoryWidget extends StatelessWidget {
  const QuizzCategoryWidget({
    Key? key,
    required this.containerColor,
    required this.title,
    required this.timeAgoText,
    this.playsText,
  }) : super(key: key);

  final Color containerColor;
  final String title;
  final String timeAgoText;
  final String? playsText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      height: 90.h,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              color: containerColor,
              borderRadius: BorderRadius.all(Radius.circular(10.w)),
            ),
            child: Container(
              margin: EdgeInsets.only(right: 2.w, bottom: 2.h),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.w)),
                    ),
                    height: 100.h,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10.w)),
                      child: Image.asset(
                        'assets/images/Rectangle1.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
                    decoration: BoxDecoration(
                      color: containerColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.w),
                        topRight: Radius.circular(10.w),
                      ),
                    ),
                    child: Text(
                      "18 Characters",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 10.sp,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  color: Colors.transparent,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(4.w),
                        child: TextStyleHelper().mytext(
                          timeAgoText,
                          10.sp,
                          FontWeight.w700,
                          MyCustomColors().kBlackColor3,
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      if (playsText != null)
                        Center(
                          child: Container(
                            padding: EdgeInsets.all(4.w),
                            decoration: BoxDecoration(
                              color: containerColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.w)),
                            ),
                            child: TextStyleHelper().mytext(
                              playsText!,
                              10.sp,
                              FontWeight.w700,
                              MyCustomColors().kWhiteColor,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
