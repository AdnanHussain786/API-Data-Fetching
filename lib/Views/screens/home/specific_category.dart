import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/constants/colors.dart';
import 'package:quizapp/constants/textstylehelper.dart';

class SpecificCategoryScreen extends StatefulWidget {
  const SpecificCategoryScreen({super.key});

  @override
  State<SpecificCategoryScreen> createState() => _SpecificCategoryScreenState();
}

class _SpecificCategoryScreenState extends State<SpecificCategoryScreen> {
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
      'text': '16 questions',
    },
    {
      'image': 'assets/images/Rectangle2.png',
      'text': '20 questions',
    },
    // Add more data for other images
    {
      'image': 'assets/images/Rectangle2.png',
      'text': '24 questions',
    },
  ];

  List<String> textList1 = [
    'Microprocessor in Computer\nScience',
    'Guess the Wild animals\nnames',
    'Guess the Wild animals\nnames'
  ]; // For the first ListView

  List<Color> containerColors = [
    Color(0xffFFA800),
    Color(0xffAB0BC5),
    Color(0xff29BFFF),
    Color(0xffEA5455),
    Color(0xff082A6F),
    Color(0xff01AB1C) // Add more colors as needed
  ];

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Initialize ScreenUtil

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        title: TextStyleHelper().mytext(
          'Category',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15.w),
              child: Container(
                width: 388.w, // Set the width
                height: 60.h, // Set the height
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.12), // Shadow color
                      offset: Offset(0.w, 4.h), // X, Y offset
                      blurRadius: 10.w, // Blur radius
                      spreadRadius: 0.w, // Spread radius
                    ),
                  ],
                  borderRadius: BorderRadius.circular(12.w),
                ),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.w),
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
                                vertical: 6.h, horizontal: 10.w),
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
              padding: EdgeInsets.only(left: 10.w, right: 10.w),
              child: Row(
                children: [
                  TextStyleHelper().mytext(
                    'Computer Science',
                    20.sp,
                    FontWeight.w700,
                    MyCustomColors().kBlackColor,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.w, right: 10.w),
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
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 20, // Iterate 5 times
              itemBuilder: (context, index) {
                final containerColor =
                    containerColors[index % containerColors.length];

                return QuizzCategoryWidget(
                  containerColor: containerColor,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class QuizzCategoryWidget extends StatelessWidget {
  const QuizzCategoryWidget({
    super.key,
    required this.containerColor,
  });

  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.w),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        height: 90.h,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: containerColor, // Use the provided container color
                  borderRadius: BorderRadius.all(Radius.circular(10.w))),
              child: Container(
                margin: EdgeInsets.only(right: 2.w, bottom: 2.h),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.w))),
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
                          color:
                              containerColor, // Use the provided container color
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20.w),
                              topRight: Radius.circular(10.w))),
                      child: Text(
                        "18 Characters",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 10.sp),
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
                      "Microprocessor in Computer Science",
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
                          child: TextStyleHelper().mytext('2 Days ago', 10.sp,
                              FontWeight.w700, MyCustomColors().kBlackColor3),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Center(
                          child: Container(
                            padding: EdgeInsets.all(4.w),
                            decoration: BoxDecoration(
                              color:
                                  containerColor, // Use the provided container color
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.w)),
                            ),
                            child: TextStyleHelper().mytext('3.2K Plays', 10.sp,
                                FontWeight.w700, MyCustomColors().kWhiteColor),
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
      ),
    );
  }
}
