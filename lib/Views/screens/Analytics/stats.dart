import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/Views/screens/Analytics/specificquizstats.dart';
import 'package:quizapp/Views/screens/QuizScreens/quizdetails.dart';
import 'package:quizapp/Views/screens/auth/loginscreen.dart';
import 'package:quizapp/Views/screens/auth/registerscreen.dart';
import 'package:quizapp/Views/screens/home/specific_category.dart';
import 'package:quizapp/constants/colors.dart';
import 'package:quizapp/constants/textstylehelper1.dart';

class StatsScreen extends StatefulWidget {
  const StatsScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _StatsScreenState createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  List<Color> containerColors = [
    const Color(0xffFFA800),
    const Color(0xffAB0BC5),
    const Color(0xff29BFFF),
    const Color(0xffEA5455),
    const Color(0xff082A6F),
    const Color(0xff01AB1C) // Add more colors as needed
  ];
  final int _selectedIndex = 0;

  void _onItemTapped(int index) {
    // You can add logic here to navigate to different screens based on the selected tab.
    if (index == 0) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => StatsScreen(),
          ));
    }
    if (index == 1) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => QuizDetailsScreen(),
          ));
    }
    if (index == 2) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ));
    }
    if (index == 3) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RegisterScreen(),
          ));
    }
  }

  TextEditingController searchController = TextEditingController();
  List<Map<String, dynamic>> categoriesData = [
    {
      'title': 'Computer\nScience',
      'quizzes': 17,
      'color': MyCustomColors().kPrimaryColor2,
    },
    {
      'title': 'Physics II\n',
      'quizzes': 14,
      'color': const Color(0xffFFA800),
    },
    {
      'title': 'Chemistry\n',
      'quizzes': 28,
      'color': const Color.fromARGB(255, 64, 147, 161),
    },
    // Add more data for other categories
  ];
  // Define a list of data for images and other information
  List<Map<String, dynamic>> imageAndContainerData = [
    {
      'image': 'assets/images/Rectangle1.png',
      'color': const Color(0xffFFA800),
      'text': '16 questions',
    },
    {
      'image': 'assets/images/Rectangle2.png',
      'color': const Color(0xffAB0BCF),
      'text': '20 questions',
    },
    // Add more data for other images
    {
      'image': 'assets/images/Rectangle2.png',
      'color': const Color(0xffAB0BC5),
      'text': '24 questions',
    },
  ];
  List<String> textList1 = [
    'Microprocessor in Computer\nScience',
    'Guess the Wild animals\nnames',
    'Guess the Wild animals\nnames'
  ]; // For the first ListView

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 40, right: 50, bottom: 50),
          child: Container(
              height: 55.h,
              width: 322.w, // Set the desired height
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12).r,
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12).r,
                  child: Wrap(
                    children: [
                      BottomNavigationBar(
                        type: BottomNavigationBarType.fixed,

                        unselectedItemColor: MyCustomColors().kBlackColor7,

                        backgroundColor: MyCustomColors().kWhiteColor3,
                        items: <BottomNavigationBarItem>[
                          BottomNavigationBarItem(
                            icon: SizedBox(
                              width: 20.07.w,
                              height: 20.57.h,
                              child: Image.asset('assets/images/Home.png'),
                            ), // Add your home icon image path
                            label: 'Home',
                          ),
                          BottomNavigationBarItem(
                            icon: SizedBox(
                              width: 20.48.w,
                              height: 20.71.h,
                              child: Image.asset('assets/images/quiz.png'),
                            ), // Add your search icon image path
                            label: 'Stats',
                          ),
                          BottomNavigationBarItem(
                            icon: SizedBox(
                              width: 18.06.w,
                              height: 21.51.h,
                              child: Image.asset('assets/images/bag.png'),
                            ), // Add your profile icon image path
                            label: 'Profile',
                          ),
                          BottomNavigationBarItem(
                            icon: SizedBox(
                              width: 16.71.w,
                              height: 18.h,
                              child: Image.asset('assets/images/profile.png'),
                            ), // Add your fourth icon image path
                            label: 'Profile',
                          ),
                        ],
                        currentIndex: _selectedIndex,
                        selectedItemColor: MyCustomColors()
                            .kPrimaryColor, // Change color as needed
                        onTap: _onItemTapped,
                        showSelectedLabels:
                            false, // Hide labels to make it look cleaner
                        showUnselectedLabels: false,
                      ),
                    ],
                  ))),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: TextStyleHelper().mytext(
              'Analytics', 20, FontWeight.w500, MyCustomColors().kBlackColor),
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
            Padding(
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
                      color: MyCustomColors()
                          .kNotifyColor, // Notification badge color
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
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20).w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30.h,
                ),
                TextStyleHelper().mytext('Questions Taken by categories', 20,
                    FontWeight.w700, MyCustomColors().kBlackColor),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    TextStyleHelper().mytext('Last 15 days', 18.sp,
                        FontWeight.w700, MyCustomColors().kBlackColor1),
                    SizedBox(
                      width: 8.w,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.h),
                      child: SizedBox(
                          width: 10.w,
                          height: 6.h,
                          child: Image.asset('assets/images/downarrow.png')),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 10.h,
                ),

                TextStyleHelper().mytext(
                  'Quizzes Played',
                  20.sp,
                  FontWeight.w700,
                  MyCustomColors().kBlackColor,
                ),
                SizedBox(
                  height: 5.h,
                ),
                TextStyleHelper().mytext(
                  '03 Quizzes',
                  16.sp,
                  FontWeight.w500,
                  MyCustomColors().kBlackColor2,
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
                          builder: (context) => const SpecificQuizStats(),
                        ));
                  },
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 20, // Iterate 5 times
                    itemBuilder: (context, index) {
                      final containerColor =
                          containerColors[index % containerColors.length];

                      return QuizzCategoryWidget(
                        title: 'Microprocessor in computer Science',
                        timeAgoText: 'You played 2 days ago',
                        containerColor: containerColor,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
