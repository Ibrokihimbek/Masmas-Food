import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masmasfod/utils/colors.dart';
import 'package:masmasfod/utils/images.dart';
import 'package:masmasfod/utils/styles.dart';

class set_location_page extends StatelessWidget {
  const set_location_page({super.key});

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
                  "Set Your Location ",
                  style: Mystayles.BentonSansW400.copyWith(fontSize: 25),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  "This data will be displayed in your\naccount profile for security",
                  style: Mystayles.BentonSansBookW400.copyWith(
                      fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              buildButton(MyImages.pin_logo),
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
    height: 147,
    width: 370,
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 33,
                height: 33,
                child: SvgPicture.asset(imageName),
              ),
              const SizedBox(
                width: 14,
              ),
              Text(
                "Your Location",
                style: Mystayles.BentonSansBookW400.copyWith(fontSize: 15),
              ),
            ],
          ),
          Column(
            children: [
              const SizedBox(
                height: 27,
              ),
              Container(
                child:  Center(
                  child: Text(
                    "Set Location",
                    style: Mystayles.RubikW500.copyWith(fontSize: 14),
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
        ],
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
            height: 57,
            width: 157,
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
        const SizedBox(
          height: 60,
        )
      ],
    ),
  );
}
