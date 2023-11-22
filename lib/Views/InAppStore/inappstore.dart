import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/Views/Admin/Quiz/add_quiz_screen.dart';
import 'package:quizapp/Views/InAppStore/add_to_store_screen.dart';
import 'package:quizapp/Views/InAppStore/specific_service_screen.dart';
import 'package:quizapp/constants/colors.dart';
import 'package:quizapp/constants/textstylehelper1.dart';

class InAppStoreScreen extends StatefulWidget {
  InAppStoreScreen({Key? key, this.isAdmin = false});
  var isAdmin;

  @override
  State<InAppStoreScreen> createState() => _InAppStoreScreenState();
}

class _InAppStoreScreenState extends State<InAppStoreScreen> {
  List<Map<String, dynamic>> serviceData = [
    {
      'title': 'Training',
      'subtitle': '2 months',
      'trailing': 'Trailing 1',
      'image': 'assets/images/topservice1.png',
    },
    {
      'title': 'Coaching',
      'subtitle': '2 months',
      'trailing': 'Trailing 2',
      'image': 'assets/images/topservice2.png',
    },
    // Add more service items as needed
    {
      'title': 'Coaching',
      'subtitle': '3 months',
      'trailing': 'Trailing 3',
      'image': 'assets/images/topservice3.png',
    },
    {
      'title': 'Coaching',
      'subtitle': '2 months',
      'trailing': 'Visit Amazon now',
      'image': 'assets/images/topservice3.png',
    },
  ];

  List<Map<String, dynamic>> bookData = [
    {
      'title': 'Milk and honey',
      'subtitle': 'rupi kaur',
      'trailing': 'Visit Amazon now',
      'image': 'assets/images/topbook1.png',
    },
    {
      'title': 'Thinking ',
      'subtitle': 'SDanial kaheman',
      'trailing': 'Visit Amazon now',
      'image': 'assets/images/topbook2.png',
    },
    // Add more book items as needed
    {
      'title': 'Guide to success',
      'subtitle': 'SBrat pit',
      'trailing': 'Visit Amazon now',
      'image': 'assets/images/topbook3.png',
    },
    {
      'title': 'Lora ispum',
      'subtitle': 'Chnadu',
      'trailing': 'Visit Amazon now',
      'image': 'assets/images/topbook3.png',
    },
  ];

  List<Map<String, dynamic>> courseData = [
    {
      'title': 'Business Marketing',
      'subtitle': '10 videos, 5 notes',
      'trailing': 'Visit Udemy now',
      'image': 'assets/images/topservice1.png',
    },
    {
      'title': 'Design and arts',
      'subtitle': '10 videos, 5 notes',
      'trailing': 'Visit Udemy now',
      'image': 'assets/images/topservice2.png',
    },
    // Add more service items as needed
    {
      'title': 'Python',
      'subtitle': '0 videos, 5 notes',
      'trailing': 'Visit Udemy now',
      'image': 'assets/images/topservice3.png',
    },
    {
      'title': 'Flutter',
      'subtitle': '10 videos, 5 notes',
      'trailing': 'Visit Udemy now',
      'image': 'assets/images/topservice3.png',
    },
    {
      'title': 'C++ Fundamentals',
      'subtitle': '10 videos, 5 notes',
      'trailing': 'Visit Udemy now',
      'image': 'assets/images/topservice3.png',
    },
  ];

