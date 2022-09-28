import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masmasfod/scrrens/Home_page.dart';
import 'package:masmasfod/scrrens/call_ringing.dart';
import 'package:masmasfod/scrrens/onboard_1.dart';
import 'package:masmasfod/utils/colors.dart';
import 'package:masmasfod/utils/images.dart';
import 'package:masmasfod/utils/styles.dart';
import 'package:masmasfod/utils/gradient_text.dart';

class Onboarding_page extends StatefulWidget {
  const Onboarding_page({super.key});

  @override
  State<Onboarding_page> createState() => _Onboarding_pageState();
}

class _Onboarding_pageState extends State<Onboarding_page> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Onboarding_1_page(),
        ),
      ),
    );
  }

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
          padding: const EdgeInsets.only(top: 38, left: 20).r,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 150.h,
              ),
              buildButton(MyImages.board),
              SizedBox(
                height: 33.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5).r,
                child: Center(
                  child: GradientText(
                    'MasmasFood!',
                    style: Mystayles.BentonSansBookW500.copyWith(fontSize: 40),
                    gradient: const LinearGradient(
                        colors: [MyColors.C_53E88B, MyColors.C_15BE77]),
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: const EdgeInsets.only(left: 5).r,
                child: Center(
                  child: Text(
                    "Deliever Favorite Food",
                    style: Mystayles.BentonSansW600.copyWith(fontSize: 18),
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
    height: 182.h,
    child: Center(
      child: Container(
        width: 250.w,
        child: Image.asset(imageName),
      ),
    ),
  );
}
