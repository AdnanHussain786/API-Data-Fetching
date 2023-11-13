import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/constants/colors.dart';
import 'package:quizapp/constants/mycustombutton.dart';
import 'package:quizapp/constants/textstylehelper1.dart';
import 'package:quizapp/widgets/dropdown.dart';

class UploadCSVFileScreen extends StatefulWidget {
  const UploadCSVFileScreen({super.key});

  @override
  State<UploadCSVFileScreen> createState() => _UploadCSVFileScreenState();
}

class _UploadCSVFileScreenState extends State<UploadCSVFileScreen> {
  int currentIndex = 1;
  bool addNewFile = false;
  List<String> dropdownItems = ['Software', 'Hardware'];

  List files = [
    // {
    //   // "type": "Software",
    //   // "name": "test.csv",
    // },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: TextStyleHelper().mytext(
          'Upload CSV File',
          18.sp,
          FontWeight.w500,
          MyCustomColors().kBlackColor,
        ),
        centerTitle: true,
        leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: const Icon(Icons.arrow_back_ios)),
        iconTheme: IconThemeData(color: MyCustomColors().kBlackColor),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 5.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text('#${index + 1}',
                                style: GoogleFonts.lexend(
                                  fontSize: 28.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                )),
                            SizedBox(
                              height: 5.h,
                            ),
                            Container(
                                width: 388.w,
                                height: 50.h,
                                decoration: BoxDecoration(
                                  color: Color(0xff064DAE).withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    children: [
                                      TextStyleHelper().mytext(
                                          files[index]['name'] ?? 'test.csv',
                                          12.sp,
                                          FontWeight.w500,
                                          MyCustomColors().kPrimaryColor),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            files.removeAt(index);
                                          });
                                        },
                                        child: Image.asset(
                                          'assets/images/Delete.png',
                                          height: 15.h,
                                          width: 15.w,
                                        ),
                                      ),
                                      Spacer(),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            print('hi');
                                            files[index]['expanded'] =
                                                !files[index]['expanded'];
                                          });
                                        },
                                        child: Container(
                                          alignment: Alignment.centerRight,
                                          // color: Colors.red,
                                          height: 60.h,
                                          width: 100.w,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10.w, vertical: 20.h),
                                          child: SvgPicture.asset(
                                            files[index]['expanded'] == true
                                                ? 'assets/icons/arrow_up.svg'
                                                : 'assets/icons/arrow_down.svg',
                                            height: 8.h,
                                            width: 10.w,
                                            colorFilter: const ColorFilter.mode(
                                              Color(0xff064DAE),
                                              BlendMode.srcIn,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                            files[index]['expanded']
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      TextStyleHelper().mytext(
                                          'Category',
                                          13.sp,
                                          FontWeight.w500,
                                          MyCustomColors().kBlackColor),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      MyDropDown(
                                          onChanged: (p0) {},
                                          dropdownItems: dropdownItems,
                                          hint: files[index]['type'] ??
                                              'Software'),
                                    ],
                                  )
                                : Container(),
                          ],
                        ));
                  },
                  itemCount: files.length),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Visibility(
                      visible: true,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 15.h,
                          ),
                          Text('#${files.length + 1}',
                              style: GoogleFonts.lexend(
                                fontSize: 28.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              )),
                          SizedBox(
                            height: 10.h,
                          ),
                          TextStyleHelper().mytext('Upload CSV File', 13.sp,
                              FontWeight.w500, MyCustomColors().kBlackColor),
                          SizedBox(
                            height: 10.h,
                          ),
                          InkWell(
                            onTap: () {
                              // Handle the tap event here
                            },
                            child: DottedBorder(
                              dashPattern: const [10, 10],
                              color: MyCustomColors()
                                  .kBlackColor
                                  .withOpacity(0.5), // Border color
                              strokeWidth: 1, // Border width
                              radius:
                                  const Radius.circular(10).r, // Border radius
                              borderType:
                                  BorderType.RRect, // Rounded rectangle border
                              child: SizedBox(
                                height: 50.h,
                                width: 388.w,
                                child: Center(
                                    child: TextStyleHelper().mytext(
                                        'Upload',
                                        12.sp,
                                        FontWeight.w500,
                                        MyCustomColors().kBlackColor1)),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          TextStyleHelper().mytext('Category', 13.sp,
                              FontWeight.w500, MyCustomColors().kBlackColor),
                          SizedBox(
                            height: 10.h,
                          ),
                          MyDropDown(
                              onChanged: (p0) {},
                              dropdownItems: dropdownItems,
                              hint: 'Software'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          addNewFile = true;
                          files.add({
                            "type": "Software",
                            "name": "test.csv",
                            'expanded': false,
                          });
                        });
                      },
                      child: Row(
                        children: [
                          Container(
                            height: 30.h,
                            width: 20.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: MyCustomColors().kPrimaryColor,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.add,
                                size: 18.sp, // Adjust the size as needed
                                color: MyCustomColors()
                                    .kWhiteColor, // Change the icon color to white
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          TextStyleHelper().mytext(
                            'Upload another ',
                            12.sp,
                            FontWeight.w500,
                            Color(0xff000000),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: RoundButton(
                          text: 'Finish',
                          textColor: MyCustomColors().kWhiteColor,
                          backgroundColor: MyCustomColors().kPrimaryColor,
                          borderColor: MyCustomColors().kPrimaryColor,
                          height: 57.h,
                          width: 340.w,
                          radius: 10.r,
                          onClick: () {
                            //   Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //         builder: (context) =>
                            //             const CustomBottomNavigationBar(),
                            //       ));
                            // }),
                          }),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