  List<Map<String, dynamic>> articleData = [
    {
      'title': 'Jon Kantner',
      'subtitle': '10 videos, 5 notes',
      'trailing': 'Visit Facebook now',
      'image': 'assets/images/topservice1.png',
    },
    {
      'title': 'Jon Kantner',
      'subtitle': '10 videos, 5 notes',
      'trailing': 'Visit Facebook noww',
      'image': 'assets/images/topservice2.png',
    },
    // Add more service items as needed
    {
      'title': 'Jon Kantner',
      'subtitle': '0 videos, 5 notes',
      'trailing': 'Visit Facebook now',
      'image': 'assets/images/topservice3.png',
    },
    {
      'title': 'Jon Kantner',
      'subtitle': '10 videos, 5 notes',
      'trailing': 'Visit Facebook now',
      'image': 'assets/images/topservice3.png',
    },
    {
      'title': 'Jon Kantner',
      'subtitle': '10 videos, 5 notes',
      'trailing': 'Visit Facebook now',
      'image': 'assets/images/topservice3.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70.w,
        toolbarHeight: 59.h,
        leading: Center(
          child: SizedBox(
            width: 58.w, // Increase the width
            height: 59.h,
            // Increase the height
            child: Image.asset(
              'assets/images/img1.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        actions: [
          widget.isAdmin
              ? Container()
              : Padding(
                  padding: const EdgeInsets.only(right: 15, top: 15).r,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: SizedBox(
                          width: 22.0.w,
                          height: 25.37.h,
                          child: Image.asset('assets/images/notify.png'),
                        ),
                      ),
                      Container(
                        width: 12.0.w,
                        height: 12.48.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: MyCustomColors().kNotifyColor,
                        ),
                        child: Center(
                          child: TextStyleHelper().mytext(
                            '4',
                            9.39.sp,
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            widget.isAdmin
                ? Padding(
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(() => const AddToStoreScreen());
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
                                    'Upload',
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
                  )
                : Container(),
            SizedBox(
              height: 10.h,
            ),
            buildCategoryRow('Top Services', serviceData),
            buildListViewBuilder(serviceData),
            SizedBox(
              height: 20.h,
            ),
            buildCategoryRow('Top Books', bookData),
            buildTopCourses(bookData),
            SizedBox(
              height: 20.h,
            ),
            buildCategoryRow('Top Courses', courseData),
            buildTopCourses(courseData),
            SizedBox(
              height: 20.h,
            ),
            buildCategoryRow('Top Articles', articleData),
            buildTopArticles(articleData),
            SizedBox(
              height: 100.h,
            )
          ],
        ),
      ),
    );
  }

  Widget buildCategoryRow(
      String categoryName, List<Map<String, dynamic>> dataList) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              TextStyleHelper().mytext(
                categoryName,
                20,
                FontWeight.w700,
                MyCustomColors().kBlackColor,
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  // Handle View All button tap
                },
                child: TextStyleHelper().mytext(
                  'View All',
                  12,
                  FontWeight.w500,
                  MyCustomColors().kBlackColor3,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }

  Widget buildListViewBuilder(List<Map<String, dynamic>> dataList) {
    return SizedBox(
      height: 119.h, // Set the height
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SpecificServiceScreen(),
              ));
        },
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: dataList.length,
          itemBuilder: (context, index) {
            final itemData = dataList[index];

            return Container(
              decoration: BoxDecoration(
                  color: Color(0xffFAFAFA),
                  border: Border.all(
                    color: Color(0xffF1F1F1),
                    width: 1.w,
                  ),
                  borderRadius: BorderRadius.circular(5.87.r)),
              width: 112.w, // Set the width
              // height: 119.h,
              margin: const EdgeInsets.only(left: 10).r,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Image without ClipRRect
                    Container(
                      width: 103.66.w,
                      height: 78.22.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.87.r)),
                      child: Image.asset(
                        itemData['image'],
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    // Container with grey background for text
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start, // Align text to start
                          children: [
                            SizedBox(
                              width: 70.w,
                              child: Text(
                                itemData['title'],
                                style: GoogleFonts.dmSans(
                                  fontSize: 9.sp,
                                  fontWeight: FontWeight.w500,
                                  color: MyCustomColors().kBlackColor,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            TextStyleHelper().mytext(
                              itemData['subtitle'],
                              6.36.sp,
                              FontWeight.w500,
                              MyCustomColors().kBlackColor,
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                            width: 21.19.w,
                            height: 21.19.h,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: MyCustomColors().kPrimaryColor1),
                            child: Image.asset('assets/images/arrowdown.png'))
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget buildTopCourses(List<Map<String, dynamic>> dataList) {
    return SizedBox(
      height: 130.h, // Set the height
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          final itemData = dataList[index];

          return Container(
            decoration: BoxDecoration(
                color: Color(0xffFAFAFA),
                border: Border.all(
                  color: Color(0xffF1F1F1),
                  width: 1.w,
                ),
                borderRadius: BorderRadius.circular(5.87.r)),
            width: 112.w, // Set the width
            // height: 119.h,
            margin: const EdgeInsets.only(left: 10).r,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Image without ClipRRect
                  Container(
                    width: 103.66.w,
                    height: 78.22.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.87.r)),
                    child: Image.asset(
                      itemData['image'],
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  // Container with grey background for text
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // Align text to start
                        children: [
                          SizedBox(
                            width: 70.w,
                            child: Text(
                              itemData['title'],
                              style: GoogleFonts.dmSans(
                                fontSize: 9.sp,
                                fontWeight: FontWeight.w500,
                                color: MyCustomColors().kBlackColor,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          TextStyleHelper().mytext(
                            itemData['subtitle'],
                            6.36.sp,
                            FontWeight.w500,
                            MyCustomColors().kBlackColor,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          TextStyleHelper().mytext(
                            itemData['trailing'],
                            6.sp,
                            FontWeight.w400,
                            MyCustomColors().kBlackColor,
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                          width: 21.19.w,
                          height: 21.19.h,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: MyCustomColors().kPrimaryColor1),
                          child: Image.asset('assets/images/arrowdown.png'))
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildTopArticles(List<Map<String, dynamic>> dataList) {
    return SizedBox(
      height: 130.h, // Set the height
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          final itemData = dataList[index];

          return Container(
            decoration: BoxDecoration(
                color: Color(0xffFAFAFA),
                border: Border.all(
                  color: Color(0xffF1F1F1),
                  width: 1.w,
                ),
                borderRadius: BorderRadius.circular(5.87.r)),
            width: 112.w, // Set the width
            // height: 119.h,
            margin: const EdgeInsets.only(left: 10).r,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Image without ClipRRect
                  Container(
                    width: 103.66.w,
                    height: 78.22.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.87.r)),
                    child: Image.asset(
                      itemData['image'],
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  // Container with grey background for text
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // Align text to start
                        children: [
                          SizedBox(
                            width: 70.w,
                            child: Text(
                              itemData['title'],
                              style: GoogleFonts.dmSans(
                                fontSize: 9.sp,
                                fontWeight: FontWeight.w500,
                                color: MyCustomColors().kBlackColor,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          TextStyleHelper().mytext(
                            itemData['trailing'],
                            6.36.sp,
                            FontWeight.w500,
                            const Color(0xff018eff),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Image.asset(
                            'assets/images/fb.png',
                            width: 10.w,
                            height: 8.h,
                          )
                        ],
                      ),
                      Spacer(),
                      Container(
                          width: 21.19.w,
                          height: 21.19.h,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: MyCustomColors().kPrimaryColor1),
                          child: Image.asset('assets/images/arrowdown.png'))
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
