import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSearchField extends StatefulWidget {
  CustomSearchField({
    super.key,
    required this.controller,
    required this.hintText,
    this.isDisabled = false,
    this.secureText = false,
    this.validator,
    this.onSaved,
  });
  TextEditingController controller;
  String hintText;
  bool isDisabled;
  bool secureText;
  final FormFieldValidator<String>? validator;
  final FormFieldSetter<String>? onSaved;

  @override
  State<CustomSearchField> createState() => _CustomSearchFieldState();
}

class _CustomSearchFieldState extends State<CustomSearchField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0x0d000000),
            offset: Offset(0, 1),
            blurRadius: 12.r,
            spreadRadius: 0,
          ),
        ],
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: TextFormField(
        enabled: widget.isDisabled ? false : true,
        obscureText: widget.secureText ? true : false,
        controller: widget.controller,
        style: GoogleFonts.dmSans(
          fontSize: 14.sp,
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
        decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: GoogleFonts.dmSans(
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              color: Color(0xffAFAFAF),
            ),
            prefixIcon: Container(
              height: 20.h,
              width: 20.w,
              padding: EdgeInsets.all(12.r),
              child: Image.asset(
                'assets/images/Search.png',
                color: const Color(0xffAFAFAF),
              ),
            ),
            suffixIcon: Container(
              height: 18.h,
              width: 18.w,
              padding: EdgeInsets.all(15.r),
              child: Image.asset(
                'assets/images/filter.png',
                color: const Color(0xff0A1828),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(
                Radius.circular(12.r),
              ),
            ),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(
                Radius.circular(12.r),
              ),
            )),
        validator: widget.validator,
        onSaved: widget.onSaved,
      ),
    );
  }
}

class ProfileTextField extends StatefulWidget {
  ProfileTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.isDisabled = false,
    this.secureText = false,
    this.validator,
    this.onSaved,
  });
  TextEditingController controller;
  String hintText;
  bool isDisabled;
  bool secureText;
  final FormFieldValidator<String>? validator;
  final FormFieldSetter<String>? onSaved;

  @override
  State<ProfileTextField> createState() => _ProfileTextFieldState();
}

class _ProfileTextFieldState extends State<ProfileTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: widget.isDisabled ? false : true,
      obscureText: widget.secureText ? true : false,
      controller: widget.controller,
      style: GoogleFonts.dmSans(
        fontSize: 14.sp,
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: GoogleFonts.dmSans(
          fontWeight: FontWeight.w500,
          fontSize: 14.sp,
          color: Color(0xffAFAFAF),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black.withOpacity(0.1)),
          borderRadius: BorderRadius.all(Radius.circular(12.r)),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black.withOpacity(0.1)),
          borderRadius: BorderRadius.all(Radius.circular(12.r)),
        ),
      ),
      validator: widget.validator,
      onSaved: widget.onSaved,
    );
  }
}

class SingleTextField extends StatefulWidget {
  SingleTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.isDisabled = false,
    this.secureText = false,
    this.validator,
    this.onSaved,
  });
  TextEditingController controller;
  String hintText;
  bool isDisabled;
  bool secureText;
  final FormFieldValidator<String>? validator;
  final FormFieldSetter<String>? onSaved;

  @override
  State<SingleTextField> createState() => _SingleTextFieldState();
}

class _SingleTextFieldState extends State<SingleTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: widget.isDisabled ? false : true,
      obscureText: widget.secureText ? true : false,
      controller: widget.controller,
      style: GoogleFonts.dmSans(
        fontSize: 14.sp,
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: GoogleFonts.dmSans(
          fontWeight: FontWeight.w500,
          fontSize: 14.sp,
          color: Color(0xffAFAFAF),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black.withOpacity(0.1)),
          borderRadius: BorderRadius.all(Radius.circular(12.r)),
        ),
        // contentPadding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black.withOpacity(0.1)),
          borderRadius: BorderRadius.all(Radius.circular(12.r)),
        ),
      ),
      validator: widget.validator,
      onSaved: widget.onSaved,
    );
  }
}

class kBigButton extends StatelessWidget {
  const kBigButton({
    super.key,
    this.onPressed,
    this.text,
    this.color,
  });

  final VoidCallback? onPressed;
  final String? text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width - 40.w,
      height: 56.h,
      child: ElevatedButton(
        style: ButtonStyle(
          fixedSize: MaterialStatePropertyAll<Size>(
            Size(Get.width, 56.h),
          ),
          backgroundColor:
              MaterialStateProperty.all<Color>(color ?? Color(0xff064DAE)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
          ),
        ),
        onPressed: onPressed,
        // () {
        //   if (_formKey.currentState!.validate()) {
        //     _formKey.currentState!.save();
        //   }
        // },
        child: Text(
          text ?? '',
          style: GoogleFonts.dmSans(
            fontWeight: FontWeight.w700,
            fontSize: 16.sp,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class CustomMessageField extends StatefulWidget {
  CustomMessageField({
    super.key,
    required this.controller,
    required this.hintText,
    this.isDisabled = false,
    this.secureText = false,
    this.validator,
    this.onSaved,
  });
  TextEditingController controller;
  String hintText;
  bool isDisabled;
  bool secureText;
  final FormFieldValidator<String>? validator;
  final FormFieldSetter<String>? onSaved;

  @override
  State<CustomMessageField> createState() => _CustomMessageFieldState();
}

class _CustomMessageFieldState extends State<CustomMessageField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      minLines: 4,
      maxLines: 6,
      enabled: widget.isDisabled ? false : true,
      obscureText: widget.secureText ? true : false,
      controller: widget.controller,
      style: GoogleFonts.dmSans(
        fontSize: 14.sp,
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: GoogleFonts.dmSans(
          fontWeight: FontWeight.w500,
          fontSize: 14.sp,
          color: Color(0xffAFAFAF),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black.withOpacity(0.1)),
          borderRadius: BorderRadius.all(Radius.circular(12.r)),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black.withOpacity(0.1)),
          borderRadius: BorderRadius.all(Radius.circular(12.r)),
        ),
      ),
      validator: widget.validator,
      onSaved: widget.onSaved,
    );
  }
}
