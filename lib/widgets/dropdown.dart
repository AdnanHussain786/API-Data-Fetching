import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDropDown extends StatefulWidget {
  final List<String> dropdownItems;
  final String hint;
  final bool defaultStyle;
  final Function(String)? onChanged;

  const MyDropDown({
    Key? key,
    required this.dropdownItems,
    required this.hint,
    this.defaultStyle = true,
    this.onChanged,
  }) : super(key: key);

  @override
  State<MyDropDown> createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  String selectedValue = '';
  List<DropdownMenuItem<String>> dropdownItems = [];
  @override
  void initState() {
    super.initState();
    selectedValue = widget.hint;
    dropdownItems = widget.dropdownItems
        .where((item) => item != widget.hint)
        .map(
          (item) => DropdownMenuItem(
            value: item,
            child: Text(item,
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                  color: const Color(0xff3B3B3B),
                )),
          ),
        )
        .toList();
    dropdownItems.insert(
      0,
      DropdownMenuItem(
        value: widget.hint,
        child: Text(widget.hint,
            style: GoogleFonts.dmSans(
              fontWeight: FontWeight.w500,
              fontSize: 12.sp,
              color: const Color(0xff3B3B3B),
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55.h,
      child: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
        ),
        child: DropdownButtonFormField<String>(
          // isDense: true,
          isExpanded: true,
          dropdownColor: Colors.white,
          icon: Icon(
            Icons.keyboard_arrow_down_outlined,
            color: Colors.black,
            size: 1.sp,
          ),
          decoration: InputDecoration(
              suffixIcon: Container(
                  height: 20.h,
                  width: 20.w,
                  padding: const EdgeInsets.all(17),
                  child: SvgPicture.asset(
                    'assets/icons/arrow_down.svg',
                    width: 10.w,
                    height: 5.h,
                    colorFilter:
                        const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                  )),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black.withOpacity(0.5),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(12.r),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Colors.black.withOpacity(0.5), width: 1),
                borderRadius: BorderRadius.circular(12.r),
                //       ),
              )),
          hint: Text(
            widget.hint,
            style: GoogleFonts.dmSans(
              fontWeight: FontWeight.w500,
              fontSize: 12.sp,
              color: const Color(0xff3B3B3B),
            ),
          ),
          items: dropdownItems,
          value: selectedValue,
          onChanged: (_) {
            setState(() {
              selectedValue = _!;
              widget.onChanged!(_!);
            });
          },
        ),
      ),
    );
  }
}
