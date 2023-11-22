// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:quizapp/constants/bottom_navigation_bar.dart';
// import 'package:quizapp/constants/colors.dart';
// import 'package:quizapp/constants/mycustombutton.dart';
// import 'package:quizapp/constants/textstylehelper1.dart';

// class LastQuestionScreen extends StatefulWidget {
//   const LastQuestionScreen({
//     Key? key,
//   }) : super(key: key);

//   static String question16 = "";

//   @override
//   State<LastQuestionScreen> createState() => _LastQuestionScreenState();
// }

// class _LastQuestionScreenState extends State<LastQuestionScreen> {
//   String selectedAns16 = "";
//   int selectedIndex = -1;

//   var options = {
//     "1": "RAM",
//     "2": "Hard Disk",
//     "3": "DVD",
//     "4": "ROM",
//   };

//   @override
//   Widget build(BuildContext context) {
//     Color boxColor = MyCustomColors().kPrimaryColor3;
//     Color backgroundColor = MyCustomColors().kWhiteColor;

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: MyCustomColors().kPrimaryColor3,
//         automaticallyImplyLeading: false,
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 15, top: 10).r,
//             child: Column(
//               children: [
//                 Container(
//                   width: 47.w,
//                   height: 37.h,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(40),
//                     color: MyCustomColors()
//                         .kWhiteColor, // Notification badge color
//                   ),
//                   child: Center(
//                     child: TextStyleHelper().mytext(
//                       '16/16',
//                       16.sp,
//                       FontWeight.w500,
//                       MyCustomColors().kBlackColor,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//       body: Padding(
//         // Use ScreenUtil to set padding
//         padding: EdgeInsets.only(
//           left: 10.w,
//           right: 10.w,
//           top: 20.h,
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             TextStyleHelper().mytext(
//               "Question #16", // Add the question number
//               20,
//               FontWeight.w500,
//               MyCustomColors().kBlackColor2, // Customize the color
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             TextStyleHelper().mytext(
//               "What is the Permanent or volatile memory of a computer System?", // Add the question number
//               20,
//               FontWeight.w500,
//               MyCustomColors().kBlackColor, // Customize the color
//             ),
//             const SizedBox(
//               height: 30,
//             ),
//             Wrap(
//               children: List.generate(4, (index) {
//                 return InkWell(
//                   onTap: () {
//                     setState(() {
//                       selectedIndex = index;
//                       selectedAns16 = options.values.elementAt(index);
//                     });
//                   },
//                   child: Column(
//                     children: [
//                       AnswerBox(
//                         isCorrectAnswer: ,
//                         answer: options.values.elementAt(index),
//                         color:
//                             selectedIndex == index ? boxColor : backgroundColor,
//                         currentIndex: index, // Pass the current index
//                         selectedIndex: selectedIndex, // Pass the selected index
//                         onClick: () {
//                           setState(() {
//                             selectedIndex = index;
//                             selectedAns16 = options.values.elementAt(index);
//                           });
//                         },
//                       ),
//                     ],
//                   ),
//                 );
//               }),
//             ),
//             const SizedBox(
//               height: 30,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 50),
//               child: RoundButton(
//                 text: 'Finish',
//                 textColor: MyCustomColors().kWhiteColor,
//                 backgroundColor: MyCustomColors().kPrimaryColor,
//                 borderColor: MyCustomColors().kPrimaryColor,
//                 height: 57.h,
//                 width: 340.w,
//                 radius: 10.r,
//                 onClick: () {
//                   if (selectedAns16.isNotEmpty) {
//                     showModalBottomSheet(
//                       shape: const RoundedRectangleBorder(
//                           borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(25),
//                               topRight: Radius.circular(25))),
//                       context: context,
//                       builder: (BuildContext context) {
//                         return SizedBox(
//                           height: 553.h, // Set the height you want
//                           width: 428.w,
//                           child: Padding(
//                             padding: const EdgeInsets.all(20.0).r,
//                             child: StatefulBuilder(
//                               builder:
//                                   (BuildContext context, StateSetter setState) {
//                                 return Column(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     SizedBox(
//                                       width: 159.04.w,
//                                       height: 154.h,
//                                       child: Image.asset(
//                                           'assets/images/quizfinish.png'),
//                                     ),
//                                     SizedBox(
//                                       height: 20.h,
//                                     ),
//                                     TextStyleHelper().mytext(
//                                       'Quiz Finished',
//                                       24.sp,
//                                       FontWeight.w700,
//                                       MyCustomColors().kBlackColor,
//                                     ),
//                                     SizedBox(
//                                       height: 5.h,
//                                     ),
//                                     TextStyleHelper().mytext(
//                                       'Thanks for attempting quiz',
//                                       16.sp,
//                                       FontWeight.w700,
//                                       MyCustomColors().kBlackColor,
//                                     ),
//                                     SizedBox(
//                                       height: 20.h,
//                                     ),
//                                     RoundButton1(
//                                       richTexts: [
//                                         RichText(
//                                           text: TextSpan(
//                                             style: TextStyle(
//                                               color: MyCustomColors()
//                                                   .kWhiteColor, // Font color for the first text
//                                               fontSize: 16,
//                                             ),
//                                             children: const [
//                                               TextSpan(
//                                                 text: 'Print Quiz',
//                                                 style: TextStyle(
//                                                   fontWeight: FontWeight.w700,
//                                                   fontFamily:
//                                                       'Font1', // Font for the first text
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                         RichText(
//                                           text: TextSpan(
//                                             style: TextStyle(
//                                               color: MyCustomColors()
//                                                   .kBlackColor4, // Font color for the second text
//                                               fontSize: 16,
//                                             ),
//                                             children: const [
//                                               TextSpan(
//                                                 text: '(only correct answers)',
//                                                 style: TextStyle(
//                                                   fontWeight: FontWeight.w400,
//                                                   fontFamily:
//                                                       'Font2', // Font for the second text
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ],
//                                       backgroundColor:
//                                           MyCustomColors().kPrimaryColor,
//                                       borderColor:
//                                           MyCustomColors().kPrimaryColor,
//                                       height: 57.h,
//                                       width: 388.w,
//                                       radius: 10.r,
//                                       onClick: () {},
//                                     ),
//                                     SizedBox(
//                                       height: 15.h,
//                                     ),
//                                     RoundButton(
//                                       text: 'View Explanations',
//                                       textColor: MyCustomColors().kPrimaryColor,
//                                       backgroundColor:
//                                           MyCustomColors().kWhiteColor,
//                                       borderColor:
//                                           MyCustomColors().kPrimaryColor,
//                                       height: 57.h,
//                                       width: 388.w,
//                                       radius: 10.r,
//                                       onClick: () {},
//                                     ),
//                                     SizedBox(
//                                       height: 10.h,
//                                     ),
//                                     InkWell(
//                                       onTap: () {},
//                                       child: Text(
//                                         'Go back to homepage',
//                                         style: TextStyle(
//                                           color: MyCustomColors().kBlackColor1,
//                                           fontWeight: FontWeight.w500,
//                                           fontSize: 16.sp,
//                                           decoration: TextDecoration.underline,
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 );
//                               },
//                             ),
//                           ),
//                         );
//                       },
//                     );
//                   } else {
//                     // Show a dialog if no option is selected
//                     showDialog(
//                       context: context,
//                       builder: (context) => AlertDialog(
//                         title: TextStyleHelper().mytext(
//                           "Select an Option",
//                           18.sp,
//                           FontWeight.normal,
//                           MyCustomColors().kBlackColor,
//                         ),
//                         content: TextStyleHelper().mytext(
//                           "Please select an answer before moving to the next question.",
//                           16.sp,
//                           FontWeight.normal,
//                           MyCustomColors().kBlackColor,
//                         ),
//                         actions: [
//                           TextButton(
//                             onPressed: () => Navigator.pop(context),
//                             child: TextStyleHelper().mytext(
//                               "OK",
//                               18.sp,
//                               FontWeight.normal,
//                               MyCustomColors().kPrimaryColor,
//                             ),
//                           ),
//                         ],
//                       ),
//                     );
//                   }
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class AnswerBox extends StatelessWidget {
//   final String answer;
//   final Color color;
//   final int selectedIndex;
//   final int currentIndex;
//   final VoidCallback onClick;
//   final bool isCorrectAnswer; // Define the isCorrectAnswer parameter

//   const AnswerBox({
//     Key? key,
//     required this.answer,
//     required this.color,
//     required this.selectedIndex,
//     required this.currentIndex,
//     required this.onClick,
//     required this.isCorrectAnswer, // Add the isCorrectAnswer parameter
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         return onClick();
//       },
//       child: Container(
//         height: 57.h,
//         width: 340.w,
//         margin: const EdgeInsets.only(top: 10, bottom: 5, left: 10),
//         decoration: BoxDecoration(
//           border: Border.all(color: MyCustomColors().kSecondaryColor2),
//           borderRadius: BorderRadius.circular(10),
//           color: currentIndex == selectedIndex
//               ? (isCorrectAnswer
//                   ? Colors.green // Change to your desired correct answer color
//                   : Colors.transparent) // Change to your desired wrong answer color
//               : MyCustomColors().kWhiteColor,
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.2),
//               blurRadius: 30,
//               offset: const Offset(0, 6),
//             ),
//           ],
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 20),
//               child: TextStyleHelper().mytext(
//                 answer,
//                 14,
//                 FontWeight.w700,
//                 currentIndex == selectedIndex
//                     ? MyCustomColors().kWhiteColor
//                     : MyCustomColors().kBlackColor,
//               ),
//             ),
//             if (currentIndex == selectedIndex)
//               isCorrectAnswer
//                   ? Icon(Icons.check, color: Colors.white) // Check icon for correct answer
//                   : Icon(Icons.close, color: Colors.white), // Cross icon for wrong answer
//           ],
//         ),
//       ),
//     );
//   }
// }

