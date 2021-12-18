import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hakathon/widget/Text_filed.dart';

class CreateEventScreen extends StatefulWidget {
  const CreateEventScreen({Key? key}) : super(key: key);

  @override
  _CreateEventScreenState createState() => _CreateEventScreenState();
}

class _CreateEventScreenState extends State<CreateEventScreen> {
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_outlined),
          color: Colors.black45,
        ),
        title: Text(
          'New event',
          style: TextStyle(color: Colors.black45),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name',
                  style: TextStyle(
                    color: Color(0xff040404),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 5.h),
                InputTextField(
                  controller: _phoneTextController,
                  hint: 'Enter your Name',
                ),
                SizedBox(height: 22.h),
                Text(
                  'Date',
                  style: TextStyle(
                    color: Color(0xff040404),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 5.h),
                TextField(
                  cursorColor: Color(0xff707070),
                  decoration: InputDecoration(
                    constraints: BoxConstraints(
                      maxHeight: 60.h,
                      maxWidth: double.infinity,
                    ),
                    hintText: '21 December 2021',
                    hintStyle: TextStyle(
                      color: Color(0xff9A9696),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.r),
                      borderSide: BorderSide(
                        color: Color(0xff040404),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.r),
                      borderSide: BorderSide(
                        color: Color(0xff040404),
                      ),
                    ),
                  ),
                  obscureText: false,
                ),
                SizedBox(height: 22.h),
                Text(
                  'Time',
                  style: TextStyle(
                    color: Color(0xff040404),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 5.h),
                TextField(
                  cursorColor: Color(0xff707070),
                  decoration: InputDecoration(
                    constraints: BoxConstraints(
                      maxHeight: 60.h,
                      maxWidth: double.infinity,
                    ),
                    hintText: '12:00 PM',
                    hintStyle: TextStyle(
                      color: Color(0xff9A9696),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.r),
                      borderSide: BorderSide(
                        color: Color(0xff040404),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.r),
                      borderSide: BorderSide(
                        color: Color(0xff040404),
                      ),
                    ),
                  ),
                  obscureText: false,
                ),
                SizedBox(height: 22.h),
                Text(
                  'Hours',
                  style: TextStyle(
                    color: Color(0xff040404),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 5.h),
                InputTextField(
                  controller: _phoneTextController,
                  hint: 'Enter your Hours',
                ),
                SizedBox(height: 22.h),
                Text(
                  'Location',
                  style: TextStyle(
                    color: Color(0xff040404),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 5.h),
                InputTextField(
                  controller: _phoneTextController,
                  hint: 'Enter your Location',
                ),
                SizedBox(height: 22.h),
                Text(
                  'Information',
                  style: TextStyle(
                    color: Color(0xff040404),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 5.h),
                TextField(
                  maxLength: 100,
                  maxLines: 7,
                  decoration: InputDecoration(
                    hintText:'Enter the description' ,
                    hintStyle: TextStyle(
                      color: Color(0xff9A9696),
                    ),
                    focusedBorder: border(),
                    enabledBorder: border(),
                  ),
                ),
                SizedBox(height: 18.h),
                Text(
                  'Capture',
                  style: TextStyle(
                    color: Color(0xff040404),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 25.h),
                Container(
                  alignment: Alignment.center,
                  height: 200.h,
                  width: 170.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        width: 1,
                        color: Colors.grey,
                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.add),),
                      SizedBox(width: 10,),
                      Text('Add'),
                    ],
                  ),
                ),
                SizedBox(height: 25.h,),
                ElevatedButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, '/');
                  },
                  child: Text('Create New Event'),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff253975),
                      minimumSize: Size(double.infinity, 50.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.r),
                      )
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }

  OutlineInputBorder border({Color borderColor = Colors.grey}) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: borderColor,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(10),
    );
  }
}
