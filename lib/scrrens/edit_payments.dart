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
                  "Payment",
                  style: Mystayles.BentonSansW700.copyWith(fontSize: 25),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 17,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 73,
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
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Container(
                        height: 23,
                        width: 86,
                        child: Image.asset(MyImages.paypal),
                      ),
                      SizedBox(
                        width: 65,
                      ),
                      Container(
                        child: Text(
                          "2121 6352 8465 ****",
                          style:
                              Mystayles.BentonSansW400.copyWith(fontSize: 14),
                        ),
                        width: 144,
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
                height: 73,
                width: 370,
                padding:
                    const EdgeInsets.symmetric(vertical: 22, horizontal: 24),
                decoration: const BoxDecoration(
                  color: MyColors.C_F6F6F6,
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
                  child: Row(
                    children: [
                      Container(
                        height: 23,
                        width: 86,
                        child: Image.asset(MyImages.visa),
                      ),
                      SizedBox(
                        width: 65,
                      ),
                      Container(
                        child: Text(
                          "2121 6352 8465 ****",
                          style:
                              Mystayles.BentonSansW100.copyWith(fontSize: 14),
                        ),
                        width: 144,
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
                height: 73,
                width: 370,
                padding:
                    const EdgeInsets.symmetric(vertical: 22, horizontal: 24),
                decoration: const BoxDecoration(
                  color: MyColors.C_F6F6F6,
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
                  child: Row(
                    children: [
                      Container(
                        height: 23,
                        width: 86,
                        child: Image.asset(MyImages.payoner),
                      ),
                      SizedBox(
                        width: 65,
                      ),
                      Container(
                        child: Text(
                          "2121 6352 8465 ****",
                          style:
                              Mystayles.BentonSansW100.copyWith(fontSize: 14),
                        ),
                        width: 144,
                        height: 20,
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
