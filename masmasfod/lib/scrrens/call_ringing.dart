import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:masmasfod/utils/colors.dart';
import 'package:masmasfod/utils/images.dart';
import 'package:masmasfod/utils/styles.dart';
import 'package:masmasfod/utils/gradient_text.dart';

class Call_Ringing_page extends StatefulWidget {
  const Call_Ringing_page({super.key});

  @override
  State<Call_Ringing_page> createState() => _Call_Ringing_pageState();
}

String ring = 'Ringing . . .';
bool isMuted = false;
Image image = Image.asset(MyImages.speaker_icon,width: 78,height: 78,);

class _Call_Ringing_pageState extends State<Call_Ringing_page> {
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
              buildButton(MyImages.user_image),
              const SizedBox(
                height: 59,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Center(
                  child: Text(
                    "Richard Lewis",
                    style: Mystayles.BentonSansW700.copyWith(fontSize: 25),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Center(
                  child: Text(
                    ring,
                    style: Mystayles.BentonSansW100.copyWith(fontSize: 19),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 90,
                        ),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              isMuted = !isMuted;
                              if (isMuted) {
                                setState(() {
                                  ring = "15.23 Min";
                                  image = Image.asset(
                                    MyImages.mute,
                                    width: 78,
                                    height: 78,
                                  );
                                });
                              } else {
                                setState(() {
                                  ring = "Ringing . . .";
                                  image = Image.asset(
                                    MyImages.speaker_icon,
                                    width: 78,
                                    height: 78,
                                  );
                                });
                              }
                            },
                            child: image,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: MyColors.C_FFFFFF,
                              shape: CircleBorder(),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              ring = "Ringing cancel";
                            });
                          },
                          child: Image.asset(
                            MyImages.close,
                            width: 78,
                            height: 78,
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: MyColors.C_FFFFFF,
                            shape: CircleBorder(),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 70,
                    )
                  ],
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
