import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masmasfod/scrrens/explore.dart';
import 'package:masmasfod/scrrens/explore_1_page.dart';
import 'package:masmasfod/utils/colors.dart';
import 'package:masmasfod/utils/images.dart';
import 'package:masmasfod/utils/styles.dart';
import 'package:masmasfod/utils/gradient_text.dart';
import 'package:masmasfod/utils/models.dart';

bool isDark = false;

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
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
                buildBanner(),
                SizedBox(height: 24.h),
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
                    InkWell(
                      onTap: () {
                        FocusManager.instance.primaryFocus?.unfocus();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Explore_Page(),
                          ),
                        );
                      },
                      child: Container(
                        clipBehavior: Clip.none,
                        child: Text(
                          "View More",
                          style: Mystayles.BentonSansW300.copyWith(
                              color: MyColors.C_F9A84D),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10).r,
                  height: 184.h,
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return buildNearestRestaurantItem(
                          NearestRestuarant.restaurant[index]);
                    },
                    itemCount: NearestRestuarant.restaurant.length,
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    primary: false,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10).r,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      const Text(
                        "Popular Menu",
                        style: Mystayles.BentonSansW700,
                      ),
                      SizedBox(
                        width: 205.w,
                      ),
                      InkWell(
                        onTap: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Explore_1_Page(),
                            ),
                          );
                        },
                        child: Container(
                          clipBehavior: Clip.none,
                          child: Text(
                            "View More",
                            style: Mystayles.BentonSansW600.copyWith(
                                color: MyColors.C_F9A84D),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10).r,
                  child: Container(
                    height: 90.h,
                    child: buildMenuItem(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildBanner() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Container(
        width: double.infinity.w,
        height: 150.h,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    isDark ? MyImages.image_bg4_dark : MyImages.bg_icecream),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15),
            gradient: const LinearGradient(
                colors: [MyColors.C_53E88B, MyColors.C_15BE77])),
        child: Stack(
          children: [
            Image.asset(MyImages.bg_icecream_1),
            Positioned(
              right: 20,
              top: 30,
              child: Text(
                "Special Deal For\nOctober",
                style: Mystayles.BentonSansW600.copyWith(
                    color: isDark ? MyColors.C_0D0D0D : Colors.white,
                    fontSize: 18),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 82,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: MyColors.C_FFFFFF),
                width: 82.w,
                height: 32.h,
                child: Center(
                  child: GradientText(
                    'Buy Now',
                    style: Mystayles.BentonSansW700.copyWith(fontSize: 12),
                    gradient: const LinearGradient(
                        colors: [MyColors.C_53E88B, MyColors.C_15BE77]),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildNearestRestaurantItem(NearestRestuarant restuarant) {
    return Container(
      margin: EdgeInsets.only(right: 8).r,
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              child: Image.asset(restuarant.imgUrl),
              width: 90.w,
              height: 90.h,
            ),
          ),
          Text(
            restuarant.title,
            style: Mystayles.BentonSansW700,
          ),
          SizedBox(height: 8.h),
          Text(restuarant.subTitle,
              style: Mystayles.BentonSansW400.copyWith(color: Colors.grey))
        ],
      ),
    );
  }

  Widget buildMenuItem() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        padding: const EdgeInsets.all(12).r,
        decoration: BoxDecoration(
          color:
              isDark ? MyColors.C_F4F4F4.withOpacity(0.1) : MyColors.C_FFFFFF,
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
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Image.asset(
                MyImages.image_menu1,
                width: 64.w,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 18.w),
            Column(
              children: [
                SizedBox(
                  height: 15.h,
                ),
                Text("Green Noddle"),
                SizedBox(height: 4.h),
                Text(
                  "Noodle Home",
                  style: Mystayles.BentonSansW500.copyWith(color: Colors.grey),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 95.w,
                ),
                Text(
                  "\$15",
                  style: Mystayles.BentonSansW700.copyWith(
                      color: MyColors.C_F9A84D, fontSize: 28),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
