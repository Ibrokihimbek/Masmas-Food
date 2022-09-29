import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masmasfod/scrrens/explore.dart';
import 'package:masmasfod/utils/colors.dart';
import 'package:masmasfod/utils/images.dart';
import 'package:masmasfod/utils/styles.dart';
import 'package:masmasfod/utils/models.dart';
import 'package:masmasfod/utils/gradient_text.dart';

bool isDark = false;

class Explore_1_Page extends StatefulWidget {
  const Explore_1_Page({super.key});

  @override
  State<Explore_1_Page> createState() => _Explore_1_PageState();
}

class _Explore_1_PageState extends State<Explore_1_Page> {
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
                      child:  TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: isDark
                            ? MyColors.C_FFFFFF
                            : MyColors.C_F9A84D,
                            ),
                            hintText: "What do you want to order?",
                            hintStyle: TextStyle(color: isDark
                                ? MyColors.C_FFFFFF
                                : MyColors.C_F9A84D,),
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
                          child: Image.asset(isDark ? MyImages.seting_dark : MyImages.setting),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20.w,
                    ),
                    const Text(
                      "Popular Menu",
                      style: Mystayles.BentonSansW700,
                    ),
                    SizedBox(
                      width: 180.w,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10).r,
                  child: Container(
                    height: 500.h,
                    child: ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        return buildMenuItem(PopularMenu.menus[index]);
                      },
                      itemCount: PopularMenu.menus.length,
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      primary: false,
                      scrollDirection: Axis.vertical,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(PopularMenu menus) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        margin: const EdgeInsets.only(bottom: 10).r,
        padding: const EdgeInsets.all(12).r,
        decoration: BoxDecoration(
          color: isDark ? MyColors.C_F4F4F4.withOpacity(0.1) : MyColors.C_FFFFFF,
          borderRadius: BorderRadius.all(Radius.circular(22)),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.2),
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
                menus.imgUrl,
                width: 64.w,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 18.w),
            Column(
              children: [
                Text(menus.title),
                SizedBox(height: 4.h),
                Text(
                  menus.subTitle,
                  style: Mystayles.BentonSansW500.copyWith(color: Colors.grey),
                ),
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "\$${menus.price}",
                    style: Mystayles.BentonSansW700.copyWith(
                        color: MyColors.C_F9A84D, fontSize: 28),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
