import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masmasfod/utils/colors.dart';
import 'package:masmasfod/utils/images.dart';
import 'package:masmasfod/utils/styles.dart';

class Edit_Payments_page extends StatelessWidget {
  const Edit_Payments_page({super.key});

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
                borderRadius: BorderRadius.circular(20),
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
                  "Payment",
                  style: Mystayles.BentonSansW700.copyWith(fontSize: 25),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 17.h,
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 73.h,
                width: 340.w,
                padding:
                    const EdgeInsets.symmetric(vertical: 22, horizontal: 24).r,
                decoration: BoxDecoration(
                  color: MyColors.C_FFFFFF,
                  boxShadow: [
                    BoxShadow(
                      color: MyColors.C_53E88B.withOpacity(0.1),
                      blurRadius: 10,
                    )
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(20).r,
                  ),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Container(
                        height: 23.h,
                        width: 86.w,
                        child: Image.asset(MyImages.paypal),
                      ),
                      SizedBox(
                        width: 50.w,
                      ),
                      Container(
                        child: Text(
                          "2121 6352 8465 ****",
                          style:
                              Mystayles.BentonSansW400.copyWith(fontSize: 14),
                        ),
                        width: 144.w,
                        height: 20.h,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 73.h,
                width: 340.w,
                padding:
                    const EdgeInsets.symmetric(vertical: 22, horizontal: 24).r,
                decoration: BoxDecoration(
                  color: MyColors.C_F6F6F6,
                  boxShadow: [
                    BoxShadow(
                      color: MyColors.C_53E88B.withOpacity(0.1),
                      blurRadius: 10,
                    )
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(20).r,
                  ),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Container(
                        height: 23.h,
                        width: 86.w,
                        child: Image.asset(MyImages.visa),
                      ),
                      SizedBox(
                        width: 50.w,
                      ),
                      Container(
                        child: Text(
                          "2121 6352 8465 ****",
                          style:
                              Mystayles.BentonSansW100.copyWith(fontSize: 14),
                        ),
                        width: 144.w,
                        height: 20.h,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 73.h,
                width: 340.w,
                padding:
                    const EdgeInsets.symmetric(vertical: 22, horizontal: 24).r,
                decoration: BoxDecoration(
                  color: MyColors.C_F6F6F6,
                  boxShadow: [
                    BoxShadow(
                      color: MyColors.C_53E88B.withOpacity(0.1),
                      blurRadius: 10,
                    )
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(20).r,
                  ),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Container(
                        height: 23.h,
                        width: 86.w,
                        child: Image.asset(MyImages.payoner),
                      ),
                      SizedBox(
                        width: 50.w,
                      ),
                      Container(
                        child: Text(
                          "2121 6352 8465 ****",
                          style:
                              Mystayles.BentonSansW100.copyWith(fontSize: 14),
                        ),
                        width: 144.w,
                        height: 20.h,
                      ),
                    ],
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
