import 'dart:convert';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masmasfod/scrrens/call_ringing.dart';
import 'package:masmasfod/scrrens/payment_method_page.dart';
import 'package:masmasfod/utils/colors.dart';
import 'package:masmasfod/utils/images.dart';
import 'package:masmasfod/utils/styles.dart';
import 'package:masmasfod/utils/gradient_text.dart';

class Sign_In_Page extends StatefulWidget {
  const Sign_In_Page({super.key});

  @override
  State<Sign_In_Page> createState() => _Sign_In_PageState();
}

class _Sign_In_PageState extends State<Sign_In_Page> {
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
                  "Sign Up For Free ",
                  style: Mystayles.BentonSansW600.copyWith(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 40.r,
              ),
              Column(
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
                      width: 325.w,
                      height: 57.h,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 18.w,
                          ),
                          Container(
                            child: Image.asset(MyImages.person),
                            width: 25.w,
                            height: 25.h,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            "Anamwp . . |",
                            style: Mystayles.BentonSansBookW300.copyWith(
                                fontSize: 14),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
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
                      width: 325.w,
                      height: 57.h,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 18.w,
                          ),
                          Container(
                            child: Image.asset(MyImages.email),
                            width: 24.w,
                            height: 24.h,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            "Email",
                            style: Mystayles.BentonSansBookW300.copyWith(
                                fontSize: 14),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
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
                      width: 325.w,
                      height: 57.h,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 18.w,
                          ),
                          Container(
                            child: Image.asset(MyImages.block),
                            width: 24.w,
                            height: 24.h,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            "Password",
                            style: Mystayles.BentonSansBookW300.copyWith(
                                fontSize: 14),
                          ),
                          SizedBox(
                            width: 165.w,
                          ),
                          Container(
                            child: Image.asset(MyImages.eye),
                            width: 24.w,
                            height: 24.w,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 25.w,
                      ),
                      Container(
                        child: Image.asset(MyImages.galochka),
                        width: 30,
                        height: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Keep Me Signed In",
                        style: Mystayles.BentonSansW300.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 25.w,
                      ),
                      Container(
                        child: Image.asset(MyImages.galochka),
                        width: 30,
                        height: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Email Me About Special Pricing",
                        style: Mystayles.BentonSansW300.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 43.h,
              ),
              Center(
                child: InkWell(
                  borderRadius: BorderRadius.circular(15).r,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Payment_Method_page(),
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
              SizedBox(
                height: 20,
              ),
              Center(
                child: GradientText(
                  'already have an account?',
                  style: Mystayles.BentonSansW700.copyWith(fontSize: 14),
                  gradient: const LinearGradient(
                      colors: [MyColors.C_53E88B, MyColors.C_15BE77]),
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
