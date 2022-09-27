import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masmasfod/utils/colors.dart';
import 'package:masmasfod/utils/images.dart';
import 'package:masmasfod/utils/gradient_text.dart';
import 'package:masmasfod/utils/styles.dart';

class Edit_Location_1_page extends StatefulWidget {
  const Edit_Location_1_page({super.key});

  @override
  State<Edit_Location_1_page> createState() => _Edit_Location_1_pageState();
}

class _Edit_Location_1_pageState extends State<Edit_Location_1_page> {
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
                  "Shipping",
                  style: Mystayles.BentonSansW700.copyWith(fontSize: 25),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 130.h,
                width: 340.w,
                padding:
                    const EdgeInsets.symmetric(vertical: 22, horizontal: 0).r,
                decoration: BoxDecoration(
                  color: MyColors.C_FFFFFF,
                  boxShadow: [
                    BoxShadow(
                      color: MyColors.C_53E88B.withOpacity(0.1),
                      blurRadius: 40,
                    )
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(20).r,
                  ),
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 20).r,
                        child: Text(
                          "Order Location",
                          style:
                              Mystayles.BentonSansW100.copyWith(fontSize: 14),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 33.h,
                            width: 66.r,
                            child: SvgPicture.asset(MyImages.pin_logo),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Container(
                            child: Text(
                              "8502 Preston Rd. Inglewood,\nMaine 98380",
                              style: Mystayles.BentonSansW600.copyWith(
                                  fontSize: 15),
                            ),
                            width: 260.w,
                            height: 40.h,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 170.h,
                width: 340.w,
                padding:
                    const EdgeInsets.symmetric(vertical: 22, horizontal: 0).r,
                decoration: BoxDecoration(
                  color: MyColors.C_FFFFFF,
                  boxShadow: [
                    BoxShadow(
                      color: MyColors.C_53E88B.withOpacity(0.1),
                      blurRadius: 40,
                    )
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(20).r,
                  ),
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 20).r,
                        child: Text(
                          "Deliver To",
                          style:
                              Mystayles.BentonSansW100.copyWith(fontSize: 14),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 33.h,
                            width: 66.w,
                            child: SvgPicture.asset(MyImages.pin_logo),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Container(
                            child: Text(
                              "4517 Washington Ave. Manchester,\nKentucky 39495",
                              style: Mystayles.BentonSansW600.copyWith(
                                  fontSize: 15),
                            ),
                            width: 260.w,
                            height: 40.h,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 75).r,
                        child: GradientText(
                          'set location',
                          style:
                              Mystayles.BentonSansW400.copyWith(fontSize: 14),
                          gradient: const LinearGradient(
                              colors: [MyColors.C_53E88B, MyColors.C_15BE77]),
                        ),
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
