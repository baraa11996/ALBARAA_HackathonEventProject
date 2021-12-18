import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hakathon/api/controllers/auth_api_controller.dart';
import 'package:hakathon/helpers/helpers.dart';
import 'package:hakathon/prefs/shared_pref_controller.dart';
import 'package:hakathon/widget/Text_filed.dart';

class LoginScreen extends StatefulWidget with Helpers{
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _phoneTextController;
  late TextEditingController _passwordTextController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _phoneTextController = TextEditingController();
    _passwordTextController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _phoneTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 160.h),
            Center(
              child: Text(
                'UCAS Events',
                style: TextStyle(
                  fontSize: 35.sp,
                  color: Color(0XFF253975),
                  fontFamily: 'Pacifico',
                ),
              ),
            ),
            SizedBox(height: 50.h),
            Text(
              'Welcome to back',
              style: TextStyle(
                color: Color(0xff443F5D),
                fontSize: 11.sp,
                fontFamily: 'Cairo',
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              'Login with',
              style: TextStyle(
                color: Color(0xff253975),
                fontSize: 22.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 32.h),
            Text(
              'Phone',
              style: TextStyle(
                color: Color(0xff040404),
                fontSize: 20.sp,
              ),
            ),
            SizedBox(height: 15.h),
            InputTextField(
              controller: _phoneTextController,
              hint: 'Enter your Phone',
            ),
            SizedBox(height: 15.h),
            Text(
              'Password',
              style: TextStyle(
                color: Color(0xff040404),
                fontSize: 20.sp,
              ),
            ),
            SizedBox(height: 15.h),
            InputTextField(
              obscureText: true,
              controller: _passwordTextController,
              hint: '******',
            ),
            SizedBox(height: 100.h),
            ElevatedButton(
              onPressed: () {
                performLogin();
                Navigator.pushReplacementNamed(context, '/categories_screen');
              },
              child: Text('Sing in'),
              style: ElevatedButton.styleFrom(
                  primary: Color(0xff253975),
                  minimumSize: Size(double.infinity, 50.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.r),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> performLogin() async {
    if (checkData()) {
      await login();
    }
  }

  bool checkData() {
    if (_phoneTextController.text.isNotEmpty &&
        _passwordTextController.text.isNotEmpty) {
      return true;
    }
    return false;
  }

  Future<void> login() async {

    bool status = await AuthApiController().login(
      context,
      mobile: _phoneTextController.text,
      password: _passwordTextController.text,
    );
    if (status) {
      print('test');
      SharedPrefController().loggedIn;
      Future.delayed(const Duration(seconds: 1), () {
        // SharedPreferencesController().setFirstVisit();
        Navigator.pushReplacementNamed(context, '/categories_screen');
      });
    }
  }
}
