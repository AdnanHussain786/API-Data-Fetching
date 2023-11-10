import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import the package
import 'package:quizapp/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyleHelper {
  final ValueNotifier<bool> _obscurePassword = ValueNotifier<bool>(true);

  TextStyle myTextStyle(double fontSize, var fontWeight, var color) {
    return TextStyle(
      fontSize: fontSize.sp, // Use sp for font size
      fontWeight: fontWeight,
      color: color,
    );
  }

  Container myTextButton(String title) {
    return Container(
      height: 42.h, // Use h for height
      width: 80.w, // Use w for width
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.w), // Use w for border radius
        border: Border.all(color: Colors.grey),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 12.sp, // Use sp for font size
            fontFamily: 'Poppins',
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Text mytext(
      String title, double fontSize, FontWeight fontWeight, Color color) {
    return Text(
      title,
      style: GoogleFonts.dmSans(
        fontSize: fontSize.sp, // Use sp for font size
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }

  Row mutipleColorTextRow(
    String text1,
    var color1,
    double size1,
    String text2,
    var color2,
    double size2,
    VoidCallback onclick,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.topRight,
          margin: EdgeInsets.only(right: 5.w), // Use w for margin
          child: mytext(text1, size1, FontWeight.w900, color1),
        ),
        InkWell(
          onTap: () {
            return onclick();
          },
          child: Container(
            child: mytext(text2, size2, FontWeight.w900, color2),
          ),
        ),
      ],
    );
  }

  Container mInputFields(
    final ctrl,
    bool obscureText,
    var keyType,
    String returnMessage,
    String labelText,
    Color mainColor,
    String hintText, // Add hintText parameter
    double width,
    double height,
    double marginLeft,
    double marginRight,
    double marginTop,
  ) {
    return Container(
      width: width.w, // Use w for width
      height: height.h, // Use h for height
      margin: EdgeInsets.only(
        left: marginLeft.w, // Use w for margin
        right: marginRight.w, // Use w for margin
        top: marginTop.h, // Use h for margin
      ),
      child: TextFormField(
        obscureText: obscureText,
        controller: ctrl,
        cursorColor: MyCustomColors().kBlackColor,
        keyboardType: keyType,
        validator: (value) {
          if (value!.isEmpty) {
            return returnMessage;
          }
          return null;
        },
        decoration: InputDecoration(
            hintText: hintText, // Add hint text
            focusedBorder: OutlineInputBorder(
              borderRadius:
                  BorderRadius.circular(10.w), // Use w for border radius
              borderSide: BorderSide(color: MyCustomColors().kSecondaryColor),
            ),
            border: OutlineInputBorder(
              borderRadius:
                  BorderRadius.circular(10.w), // Use w for border radius
            ),
            contentPadding: const EdgeInsets.all(10).r),
      ),
    );
  }

  Container mInputFields2(
    final ctrl,
    var keyType,
    String returnMessage,
    String hintText,
    String iconPath,
    double width,
    double height,
    double marginLeft,
    double marginRight,
    double marginTop,
  ) {
    return Container(
      width: width.w, // Use w for width
      height: height.h, // Use h for height
      margin: EdgeInsets.only(
        left: marginLeft.w, // Use w for margin
        right: marginRight.w, // Use w for margin
        top: marginTop.h, // Use h for margin
      ),
      child: TextFormField(
        controller: ctrl,
        keyboardType: keyType,
        validator: (value) {
          if (value!.isEmpty) {
            return returnMessage;
          }
          return null;
        },
        decoration: InputDecoration(
          hintText: hintText,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MyCustomColors().kBlackColor),
          ),
          prefixIcon: SizedBox(
            width: 15.w, // Use w for width
            height: 15.h, // Use h for height
            child: Image.asset(iconPath),
          ),
          prefixIconColor: Colors.black,
          hintStyle: TextStyle(
            fontSize: 12.sp, // Use sp for font size
          ),
          border: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(25.w), // Use w for border radius
          ),
        ),
      ),
    );
  }

  Container mInputFieldsWithSuffix(
    final ctrl,
    String returnMessage,
    String labelText,
    Color mainColor,
    String hintText,
    String iconPath,
    String suffixPath,
    double width,
    double height,
    double marginLeft,
    double marginRight,
    double marginTop,
    final VoidCallback callback,
  ) {
    return Container(
      width: width.w, // Use w for width
      height: height.h, // Use h for height
      margin: EdgeInsets.only(
        left: marginLeft.w, // Use w for margin
        right: marginRight.w, // Use w for margin
        top: marginTop.h, // Use h for margin
      ),
      child: ValueListenableBuilder(
        valueListenable: _obscurePassword,
        builder: (context, value, child) {
          return TextFormField(
            controller: ctrl,
            obscureText: _obscurePassword.value,
            obscuringCharacter: '*',
            validator: (value) {
              if (value!.isEmpty) {
                return returnMessage;
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: labelText,
              labelStyle: TextStyle(color: mainColor),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyCustomColors().kBlackColor),
              ),
              prefixIcon: SizedBox(
                width: 15.w, // Use w for width
                height: 15.h, // Use h for height
                child: Image.asset(iconPath),
              ),
              prefixIconColor: mainColor,
              suffixIcon: InkWell(
                onTap: () {
                  callback;
                },
                child: Icon(
                  (_obscurePassword.value
                      ? Icons.visibility_off
                      : Icons.visibility),
                ),
              ),
              suffixIconColor: Colors.black,
              hintStyle: TextStyle(
                fontSize: 12.sp, // Use sp for font size
              ),
              border: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(25.w), // Use w for border radius
              ),
            ),
          );
        },
      ),
    );
  }

  Container socialIconsCard(String imagePath) {
    return Container(
      width: 50.w, // Use w for width
      height: 50.h, // Use h for height
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.w), // Use w for border radius
        border: Border.all(
          color: Colors.grey.shade300,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.w), // Use w for padding
        child: Image.asset(imagePath),
      ),
    );
  }

  Container subscriptionBox(
    double width,
    String headText,
    String mainText,
    String subText,
    String imagePath,
    var activeColor,
    var activeBorderColor,
  ) {
    return Container(
      width: width.w, // Use w for width
      decoration: BoxDecoration(
        color: activeColor,
        borderRadius: BorderRadius.circular(10.w), // Use w for border radius
        border: Border.all(
          color: activeBorderColor,
          width: 2.0,
        ),
      ),
      padding: EdgeInsets.all(10.w), // Use w for padding
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      alignment: AlignmentDirectional.topStart,
                      margin: EdgeInsets.only(left: 20.w), // Use w for margin
                      child: mytext(headText, 14, FontWeight.w500,
                          MyCustomColors().kBlackColor),
                    ),
                    SizedBox(
                      height: 10.h, // Use h for height
                    ),
                    Container(
                      alignment: AlignmentDirectional.topStart,
                      margin: EdgeInsets.only(left: 20.w), // Use w for margin
                      child: mytext(mainText, 24, FontWeight.w800,
                          MyCustomColors().kBlackColor),
                    ),
                    SizedBox(
                      height: 5.h, // Use h for height
                    ),
                    Container(
                      alignment: AlignmentDirectional.topStart,
                      margin: EdgeInsets.only(left: 20.w), // Use w for margin
                      child: mytext(subText, 18, FontWeight.w600,
                          MyCustomColors().kBlackColor),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  height: 80.h, // Use h for height
                  alignment: AlignmentDirectional.topEnd,
                  margin: EdgeInsets.only(left: 20.w), // Use w for margin
                  child: Image.asset('assets/images/ic_subscription.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
