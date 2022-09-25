import 'package:flutter/material.dart';
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
          padding: const EdgeInsets.only(top: 38, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {},
                child: SvgPicture.asset(
                  MyImages.icon_back,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  "Confirm Order",
                  style: Mystayles.BentonSansW700.copyWith(fontSize: 25),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 145,
                width: 370,
                padding:
                    const EdgeInsets.symmetric(vertical: 22, horizontal: 0),
                decoration: const BoxDecoration(
                  color: MyColors.C_FFFFFF,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 0.4),
                    ),
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
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
                                vertical: 0, horizontal: 20),
                            child: Text(
                              "Deliver To",
                              style: Mystayles.BentonSansW100.copyWith(
                                  fontSize: 14),
                            ),
                          ),
                          SizedBox(
                            width: 215,
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
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 33,
                            width: 66,
                            child: SvgPicture.asset(MyImages.pin_logo),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Text(
                              "4517 Washington Ave. Manchester,\nKentucky 39495",
                              style: Mystayles.BentonSansW600.copyWith(
                                  fontSize: 15),
                            ),
                            width: 280,
                            height: 40,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 120,
                width: 370,
                padding:
                    const EdgeInsets.symmetric(vertical: 22, horizontal: 24),
                decoration: const BoxDecoration(
                  color: MyColors.C_FFFFFF,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 0.4),
                    ),
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
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
                            width: 180,
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
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 23,
                            width: 86,
                            child: Image.asset(MyImages.paypal),
                          ),
                          SizedBox(
                            width: 91,
                          ),
                          Container(
                            child: Text(
                              "2121 6352 8465 ****",
                              style: Mystayles.BentonSansW400.copyWith(
                                  fontSize: 14),
                            ),
                            width: 144,
                            height: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 130,
              ),
              Container(
                height: 240,
                width: 370,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: const BoxDecoration(
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
                      color: Colors.grey,
                      offset: Offset(0, 0.4),
                    ),
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 18,
                          ),
                          Container(
                            child: Text(
                              "Sub-Total",
                              style: Mystayles.BentonSansBookW500.copyWith(
                                  fontSize: 16, color: MyColors.C_FEFEFF),
                            ),
                          ),
                          SizedBox(
                            width: 200,
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
                        width: 20,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                child: Text(
                                  "Delivery Charge",
                                  style: Mystayles.BentonSansBookW500.copyWith(
                                      fontSize: 16, color: MyColors.C_FEFEFF),
                                ),
                              ),
                              SizedBox(
                                width: 160,
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
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                child: Text(
                                  "Discount",
                                  style: Mystayles.BentonSansBookW500.copyWith(
                                      fontSize: 16, color: MyColors.C_FEFEFF),
                                ),
                              ),
                              SizedBox(
                                width: 215,
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
                            height: 15,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                child: Text(
                                  "Total",
                                  style: Mystayles.BentonSansBookW700.copyWith(
                                      fontSize: 20, color: MyColors.C_FEFEFF),
                                ),
                              ),
                              SizedBox(
                                width: 215,
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
                        height: 15,
                      ),
                      const SizedBox(
                        height: 10,
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
                        height: 57,
                        width: 400,
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
