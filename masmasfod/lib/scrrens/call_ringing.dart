import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masmasfod/scrrens/payment.dart';
import 'package:masmasfod/scrrens/payment_method_page.dart';
import 'package:masmasfod/utils/colors.dart';
import 'package:masmasfod/utils/images.dart';
import 'package:masmasfod/utils/styles.dart';
import 'package:masmasfod/utils/gradient_text.dart';

class Call_Ringing_page extends StatefulWidget {
  const Call_Ringing_page({super.key});

  @override
  State<Call_Ringing_page> createState() => _Call_Ringing_pageState();
}

String ring = 'Ringing . . .';
bool isMuted = false;
Image image = Image.asset(
  MyImages.speaker_icon,
  width: 78.w,
  height: 70.h,
);

class _Call_Ringing_pageState extends State<Call_Ringing_page> {
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
              buildButton(MyImages.user_image),
              SizedBox(
                height: 59.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5).r,
                child: Center(
                  child: Text(
                    "Richard Lewis",
                    style: Mystayles.BentonSansW700.copyWith(fontSize: 25),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: const EdgeInsets.only(left: 5).r,
                child: Center(
                  child: Text(
                    ring,
                    style: Mystayles.BentonSansW100.copyWith(fontSize: 19),
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 160,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 65.w,
                      ),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            isMuted = !isMuted;
                            if (isMuted) {
                              setState(() {
                                ring = "15.23 Min";
                                image = Image.asset(
                                  MyImages.mute,
                                  width: 78.w,
                                  height: 70.h,
                                );
                              });
                            } else {
                              setState(() {
                                ring = "Ringing . . .";
                                image = Image.asset(
                                  MyImages.speaker_icon,
                                  width: 78.w,
                                  height: 70.h,
                                );
                              });
                            }
                          },
                          child: image,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: MyColors.C_FFFFFF,
                            shape: CircleBorder(),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Image.asset(
                          MyImages.close,
                          width: 78.w,
                          height: 70.h,
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: MyColors.C_FFFFFF,
                          shape: CircleBorder(),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 70.h,
                  )
                ],
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
