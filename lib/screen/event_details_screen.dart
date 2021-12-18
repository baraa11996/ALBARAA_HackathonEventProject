import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventDetailsScreen extends StatefulWidget {
  const EventDetailsScreen({Key? key}) : super(key: key);

  @override
  _EventDetailsScreenState createState() => _EventDetailsScreenState();
}

class _EventDetailsScreenState extends State<EventDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios_outlined),
            color: Color(0xff403B58)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Event Name',
          style: TextStyle(fontSize: 20.sp, color: Color(0xff403B58)),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.add),
              color: Color(0xff403B58)),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt),
            color: Color(0xff403B58),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 206.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT60dguBhWpsj-nCBiVRSqbiiag34s1qdQSiOg3C4OitjW7V-_I1SYpU870lEI1SnqKzwU&usqp=CAU'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 25.h,
                  left: 21,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(2),
                        margin: EdgeInsets.only(
                          bottom: 5.h,
                        ),
                        height: 25.h,
                        width: 85.w,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.star),
                            Text(
                              '2 Hours',
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 25.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.star),
                            Text(
                              '2 Hours',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Text(
              'Event Name Appear Here',
              style: TextStyle(
                fontSize: 20.sp,
                color: Color(0xff403B58),
              ),
            ),
            SizedBox(height: 7.h),
            Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.grey.shade500,
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      '09:00 am',
                      style: TextStyle(
                        color: Color(0xff8E8B9D),
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.grey.shade500,
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      '12/12/2020',
                      style: TextStyle(
                        color: Color(0xff8E8B9D),
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.grey.shade500,
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      '10 Images',
                      style: TextStyle(
                        color: Color(0xff8E8B9D),
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 13.h),
            Row(
              children: [
                Icon(
                  Icons.add_location,
                  color: Color(0xff403B58),
                  size: 24.w,
                ),
                SizedBox(width: 7.w),
                Text(
                  'Location',
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Color(0xff403B58),
                  ),
                ),
              ],
            ),
            SizedBox(height: 26.h),
            Row(
              children: [
                Icon(
                  Icons.info,
                  color: Color(0xff403B58),
                  size: 24.w,
                ),
                SizedBox(width: 7.w),
                Text(
                  'Info',
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Color(0xff403B58),
                  ),
                ),
              ],
            ),
            SizedBox(height: 6.h),
            Text(
              'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. ',
              style: TextStyle(
                color: Color(0xff807C94),
                fontSize: 18.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
