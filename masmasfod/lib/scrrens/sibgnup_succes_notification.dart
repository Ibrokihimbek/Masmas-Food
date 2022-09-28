import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masmasfod/scrrens/Home_page.dart';
import 'package:masmasfod/scrrens/call_ringing.dart';
import 'package:masmasfod/utils/colors.dart';
import 'package:masmasfod/utils/images.dart';
import 'package:masmasfod/utils/styles.dart';
import 'package:masmasfod/utils/gradient_text.dart';

class Signup_succes_notification_page extends StatefulWidget {
  const Signup_succes_notification_page({super.key});

  @override
  State<Signup_succes_notification_page> createState() => _Signup_succes_notification_pageState();
}

class _Signup_succes_notification_pageState extends State<Signup_succes_notification_page> {
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
              buildButton(MyImages.illustration),
              SizedBox(
                height: 33.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5).r,
                child: Center(
                  child: GradientText(
                    'Congrats!',
                    style: Mystayles.BentonSansW700.copyWith(fontSize: 30),
                    gradient: const LinearGradient(
                        colors: [MyColors.C_53E88B, MyColors.C_15BE77]),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: const EdgeInsets.only(left: 5).r,
                child: Center(
                  child: Text(
                    "Your Profile Is Ready To Use",
                    style: Mystayles.BentonSansW400.copyWith(fontSize: 23),
                  ),
                ),
              ),
              SizedBox(
                height: 192.r,
              ),
              Center(
                child: InkWell(
                  borderRadius: BorderRadius.circular(15).r,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home_Page(),
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

