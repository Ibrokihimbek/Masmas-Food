import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masmasfod/scrrens/call_ringing.dart';
import 'package:masmasfod/scrrens/onboard_2.dart';
import 'package:masmasfod/utils/colors.dart';
import 'package:masmasfod/utils/images.dart';
import 'package:masmasfod/utils/styles.dart';
import 'package:masmasfod/utils/gradient_text.dart';

class Onboarding_1_page extends StatefulWidget {
  const Onboarding_1_page({super.key});

  @override
  State<Onboarding_1_page> createState() => _Onboarding_1_pageState();
}

class _Onboarding_1_pageState extends State<Onboarding_1_page> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildButton(
                isDark ? MyImages.burger_dark : MyImages.burger,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 38, left: 10).r,
                child: Center(
                    child: Text(
                  '''Find your Comfort
        Food here''',
                  style: Mystayles.BentonSansW700.copyWith(fontSize: 28),
                )),
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: const EdgeInsets.only(left: 5).r,
                child: Center(
                  child: Text(
                    '''Here You Can find a chef or dish for every 
                    taste and color. Enjoy!''',
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
                        builder: (context) => Onboarding_2_page(),
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
