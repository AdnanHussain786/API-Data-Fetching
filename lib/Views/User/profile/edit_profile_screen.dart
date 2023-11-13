import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/constants/constants.dart';

class EditProfileScreen extends StatefulWidget {
  EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  TextEditingController name = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SizedBox(
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.chevron_left,
                      color: Color(0xff0A1828),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    'Edit Profile',
                    style: GoogleFonts.montserrat(
                        color: const Color(0xff0A1828),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 50.w,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 50.r,
                        backgroundColor: Color(0xffF5F4F8),
                        backgroundImage: const NetworkImage(
                            'https://images.unsplash.com/photo-1699746277651-3b1438122eaa?q=80&w=1956&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: GestureDetector(
                          onTap: () {
                            // Get.to(() => EditProfileScreen());
                          },
                          child: CircleAvatar(
                            radius: 15.r,
                            backgroundColor: Colors.black,
                            child: SvgPicture.asset(
                              'assets/icons/camera.svg',
                              height: 15.h,
                              width: 15.w,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(children: [
                Text(
                  'Full Name',
                  style: GoogleFonts.dmSans(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff0D0D0D),
                  ),
                ),
              ]),
              SizedBox(
                height: 10.h,
              ),
              ProfileTextField(controller: name, hintText: 'Enter your name'),
              SizedBox(
                height: 20.h,
              ),
              Row(children: [
                Text(
                  'Email',
                  style: GoogleFonts.dmSans(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff0D0D0D),
                  ),
                ),
              ]),
              SizedBox(
                height: 10.h,
              ),
              ProfileTextField(controller: email, hintText: 'Enter your email'),
              SizedBox(
                height: 20.h,
              ),
              Row(children: [
                Text(
                  'Password',
                  style: GoogleFonts.dmSans(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff0D0D0D),
                  ),
                ),
              ]),
              SizedBox(
                height: 10.h,
              ),
              ProfileTextField(
                controller: password,
                hintText: 'At least 8 characters',
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(children: [
                Text(
                  'Confirm Password',
                  style: GoogleFonts.dmSans(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff0D0D0D),
                  ),
                ),
              ]),
              SizedBox(
                height: 10.h,
              ),
              ProfileTextField(
                controller: confirmPassword,
                hintText: 'Must match the password',
              ),
              SizedBox(
                height: 30.h,
              ),
              kBigButton(
                onPressed: () {},
                text: 'Update',
              ),
              SizedBox(
                height: 20.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
