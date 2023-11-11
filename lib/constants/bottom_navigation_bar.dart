import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/Views/screens/Analytics/stats.dart';
import 'package:quizapp/Views/screens/InAppStore/inappstore.dart';
import 'package:quizapp/Views/screens/auth/loginscreen.dart';
import 'package:quizapp/Views/screens/auth/registerscreen.dart';
import 'package:quizapp/Views/screens/home/homescreen.dart';
import 'package:quizapp/constants/colors.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  List<Widget> pages = [
    HomeScreen(),
    StatsScreen(),
    InAppStoreScreen(),
    RegisterScreen(),
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
      body: pages[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(left: 40.w, right: 50.w, bottom: 50.h),
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
                          'assets/images/quiz.png', _selectedIndex == 1),
                      label: 'Stats',
                    ),
                    BottomNavigationBarItem(
                      icon: buildIcon(
                          'assets/images/bag.png', _selectedIndex == 2),
                      label: 'App Store',
                    ),
                    BottomNavigationBarItem(
                      icon: buildIcon(
                          'assets/images/profile.png', _selectedIndex == 3),
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
