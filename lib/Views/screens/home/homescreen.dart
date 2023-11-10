import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/Views/screens/home/specific_category.dart';
import 'package:quizapp/constants/bottom_navigation_bar.dart';
import 'package:quizapp/constants/colors.dart';
import 'package:quizapp/constants/mycustombutton.dart';
import 'package:quizapp/constants/quizscreenscontainersdata.dart';
import 'package:quizapp/constants/textstylehelper1.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final quizscreencontainerdata = QuizScreensContainersData();

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
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
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Container(
                width: 388.w, // Set the width
                height: 60.h, // Set the height
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.12), // Shadow color
                      offset: const Offset(0, 4), // X, Y offset
                      blurRadius: 10, // Blur radius
                      spreadRadius: 0, // Spread radius
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    leading: SizedBox(
                      width: 30
                          .w, // Reduce the width to bring the icon closer to text
                      height: 30
                          .h, // Reduce the height to bring the icon closer to text
                      child: Image.asset('assets/images/Search.png'),
                    ),
                    title: TextFormField(
                      controller: searchController,
                      cursorColor: MyCustomColors().kSupporive,
                      decoration: InputDecoration(
                        hintText: "Ricerca",
                        hintStyle: TextStyle(
                          color: MyCustomColors().kSupporive,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          fontFamily: "Poppins",
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                    trailing: SizedBox(
                      width: 18.53.w,
                      height: 18.h,
                      child: Image.asset('assets/images/filter.png'),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.all(15.0.r),
              child: RoundButton(
                  text: 'Custom Quiz',
                  textColor: MyCustomColors().kWhiteColor,
                  backgroundColor: MyCustomColors().kPrimaryColor,
                  borderColor: MyCustomColors().kPrimaryColor,
                  height: 57.h,
                  width: 340.w,
                  radius: 10.r,
                  onClick: () {}),
            ),

            SizedBox(
              height: 20.h,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10).r,
              child: Row(
                children: [
                  TextStyleHelper().mytext('Categories', 20, FontWeight.w700,
                      MyCustomColors().kBlackColor),
                  SizedBox(
                    width: 190.w,
                  ),
                  Expanded(
                    child: TextStyleHelper().mytext('View All', 12,
                        FontWeight.w500, MyCustomColors().kBlackColor3),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),

            // First horizontal ListView.builder for Categories
            SizedBox(
              height: 115.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: quizscreencontainerdata.categoriesData.length,
                itemBuilder: (context, index) {
                  final category =
                      quizscreencontainerdata.categoriesData[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const SpecificCategoryScreen(),
                          ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: category['color'],
                      ),

                      width: 150.w, // Set the width
                      margin: const EdgeInsets.only(left: 10),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10).r,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextStyleHelper().mytext(
                              category['title'],
                              16.sp,
                              FontWeight.w700,
                              MyCustomColors().kWhiteColor,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextStyleHelper().mytext(
                                  '${category['quizzes']} Quizzes',
                                  10.sp,
                                  FontWeight.w700,
                                  MyCustomColors().kWhiteColor,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            SizedBox(
              height: 20.h,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  TextStyleHelper().mytext('Top Quiz    ', 20, FontWeight.w700,
                      MyCustomColors().kBlackColor),
                  SizedBox(
                    width: 190.w,
                  ),
                  Expanded(
                    child: TextStyleHelper().mytext('View All', 12,
                        FontWeight.w500, MyCustomColors().kBlackColor3),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),

            // Second horizontal ListView.builder

            SizedBox(
              height: 115.h, // Set the height
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: quizscreencontainerdata.imageAndContainerData.length,
                itemBuilder: (context, index) {
                  final itemData =
                      quizscreencontainerdata.imageAndContainerData[index];
                  final textToShow = quizscreencontainerdata.textList1[index %
                      quizscreencontainerdata.textList1
                          .length]; // Cycle through the texts in the first list

                  return Container(
                    width: 150.w, // Set the width
                    margin: const EdgeInsets.only(left: 10).r,
                    child: Stack(
                      children: [
                        // Use ClipRRect to create a circular border radius
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(8.w)),
                          child: Image.asset(
                            itemData['image'],
                            fit: BoxFit.cover, // Adjust the fit as needed
                          ),
                        ),
                        // Container - Add your container with the specified color
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            height: 18.h,
                            width: 79.w, // Set the height
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20.w),
                                topRight: Radius.circular(10.w),
                              ),
                              color: itemData[
                                  'color'], // Use the 'color' key from the data
                            ),
                            child: Center(
                              // Add content inside the container
                              child: TextStyleHelper().mytext(
                                itemData[
                                    'text'], // Use the 'text' key from the data
                                10.sp,
                                FontWeight.w700,
                                MyCustomColors().kWhiteColor,
                              ),
                            ),
                          ),
                        ),

                        Align(
                          alignment: Alignment.bottomLeft,
                          child: TextStyleHelper().mytext(
                            textToShow,
                            10.sp,
                            FontWeight.w400,
                            MyCustomColors()
                                .kBlackColor, // Change the text color as needed
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            SizedBox(
              height: 20.h,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10).r,
              child: Row(
                children: [
                  TextStyleHelper().mytext('Recently added', 20.sp,
                      FontWeight.w700, MyCustomColors().kBlackColor),
                ],
              ),
            ),

            SizedBox(
              height: 10.h,
            ),

            SizedBox(
              height: 115.h, // Set the height
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: quizscreencontainerdata.imageAndContainerData.length,
                itemBuilder: (context, index) {
                  final itemData =
                      quizscreencontainerdata.imageAndContainerData[index];
                  final textToShow = quizscreencontainerdata.textList1[index %
                      quizscreencontainerdata.textList1
                          .length]; // Cycle through the texts in the first list

                  return Container(
                    width: 150.w, // Set the width
                    margin: const EdgeInsets.only(left: 10).r,
                    child: Stack(
                      children: [
                        // Use ClipRRect to create a circular border radius
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(8.w)),
                          child: Image.asset(
                            itemData['image'],
                            fit: BoxFit.cover, // Adjust the fit as needed
                          ),
                        ),
                        // Container - Add your container with the specified color
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            height: 18.h,
                            width: 79.w, // Set the height
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.zero,
                                  topRight: Radius.circular(8),
                                  bottomLeft: Radius.circular(16),
                                  bottomRight: Radius.zero),
                              color: itemData[
                                  'color'], // Use the 'color' key from the data
                            ),
                            child: Center(
                              // Add content inside the container
                              child: TextStyleHelper().mytext(
                                itemData[
                                    'text'], // Use the 'text' key from the data
                                10.sp,
                                FontWeight.w700,
                                MyCustomColors().kWhiteColor,
                              ),
                            ),
                          ),
                        ),

                        Align(
                          alignment: Alignment.bottomLeft,
                          child: TextStyleHelper().mytext(
                            textToShow,
                            10.sp,
                            FontWeight.w400,
                            MyCustomColors()
                                .kBlackColor, // Change the text color as needed
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            SizedBox(
              height: 10.h,
            ),
          ],
        ),
      ),
    );
  }
}
