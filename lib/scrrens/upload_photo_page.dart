import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masmasfod/utils/colors.dart';
import 'package:masmasfod/utils/images.dart';
import 'package:masmasfod/utils/styles.dart';

class Upload_Photo_page extends StatelessWidget {
  const Upload_Photo_page({super.key});

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
                onTap: () {},
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
                  "Upload Your Photo Profile",
                  style: Mystayles.BentonSansW400.copyWith(fontSize: 25.sp),
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: const EdgeInsets.only(left: 5).r,
                child: Text(
                  "This data will be displayed in your\naccount profile for security",
                  style: Mystayles.BentonSansBookW400.copyWith(
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              buildButton(MyImages.gallery),
              SizedBox(
                height: 17.h,
              ),
              buildButton(MyImages.camera),
              SizedBox(
                height: 20.h,
              ),
              buildNextButton(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildButton(String imageName) {
  return Container(
    height: 129.h,
    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 86).r,
    decoration:  BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          offset: Offset(0, 0.4),
        ),
      ],
      borderRadius: BorderRadius.all(
        Radius.circular(20).r
      ),
    ),
    child: Center(
      child: Container(
        height: 88.h,
        child: Image.asset(imageName),
      ),
    ),
  );
}

Widget buildNextButton() {
  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Center(
          child: Container(
            height: 57.h,
            width: 157.w,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                gradient: LinearGradient(
                  colors: [
                    MyColors.C_53E88B,
                    MyColors.C_15BE77,
                  ],
                )),
            child: Center(
              child: Text(
                "Next",
                style: Mystayles.BentonSansW400.copyWith(
                    fontSize: 16, color: MyColors.C_FFFFFF),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 60.h,
        )
      ],
    ),
  );
}
