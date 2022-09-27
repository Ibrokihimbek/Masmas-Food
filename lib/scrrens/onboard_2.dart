import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masmasfod/scrrens/call_ringing.dart';
import 'package:masmasfod/scrrens/sign_up_page.dart';
import 'package:masmasfod/utils/colors.dart';
import 'package:masmasfod/utils/images.dart';
import 'package:masmasfod/utils/styles.dart';
import 'package:masmasfod/utils/gradient_text.dart';

class Onboarding_2_page extends StatefulWidget {
  const Onboarding_2_page({super.key});

  @override
  State<Onboarding_2_page> createState() => _Onboarding_2_pageState();
}

class _Onboarding_2_pageState extends State<Onboarding_2_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.C_FEFEFF,
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildButton(MyImages.burger_2),
              Padding(
                padding: const EdgeInsets.only(top: 38, left: 10).r,
                child: Center(
                    child: Text(
                  '''Food Ninja is Where Your 
      Comfort Food Lives''',
                  style: Mystayles.BentonSansW600.copyWith(fontSize: 28),
                )),
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: const EdgeInsets.only(left: 5).r,
                child: Center(
                  child: Text(
                    '''Enjoy a fast and smooth food delivery 
                    at your doorstep''',
                    style: Mystayles.BentonSansW400.copyWith(fontSize: 18),
                  ),
                ),
              ),
              SizedBox(
                height: 42.r,
              ),
              Center(
                child: InkWell(
                  borderRadius: BorderRadius.circular(15).r,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Sign_Up_Page(),
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
    height: 470.h,
    width: 500,
    child: Center(
      child: Container(
        width: 480.w,
        child: Image.asset(imageName),
      ),
    ),
  );
}
