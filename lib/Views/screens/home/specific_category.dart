import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/Views/screens/QuizScreens/quizdetails.dart';
import 'package:quizapp/constants/colors.dart';
import 'package:quizapp/constants/textstylehelper1.dart';

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
      'color': const Color(0xffFFA800),
    },
    {
      'title': 'Chemistry',
      'quizzes': 28,
      'color': const Color.fromARGB(255, 64, 147, 161),
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
    const Color(0xffFFA800),
    const Color(0xffAB0BC5),
    const Color(0xff29BFFF),
    const Color(0xffEA5455),
    const Color(0xff082A6F),
    const Color(0xff01AB1C) // Add more colors as needed
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
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
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
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const QuizDetailsScreen(),
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

                  return Padding(
                    padding: const EdgeInsets.only(left: 10).w,
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
