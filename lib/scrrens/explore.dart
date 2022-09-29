import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masmasfod/utils/colors.dart';
import 'package:masmasfod/utils/images.dart';
import 'package:masmasfod/utils/styles.dart';
import 'package:masmasfod/utils/gradient_text.dart';

bool isDark = false;

class Explore_Page extends StatefulWidget {
  const Explore_Page({super.key});

  @override
  State<Explore_Page> createState() => _Explore_PageState();
}

class _Explore_PageState extends State<Explore_Page> {
  @override
  Widget build(BuildContext context) {
    isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(MyImages.image_bg),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 60.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      "Find Your\nFavorite Food",
                      style: Mystayles.BentonSansW700.copyWith(fontSize: 32),
                    ),
                    SizedBox(
                      width: 80.w,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color:
                                Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                            blurRadius: 5,
                          )
                        ],
                        color: isDark
                            ? MyColors.C_FFFFFF.withOpacity(0.1)
                            : MyColors.C_FFFFFF,
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Image.asset(
                        MyImages.bell,
                      ),
                      width: 45.w,
                      height: 45.h,
                    ),
                  ],
                ),
                SizedBox(
                  height: 18.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20.w,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: isDark
                            ? MyColors.C_F4F4F4.withOpacity(0.1)
                            : MyColors.C_F9A84D.withOpacity(0.2),
                      ),
                      width: 267.w,
                      height: 50.h,
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: isDark
                                  ? MyColors.C_FFFFFF
                                  : MyColors.C_F9A84D,
                            ),
                            hintText: "What do you want to order?",
                            hintStyle: TextStyle(
                              color: isDark
                                  ? MyColors.C_FFFFFF
                                  : MyColors.C_F9A84D,
                            ),
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8).r,
                          decoration: BoxDecoration(
                            color: isDark
                                ? MyColors.C_F4F4F4.withOpacity(0.1)
                                : MyColors.C_F9A84D.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          width: 49.w,
                          height: 50.h,
                          child: Image.asset(
                              isDark ? MyImages.seting_dark : MyImages.setting),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                // buildBanner(),
                Row(
                  children: [
                    SizedBox(
                      width: 20.w,
                    ),
                    const Text(
                      "Nearest Restaurant",
                      style: Mystayles.BentonSansW700,
                    ),
                    SizedBox(
                      width: 180.w,
                    ),
                  ],
                ),
                SizedBox(
                  width: 20.r,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  // padding: EdgeInsets.only(top: 10).r,
                  height: 450.h,

                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildNearestRestaurantItem(
                              MyImages.image_vegan, 'Vegan Resto', '12 Mins'),
                          buildNearestRestaurantItem(
                              MyImages.image_healthy, 'Healthy Food', '8 Mins'),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildNearestRestaurantItem(
                              MyImages.good_food, 'Good Food', '12 Mins'),
                          buildNearestRestaurantItem(
                              MyImages.smart_resto, 'Smart Resto', '8 Mins'),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildNearestRestaurantItem(
                              MyImages.vegan_resto_1, 'Vegan Resto', '12 Mins'),
                          buildNearestRestaurantItem(MyImages.healthy_food_1,
                              'Healthy Food', '8 Mins'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildNearestRestaurantItem(
      String imageName, String name, String name1) {
    return Container(
      margin: EdgeInsets.only(right: 8, left: 8).r,
      width: 148.w,
      decoration: BoxDecoration(
        color: isDark ? MyColors.C_F4F4F4.withOpacity(0.1) : MyColors.C_FFFFFF,
        borderRadius: BorderRadius.all(Radius.circular(22)),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
            blurRadius: 2,
          )
        ],
      ),
      child: Row(
        children: [
          SizedBox(
            width: 20.w,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  child: Image.asset(imageName),
                  width: 90.w,
                  height: 90.h,
                ),
              ),
              Text(
                name,
                style: Mystayles.BentonSansW700,
              ),
              SizedBox(height: 8.h),
              Text(name1,
                  style: Mystayles.BentonSansW400.copyWith(color: Colors.grey))
            ],
          ),
        ],
      ),
    );
  }
}
