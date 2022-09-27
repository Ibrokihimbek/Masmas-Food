import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masmasfod/scrrens/sibgnup_succes_notification.dart';
import 'package:masmasfod/utils/colors.dart';
import 'package:masmasfod/utils/images.dart';
import 'package:masmasfod/utils/styles.dart';

class set_location_page extends StatefulWidget {
  const set_location_page({super.key});

  @override
  State<set_location_page> createState() => _set_location_pageState();
}

class _set_location_pageState extends State<set_location_page> {
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
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  "Set Your Location ",
                  style: Mystayles.BentonSansW400.copyWith(fontSize: 25),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  "This data will be displayed in your\naccount profile for security",
                  style: Mystayles.BentonSansBookW400.copyWith(
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              buildButton(MyImages.pin_logo),
              SizedBox(
                height: 318.h,
              ),
              Center(
                child: InkWell(
                  borderRadius: BorderRadius.circular(15).r,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Signup_succes_notification_page(),
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
    height: 147.h,
    width: 370.w,
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    decoration: BoxDecoration(
      color: MyColors.C_FFFFFF,
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          offset: Offset(0, 0.4),
        ),
      ],
      borderRadius: BorderRadius.all(
        Radius.circular(20).r,
      ),
    ),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 33.w,
                height: 33.h,
                child: SvgPicture.asset(imageName),
              ),
              SizedBox(
                width: 14.w,
              ),
              Text(
                "Your Location",
                style: Mystayles.BentonSansBookW400.copyWith(fontSize: 15),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 27.h,
              ),
              Container(
                child: Center(
                  child: Text(
                    "Set Location",
                    style: Mystayles.RubikW500.copyWith(fontSize: 14),
                  ),
                ),
                decoration: BoxDecoration(
                  color: MyColors.C_F6F6F6,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15).r,
                  ),
                ),
                height: 57.h,
                width: 400.w,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
