import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masmasfod/utils/colors.dart';
import 'package:masmasfod/utils/images.dart';
import 'package:masmasfod/utils/styles.dart';

class Upload_Preview_page extends StatelessWidget {
  const Upload_Preview_page({super.key});

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
                  "Upload Your Photo Profile",
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
                height: 59,
              ),
              buildButton(MyImages.photo),
              const SizedBox(
                height: 17,
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
    height: 245,
    padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 86),
    child: Center(
      child: Container(
        height: 300,
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
              ),
            ),
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
