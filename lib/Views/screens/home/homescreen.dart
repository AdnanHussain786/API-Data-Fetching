import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/Views/screens/home/specific_category.dart';
import 'package:quizapp/constants/colors.dart';
import 'package:quizapp/constants/mycustombutton.dart';
import 'package:quizapp/constants/textstylehelper.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    // You can add logic here to navigate to different screens based on the selected tab.
  }

  TextEditingController searchController = TextEditingController();
  List<Map<String, dynamic>> categoriesData = [
    {
      'title': 'Computer\nScience',
      'quizzes': 17,
      'color': MyCustomColors().kPrimaryColor2,
    },
    {
      'title': 'Physics II',
      'quizzes': 14,
      'color': Color(0xffFFA800),
    },
    {
      'title': 'Chemistry',
      'quizzes': 28,
      'color': Color.fromARGB(255, 64, 147, 161),
    },
    // Add more data for other categories
  ];
  // Define a list of data for images and other information
  List<Map<String, dynamic>> imageAndContainerData = [
    {
      'image': 'assets/images/Rectangle1.png',
      'color': Color(0xffFFA800),
      'text': '16 questions',
    },
    {
      'image': 'assets/images/Rectangle2.png',
      'color': Color(0xffAB0BCF),
      'text': '20 questions',
    },
    // Add more data for other images
    {
      'image': 'assets/images/Rectangle2.png',
      'color': Color(0xffAB0BC5),
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
          padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
          child: Container(
              height: 50.h,
              width: 335.w, // Set the desired height
              decoration: BoxDecoration(
                color: MyCustomColors().kPrimaryColor, // Background color
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.r), // Adjust the radius as needed
                  topRight:
                      Radius.circular(20.r), // Adjust the radius as needed
                ),
                boxShadow: [
                  BoxShadow(
                    color: MyCustomColors()
                        .kBlackColor5
                        .withOpacity(0.12), // Shadow color
                    offset: Offset(0, -4), // Negative Y offset to lift the bar
                    blurRadius: 10, // Blur radius
                    spreadRadius: 0, // Spread radius
                  ),
                ],
              ),
              child: Wrap(
                children: [
                  BottomNavigationBar(
                    items: <BottomNavigationBarItem>[
                      BottomNavigationBarItem(
                        icon: Image.asset(
                            'assets/images/Home.png'), // Add your home icon image path
                        label: 'Home',
                      ),
                      BottomNavigationBarItem(
                        icon: Image.asset(
                            'assets/images/quiz.png'), // Add your search icon image path
                        label: 'Quiz',
                      ),
                      BottomNavigationBarItem(
                        icon: Image.asset(
                            'assets/images/bag.png'), // Add your profile icon image path
                        label: 'Profile',
                      ),
                      BottomNavigationBarItem(
                        icon: Image.asset(
                            'assets/images/profile.png'), // Add your fourth icon image path
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
              )),
        ),
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
          backgroundColor: MyCustomColors().kWhiteColor,
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
                      color: Colors.red, // Notification badge color
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
                padding: EdgeInsets.all(15.0.r),
                child: Container(
                  width: 388.w, // Set the width
                  height: 60.h, // Set the height
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.12), // Shadow color
                        offset: Offset(0, 4), // X, Y offset
                        blurRadius: 10, // Blur radius
                        spreadRadius: 0, // Spread radius
                      ),
                    ],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      leading: Image.asset('assets/images/Search.png'),
                      title: TextField(
                        controller: searchController,
                        cursorColor: MyCustomColors().kSupporive,
                        decoration: InputDecoration(
                          hintText: "Ricerca",
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                            fontFamily: "Poppins",
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                      trailing: SizedBox(
                        height: 40.h,
                        width: 70.w,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                      vertical: 6, horizontal: 10)
                                  .r,
                              child: VerticalDivider(),
                            ),
                            Image.asset('assets/images/filter.png'),
                          ],
                        ),
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
                      width: 200.w,
                    ),
                    Expanded(
                      child: TextStyleHelper().mytext('View All', 12,
                          FontWeight.w700, MyCustomColors().kBlackColor3),
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
                  itemCount: categoriesData.length,
                  itemBuilder: (context, index) {
                    final category = categoriesData[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SpecificCategoryScreen(),
                            ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: category['color'],
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, top: 10).r,
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
                                height: 40.h,
                              ),
                              TextStyleHelper().mytext(
                                '${category['quizzes']} Quizzes',
                                10.sp,
                                FontWeight.w700,
                                MyCustomColors().kWhiteColor,
                              ),
                            ],
                          ),
                        ),

                        width: 150.w, // Set the width
                        margin: EdgeInsets.only(left: 10),
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
                    TextStyleHelper().mytext('Top Quiz    ', 20,
                        FontWeight.w700, MyCustomColors().kBlackColor),
                    SizedBox(
                      width: 200.w,
                    ),
                    Expanded(
                      child: TextStyleHelper().mytext('View All', 12,
                          FontWeight.w700, MyCustomColors().kBlackColor3),
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
                  itemCount: imageAndContainerData.length,
                  itemBuilder: (context, index) {
                    final itemData = imageAndContainerData[index];
                    final textToShow = textList1[index %
                        textList1
                            .length]; // Cycle through the texts in the first list

                    return Container(
                      width: 150.w, // Set the width
                      margin: EdgeInsets.only(left: 10).r,
                      child: Stack(
                        children: [
                          // Use ClipRRect to create a circular border radius
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
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
                height: 20.h,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    TextStyleHelper().mytext('Recently added', 20,
                        FontWeight.w700, MyCustomColors().kBlackColor),
                    SizedBox(
                      width: 200.w,
                    ),
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
                  itemCount: imageAndContainerData.length,
                  itemBuilder: (context, index) {
                    final itemData = imageAndContainerData[index];
                    final textToShow = textList1[index %
                        textList1
                            .length]; // Cycle through the texts in the first list

                    return Container(
                      width: 150.w, // Set the width
                      margin: EdgeInsets.only(left: 10).r,
                      child: Stack(
                        children: [
                          // Use ClipRRect to create a circular border radius
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
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
        ));
  }
}
