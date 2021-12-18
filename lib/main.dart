import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hakathon/screen/category_screen.dart';
import 'package:hakathon/screen/create_event_screen.dart';
import 'package:hakathon/screen/images/images_screen.dart';
import 'package:hakathon/screen/images/upload_image_screen.dart';
import 'package:hakathon/screen/login_screen.dart';
import 'package:hakathon/screen/lunch_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
      initialRoute: ('/lunch_screen'),
      routes: {
        '/lunch_screen' : (context) => LunchScreen(),
        '/login_screen' : (context) => LoginScreen(),
        '/images_screen' : (context) => ImagesScreen(),
        '/upload_screen' : (context) => UploadImageScreen(),
        '/categories_screen' : (context) => CategoryScreen(),
        '/create_event_screen' : (context) => CreateEventScreen(),
      },
    ),);
  }
}
