import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masmasfod/scrrens/onboard_1.dart';
import 'package:masmasfod/scrrens/onboard_2.dart';
import 'package:masmasfod/scrrens/onboarding.dart';
import 'scrrens/payment_method_page.dart';
import 'scrrens/upload_photo_page.dart';
import 'scrrens/upload_preview.dart';
import 'scrrens/set_location_page.dart';
import 'scrrens/sibgnup_succes_notification.dart';
import 'scrrens/call_ringing.dart';
import 'scrrens/edit_payments.dart';
import 'scrrens/eddit_location_1.dart';
import 'scrrens/payment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Masmas Food',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: child);
      },
      child: Onboarding_page()
    );
  }
}
