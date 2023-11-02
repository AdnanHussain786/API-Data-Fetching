// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final Color textColor;
  final Color backgroundColor;
  final Color borderColor;
  Color? shadowColor;
  final String text;
  double? textSize;
  final VoidCallback onClick;
  IconData? iconData;
  double? iconSize;
  Color iconColor;
  double borderWidth;
  double height;
  double width;
  double radius;
  bool isIcon;
  final bool loading;

  RoundButton(
      {Key? key,
      required this.text,
      this.textSize = 16,
      required this.textColor,
      required this.backgroundColor,
      required this.borderColor,
      this.borderWidth = 1.0,
      this.shadowColor,
      this.iconData,
      this.iconSize = 16,
      this.iconColor = Colors.white,
      required this.height,
      required this.width,
      required this.radius,
      required this.onClick,
      this.loading = false,
      this.isIcon = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        return onClick();
      },
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.pink.withOpacity(0.2),
                blurRadius: 40,
                offset: const Offset(0, 10),
              )
            ],
            color: backgroundColor,
            borderRadius: BorderRadius.circular(radius),
            border: Border.all(
              color: borderColor,
              width: borderWidth,
            )),
        child: Center(
          child: loading
              ? const CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 3,
                )
              : Text(text,
                  style: TextStyle(
                      color: textColor,
                      fontSize: textSize,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700)),
        ),
      ),
    );
  }
}
