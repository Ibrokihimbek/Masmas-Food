import 'package:flutter/material.dart';
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
    return MaterialApp( debugShowCheckedModeBanner: false,
      title: 'Masmas Food',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: Payment_page()
      // home: Call_Ringing_page(),
      // home: Edit_Location_1_page(),
      // home: Edit_Payments_page(),
      // home: Payment_Method_page(),
      // home: set_location_page(),
      // home: Signup_succes_notification_page(),
      // home: Upload_Photo_page(),
      home: Upload_Preview_page(),
    );
  }
}

