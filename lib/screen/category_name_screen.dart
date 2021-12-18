import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'event_details_screen.dart';
class CategoryNameScreen extends StatefulWidget {
  const CategoryNameScreen({Key? key}) : super(key: key);

  @override
  _CategoryNameScreenState createState() => _CategoryNameScreenState();
}

class _CategoryNameScreenState extends State<CategoryNameScreen> {
  final double coverHeight = 250;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    final top = coverHeight - profileHeight / 2;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Event',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                height: coverHeight,
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
                child: Image.asset(
                  'images/cover.png',
                  width: double.infinity,
                  height: coverHeight,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: top,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 60,
                  child: InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: profileHeight / 2,
                      backgroundColor: Colors.grey.shade800,
                      backgroundImage: AssetImage('images/rogram.jpg'),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 70.h,),
          Text('Category Name',style: TextStyle(fontSize: 27.sp,color: Color(0xff253975)),),
          SizedBox(height: 14.h,),
          Text('12 Event',style: TextStyle(color: Color(0xffFF4E62)),),
          SizedBox(height: 25.h,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EventDetailsScreen(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 15.h),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.r),
                        border: Border.all(
                          color: Color(0xffECECEF),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 14),
                        child: Row(
                          children: [
                            Container(
                              width: 97.w,
                              height: 79.h,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.r),
                                image: DecorationImage(
                                  image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT60dguBhWpsj-nCBiVRSqbiiag34s1qdQSiOg3C4OitjW7V-_I1SYpU870lEI1SnqKzwU&usqp=CAU'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text('12:00am - 2hours'),
                                      Spacer(),
                                      Container(
                                          width: 50.w,
                                          height: 20.h,
                                          decoration: BoxDecoration(
                                            color: Color(0xff11A38D)
                                                .withOpacity(0.3),
                                            borderRadius:
                                            BorderRadius.circular(5.r),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Active',
                                              style: TextStyle(
                                                color: Color(0xff11A38D),
                                                fontSize: 10.sp,
                                              ),
                                            ),
                                          )),
                                    ],
                                  ),
                                  SizedBox(height: 10.h),
                                  Text(
                                    'Event Name',
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      color: Color(0xff423E5B),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 5.h),
                                  Text(
                                    '12/12/2020',
                                    style: TextStyle(
                                      fontSize: 11.sp,
                                      color: Color(0xff4253975),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
