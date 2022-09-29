import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masmasfod/scrrens/upload_preview.dart';
import 'package:masmasfod/utils/colors.dart';
import 'package:masmasfod/utils/images.dart';
import 'package:masmasfod/utils/styles.dart';

bool isDark = false;

class Upload_Photo_page extends StatefulWidget {
  const Upload_Photo_page({super.key});

  @override
  State<Upload_Photo_page> createState() => _Upload_Photo_pageState();
}

class _Upload_Photo_pageState extends State<Upload_Photo_page> {
  @override
  Widget build(BuildContext context) {
    isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
                  Navigator.pop(
                    context,
                  );
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
                height: 195.h,
              ),
              Center(
                child: InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Upload_Preview_page(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        colors: [
                          MyColors.C_53E88B,
                          MyColors.C_15BE77,
                        ],
                      ),
                    ),
                    height: 57,
                    width: 157,
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
    height: 129.h,
    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 86).r,
    decoration: BoxDecoration(
      color: isDark ? MyColors.C_F4F4F4.withOpacity(0.1) : MyColors.C_FFFFFF,
      boxShadow: [
        isDark
            ? BoxShadow()
            : BoxShadow(
                color: Colors.grey,
                offset: Offset(0, 0.4),
              ),
      ],
      borderRadius: BorderRadius.all(Radius.circular(20).r),
    ),
    child: Center(
      child: Container(
        height: 88.h,
        child: Image.asset(imageName),
      ),
    ),
  );
}
