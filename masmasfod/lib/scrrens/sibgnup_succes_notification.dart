import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masmasfod/utils/colors.dart';
import 'package:masmasfod/utils/images.dart';
import 'package:masmasfod/utils/styles.dart';
import 'package:masmasfod/utils/gradient_text.dart';

class Signup_succes_notification_page extends StatelessWidget {
  const Signup_succes_notification_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.C_FEFEFF,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(MyImages.image_bg2), fit: BoxFit.cover),
          ),
          padding: const EdgeInsets.only(top: 38, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 150,
              ),
              buildButton(MyImages.illustration),
              const SizedBox(
                height: 33,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Center(
                  child: GradientText(
                    'Congrats!',
                    style: Mystayles.BentonSansW700.copyWith(fontSize: 30),
                    gradient: const LinearGradient(
                        colors: [MyColors.C_53E88B, MyColors.C_15BE77]),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Center(
                  child: Text(
                    "Your Profile Is Ready To Use",
                    style: Mystayles.BentonSansW400.copyWith(fontSize: 23),
                  ),
                ),
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
    height: 162,
    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 86),
    child: Center(
      child: Container(
        width: 172,
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
