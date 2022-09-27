import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masmasfod/scrrens/upload_photo_page.dart';
import 'package:masmasfod/utils/colors.dart';
import 'package:masmasfod/utils/images.dart';
import 'package:masmasfod/utils/styles.dart';

class Payment_Method_page extends StatefulWidget {
  const Payment_Method_page({super.key});

  @override
  State<Payment_Method_page> createState() => _Payment_Method_pageState();
}

class _Payment_Method_pageState extends State<Payment_Method_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.C_FEFEFF,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(MyImages.image_bg), fit: BoxFit.cover),
          ),
          padding: const EdgeInsets.only(top: 38, left: 20).r,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(15),
                onTap: () {
                  Navigator.pop(context);
                },
                child: SvgPicture.asset(
                  MyImages.icon_back,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5).r,
                child: Text(
                  "Payment Method",
                  style: Mystayles.BentonSansW400.copyWith(fontSize: 24),
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: const EdgeInsets.only(left: 5).r,
                child: Text(
                  "This data will be displayed in your account\nprofile for security",
                  style: Mystayles.BentonSansBookW400.copyWith(
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 20.r,
              ),
              buildButton(MyImages.paypal),
              SizedBox(
                height: 17.r,
              ),
              buildButton(MyImages.visa),
              SizedBox(
                height: 20.r,
              ),
              buildButton(MyImages.payoner),
              SizedBox(
                height: 219.r,
              ),
              Center(
                child: InkWell(
                  borderRadius: BorderRadius.circular(15).r,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Upload_Photo_page(),
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
    height: 73.h,
    padding: const EdgeInsets.symmetric(vertical: 23, horizontal: 86).r,
    decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, 0.4),
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(20))),
    child: Center(
      child: Container(
        height: 32.h,
        child: Image.asset(imageName),
      ),
    ),
  );
}
