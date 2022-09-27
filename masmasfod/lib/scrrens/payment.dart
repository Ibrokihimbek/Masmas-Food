import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masmasfod/utils/colors.dart';
import 'package:masmasfod/utils/images.dart';
import 'package:masmasfod/utils/gradient_text.dart';
import 'package:masmasfod/utils/styles.dart';

class Payment_page extends StatelessWidget {
  Payment_page({super.key});

  Runes input = Runes('\u{24}');

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
                  "Confirm Order",
                  style: Mystayles.BentonSansW700.copyWith(fontSize: 25),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 145.h,
                width: 345.h,
                padding:
                    const EdgeInsets.symmetric(vertical: 22, horizontal: 0).r,
                decoration: BoxDecoration(
                  color: MyColors.C_FFFFFF,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                      blurRadius: 10,
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
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 20)
                                .r,
                            child: Text(
                              "Deliver To",
                              style: Mystayles.BentonSansW100.copyWith(
                                  fontSize: 14),
                            ),
                          ),
                          SizedBox(
                            width: 190.w,
                          ),
                          Container(
                            child: GradientText(
                              'Edit',
                              style: Mystayles.BentonSansW400.copyWith(
                                  fontSize: 14),
                              gradient: const LinearGradient(colors: [
                                MyColors.C_53E88B,
                                MyColors.C_15BE77
                              ]),
                            ),
                          ),
                        ],
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
                            width: 250.w,
                            height: 40.h,
                          ),
                        ],
                      ),
                      SizedBox(
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
                height: 120.h,
                width: 338.w,
                padding:
                    const EdgeInsets.symmetric(vertical: 22, horizontal: 24).r,
                decoration: BoxDecoration(
                  color: MyColors.C_FFFFFF,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                      blurRadius: 10,
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
                      Row(
                        children: [
                          Container(
                            child: Text(
                              "Payment Method",
                              style: Mystayles.BentonSansW100.copyWith(
                                  fontSize: 14),
                            ),
                          ),
                          SizedBox(
                            width: 160.w,
                          ),
                          Container(
                            child: GradientText(
                              'Edit',
                              style: Mystayles.BentonSansW400.copyWith(
                                  fontSize: 14),
                              gradient: const LinearGradient(colors: [
                                MyColors.C_53E88B,
                                MyColors.C_15BE77
                              ]),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 23.h,
                            width: 86.w,
                            child: Image.asset(MyImages.paypal),
                          ),
                          SizedBox(
                            width: 75.w,
                          ),
                          Container(
                            child: Text(
                              "2121 6352 8465 ****",
                              style: Mystayles.BentonSansW400.copyWith(
                                  fontSize: 14),
                            ),
                            width: 130.w,
                            height: 20.h,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 90.h,
              ),
              Container(
                height: 240.h,
                width: 338.w,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10).r,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(MyImages.image_bg3), fit: BoxFit.cover),
                  gradient: LinearGradient(
                    colors: [
                      MyColors.C_53E88B,
                      MyColors.C_15BE77,
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                      blurRadius: 10,
                    )
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(20).r,
                  ),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.r,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 18.w,
                          ),
                          Container(
                            child: Text(
                              "Sub-Total",
                              style: Mystayles.BentonSansBookW500.copyWith(
                                  fontSize: 16, color: MyColors.C_FEFEFF),
                            ),
                          ),
                          SizedBox(
                            width: 180.w,
                          ),
                          Container(
                            child: Text(
                              "120 ${String.fromCharCodes(input)}",
                              style: Mystayles.BentonSansBookW500.copyWith(
                                  fontSize: 16, color: MyColors.C_FEFEFF),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 20.w,
                              ),
                              Container(
                                child: Text(
                                  "Delivery Charge",
                                  style: Mystayles.BentonSansBookW500.copyWith(
                                      fontSize: 16, color: MyColors.C_FEFEFF),
                                ),
                              ),
                              SizedBox(
                                width: 143.w,
                              ),
                              Container(
                                child: Text(
                                  "10 ${String.fromCharCodes(input)}",
                                  style: Mystayles.BentonSansBookW500.copyWith(
                                      fontSize: 16, color: MyColors.C_FEFEFF),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 20.w,
                              ),
                              Container(
                                child: Text(
                                  "Discount",
                                  style: Mystayles.BentonSansBookW500.copyWith(
                                      fontSize: 16, color: MyColors.C_FEFEFF),
                                ),
                              ),
                              SizedBox(
                                width: 193.w,
                              ),
                              Container(
                                child: Text(
                                  "20 ${String.fromCharCodes(input)}",
                                  style: Mystayles.BentonSansBookW500.copyWith(
                                      fontSize: 16, color: MyColors.C_FEFEFF),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 20.w,
                              ),
                              Container(
                                child: Text(
                                  "Total",
                                  style: Mystayles.BentonSansBookW700.copyWith(
                                      fontSize: 20, color: MyColors.C_FEFEFF),
                                ),
                              ),
                              SizedBox(
                                width: 193.w,
                              ),
                              Container(
                                child: Text(
                                  "150 ${String.fromCharCodes(input)}",
                                  style: Mystayles.BentonSansBookW700.copyWith(
                                      fontSize: 20, color: MyColors.C_FEFEFF),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        child: Center(
                          child: GradientText(
                            'Place My Order',
                            style:
                                Mystayles.BentonSansW600.copyWith(fontSize: 16),
                            gradient: const LinearGradient(
                                colors: [MyColors.C_53E88B, MyColors.C_15BE77]),
                          ),
                        ),
                        decoration: const BoxDecoration(
                          color: MyColors.C_F6F6F6,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        height: 57.h,
                        width: 200.w,
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
