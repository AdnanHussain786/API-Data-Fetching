import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/Views/Admin/Home/admin_home.dart';
import 'package:quizapp/Views/Admin/Quiz/admin_quiz_screen.dart';
import 'package:quizapp/Views/Admin/profile/admin_profile_screen.dart';
import 'package:quizapp/Views/User/Analytics/stats.dart';
import 'package:quizapp/Views/InAppStore/inappstore.dart';
import 'package:quizapp/Views/auth/loginscreen.dart';
import 'package:quizapp/Views/auth/registerscreen.dart';
import 'package:quizapp/Views/User/home/homescreen.dart';
import 'package:quizapp/Views/User/profile/profile_screen.dart';
import 'package:quizapp/constants/colors.dart';

class AdminBottomBar extends StatefulWidget {
  const AdminBottomBar({Key? key}) : super(key: key);

  @override
  State<AdminBottomBar> createState() => _AdminBottomBarState();
}

class _AdminBottomBarState extends State<AdminBottomBar> {
  int _selectedIndex = 0;

  List<Widget> pages = [
    AdminHome(),
    AdminQuizScreen(),
    StatsScreen(),
    InAppStoreScreen(
      isAdmin: true,
    ),
    AdminProfileScreen(),
  ];

  void onTap(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget buildIcon(String imagePath, bool isSelected) {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        isSelected
            ? MyCustomColors().kPrimaryColor
            : MyCustomColors().kBlackColor,
        BlendMode.srcIn,
      ),
      child: SizedBox(
        width: 20.w,
        height: 20.h,
        child: Image.asset(imagePath),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h),
        child: Container(
          height: 55,
          width: 322,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12).r,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12).r,
            child: Wrap(
              children: [
                BottomNavigationBar(
                  elevation: 0,
                  selectedItemColor: MyCustomColors().kPrimaryColor,
                  unselectedItemColor: MyCustomColors().kBlackColor,
                  showSelectedLabels: false,
                  type: BottomNavigationBarType.fixed,
                  backgroundColor: MyCustomColors().kSecondaryColor3,
                  items: <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: buildIcon(
                          'assets/images/Home.png', _selectedIndex == 0),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: buildIcon(
                          'assets/images/admin_quiz.png', _selectedIndex == 1),
                      label: 'Quiz',
                    ),
                    BottomNavigationBarItem(
                      icon: buildIcon(
                          'assets/images/csv.png', _selectedIndex == 2),
                      label: 'CSV',
                    ),
                    BottomNavigationBarItem(
                      icon: buildIcon(
                          'assets/images/bag.png', _selectedIndex == 3),
                      label: 'App Store',
                    ),
                    BottomNavigationBarItem(
                      icon: buildIcon(
                          'assets/images/profile.png', _selectedIndex == 4),
                      label: 'Profile',
                    ),
                  ],
                  currentIndex: _selectedIndex,
                  onTap: onTap,
                  showUnselectedLabels: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
