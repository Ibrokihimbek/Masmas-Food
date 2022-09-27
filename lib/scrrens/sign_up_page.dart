import 'dart:convert';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masmasfod/scrrens/call_ringing.dart';
import 'package:masmasfod/scrrens/sign_in_page.dart';
import 'package:masmasfod/utils/colors.dart';
import 'package:masmasfod/utils/images.dart';
import 'package:masmasfod/utils/styles.dart';
import 'package:masmasfod/utils/gradient_text.dart';

class Sign_Up_Page extends StatefulWidget {
  const Sign_Up_Page({super.key});

  @override
  State<Sign_Up_Page> createState() => _Sign_Up_PageState();
}

class _Sign_Up_PageState extends State<Sign_Up_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.C_FEFEFF,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(MyImages.image_bg2), fit: BoxFit.cover),
          ),
          // padding: const EdgeInsets.only(top: 38, left: 20).r,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30.h,
              ),
              buildButton(MyImages.board),
              Padding(
                padding: const EdgeInsets.only(left: 5).r,
                child: Center(
                  child: GradientText(
                    'MasmasFood!',
                    style: Mystayles.BentonSansW700.copyWith(fontSize: 40),
                    gradient: const LinearGradient(
                        colors: [MyColors.C_53E88B, MyColors.C_15BE77]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5).r,
                child: Center(
                  child: Text(
                    "Deliever Favorite Food",
                    style: Mystayles.BentonSansW400.copyWith(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 30.r,
              ),
              Center(
                child: Text(
                  "Login To Your Account",
                  style: Mystayles.BentonSansW600.copyWith(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 50.r,
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.only(left: 20, top: 15).r,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                        blurRadius: 10,
                      )
                    ],
                    color: MyColors.C_FFFFFF,
                  ),
                  width: 330.w,
                  height: 57.h,
                  child: Text(
                    'Email',
                    style: Mystayles.BentonSansW200.copyWith(fontSize: 14),
                  ),
                ),
              ),
              SizedBox(
                height: 10.r,
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.only(left: 20, top: 15).r,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                        blurRadius: 10,
                      )
                    ],
                    color: MyColors.C_FFFFFF,
                  ),
                  width: 330.w,
                  height: 50.h,
                  child: Text(
                    'Password',
                    style: Mystayles.BentonSansW200.copyWith(fontSize: 14),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: Text(
                  "Or Continue With",
                  style: Mystayles.BentonSansW400.copyWith(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 23.h,
                  ),
                  Align(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color:
                                Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                            blurRadius: 10,
                          )
                        ],
                        color: MyColors.C_FFFFFF,
                      ),
                      width: 152.w,
                      height: 57.h,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 18.w,
                          ),
                          Container(
                            child: SvgPicture.asset(MyImages.facebook),
                            width: 25.w,
                            height: 25.h,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Facebook",
                            style: Mystayles.BentonSansBookW300.copyWith(
                                fontSize: 14),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 23.h,
                  ),
                  Align(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color:
                                Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                            blurRadius: 10,
                          )
                        ],
                        color: MyColors.C_FFFFFF,
                      ),
                      width: 152.w,
                      height: 50.h,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 18.w,
                          ),
                          Container(
                            child: SvgPicture.asset(MyImages.google),
                            width: 24.w,
                            height: 24.h,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Google",
                            style: Mystayles.BentonSansBookW300.copyWith(
                                fontSize: 14),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: GradientText(
                  'Forgot Your Password?',
                  style: Mystayles.BentonSansW700.copyWith(fontSize: 12),
                  gradient: const LinearGradient(
                      colors: [MyColors.C_53E88B, MyColors.C_15BE77]),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Center(
                child: InkWell(
                  borderRadius: BorderRadius.circular(15).r,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Sign_In_Page(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: const LinearGradient(
                        colors: [
                          MyColors.C_53E88B,
                          MyColors.C_15BE77,
                        ],
                      ),
                    ),
                    height: 57.h,
                    width: 157.w,
                    child: Center(
                      child: Text(
                        "Next",
                        style: Mystayles.BentonSansW400.copyWith(
                            fontSize: 16, color: MyColors.C_FFFFFF),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildButton(String imageName) {
  return Container(
    height: 162.h,
    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 86).r,
    child: Center(
      child: Container(
        width: 172.w,
        child: Image.asset(imageName),
      ),
    ),
  );
}
