import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/Views/User/profile/monthly_plan_screen.dart';
import 'package:quizapp/Views/User/profile/yearly_plan_screen.dart';
import 'package:quizapp/constants/constants.dart';

class SubscriptionScreen extends StatefulWidget {
  SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen>
    with TickerProviderStateMixin {
  static final List<Tab> _tabs = [
    const Tab(
      child: Text(
        'Monthly',
      ),
    ),
    const Tab(
      child: Text(
        'Anually',
      ),
    ),
  ];
  static const List<Widget> _views = [
    MonthlyPlanScreen(),
    YearlyPlanScreen(),
  ];
  TextEditingController name = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
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
                      'Purchase Subscription',
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
                  height: 30.h,
                ),
                Container(
                  margin: EdgeInsets.all(2.0),
                  height: 50.h,
                  width: Get.width * 0.6,
                  decoration: BoxDecoration(
                      color: Color(0xff060606),
                      borderRadius: BorderRadius.circular(30.r)),
                  child: TabBar(
                    tabAlignment: TabAlignment.fill,
                    labelColor: Color(0xff001749),
                    unselectedLabelColor: Color(0xffA1A5C1),
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10.sp,
                    ),
                    unselectedLabelStyle:
                        TextStyle(fontStyle: FontStyle.normal, fontSize: 10.sp),
                    overlayColor: MaterialStateColor.resolveWith(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        // return Color(0xffE8E8E8);
                      }
                      if (states.contains(MaterialState.focused)) {
                        return Colors.orange;
                      } else if (states.contains(MaterialState.hovered)) {
                        // return null;
                      }

                      return Colors.transparent;
                    }),
                    indicatorWeight: 1,
                    indicatorColor: Colors.red,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorPadding: const EdgeInsets.all(10),
                    indicator: BoxDecoration(
                      // border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                    ),
                    // isScrollable: true,
                    physics: const BouncingScrollPhysics(),
                    onTap: (int index) {},
                    enableFeedback: true,
                    tabs: _tabs,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 1.5,
                  child: const TabBarView(
                    physics: BouncingScrollPhysics(),
                    children: _views,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
