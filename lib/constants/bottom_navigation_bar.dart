import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/constants/colors.dart';
import 'package:quizapp/constants/navigation_service.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _selectedIndex = NavigationService.selectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                selectedIconTheme:
                    IconThemeData(color: MyCustomColors().kPrimaryColor),
                unselectedIconTheme:
                    IconThemeData(color: MyCustomColors().kBlackColor),
                showSelectedLabels: false,
                type: BottomNavigationBarType.fixed,

                backgroundColor: MyCustomColors().kSecondaryColor3,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: SizedBox(
                      width: 20.w,
                      height: 20.h,
                      child: Image.asset('assets/images/Home.png'),
                    ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: SizedBox(
                      width: 20.w,
                      height: 20.h,
                      child: Image.asset('assets/images/quiz.png'),
                    ),
                    label: 'Stats',
                  ),
                  BottomNavigationBarItem(
                    icon: SizedBox(
                      width: 18.w,
                      height: 21.h,
                      child: Image.asset('assets/images/bag.png'),
                    ),
                    label: 'Profile',
                  ),
                  BottomNavigationBarItem(
                    icon: SizedBox(
                      width: 16.w,
                      height: 18.h,
                      child: Image.asset('assets/images/profile.png'),
                    ),
                    label: 'Profile',
                  ),
                ],
                currentIndex: _selectedIndex,
                selectedItemColor:
                    MyCustomColors().kPrimaryColor, // Set the selected color
                onTap: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                  BottomNavigationBarHandler.onItemTapped(context, index);
                },
                showUnselectedLabels: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
