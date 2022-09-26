import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masmasfod/utils/colors.dart';
import 'package:masmasfod/utils/images.dart';
import 'package:masmasfod/utils/gradient_text.dart';
import 'package:masmasfod/utils/styles.dart';

class Edit_Location_1_page extends StatelessWidget {
  const Edit_Location_1_page({super.key});

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
                  "Shipping",
                  style: Mystayles.BentonSansW700.copyWith(fontSize: 25),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 130,
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
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                        child: Text(
                          "Order Location",
                          style:
                              Mystayles.BentonSansW100.copyWith(fontSize: 14),
                        ),
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
                              "8502 Preston Rd. Inglewood,\nMaine 98380",
                              style: Mystayles.BentonSansW600.copyWith(
                                  fontSize: 15),
                            ),
                            width: 280,
                            height: 40,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 170,
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
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                        child: Text(
                          "Deliver To",
                          style:
                              Mystayles.BentonSansW100.copyWith(fontSize: 14),
                        ),
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
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 75),
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
