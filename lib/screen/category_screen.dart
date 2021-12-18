import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hakathon/api/controllers/category_api_controller.dart';
import 'package:hakathon/model/categoy.dart';

import 'category_name_screen.dart';

class CategoryScreen extends StatefulWidget {

  const CategoryScreen({Key? key}) : super(key: key);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  late Future<List<Category>> _future;
  List<Category> _categories = <Category>[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _future = CategoryApiController().getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Category>>(
        future: _future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
            _categories = snapshot.data ?? [];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Categories',
                        style: TextStyle(
                          color: Color(0xff253975),
                          fontSize: 17.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        width: 28.w,
                        height: 28.h,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/create_event_screen');
                          },
                          icon: Icon(Icons.add),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: GridView.builder(
                      itemCount: _categories.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15,
                      ),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CategoryNameScreen(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(25.r),
                              border: Border.all(color: Colors.grey.shade300),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(8.w),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(35.r),
                                            image: DecorationImage(
                                              image: NetworkImage(_categories[index].image),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 10.h,
                                          left: 10.w,
                                          child: Container(
                                            height: 25.h,
                                            width: 80.w,
                                            decoration: BoxDecoration(
                                              color: Colors.white.withOpacity(0.5),
                                              borderRadius: BorderRadius.circular(25.r),
                                            ),
                                            child: Row(
                                              children: [
                                                Spacer(),
                                                Icon(
                                                  Icons.star,
                                                  size: 18,
                                                  color: Colors.white,
                                                ),
                                                Text(
                                                 '${_categories[index].eventsCount}' ,
                                                  style: TextStyle(
                                                    fontSize: 11.sp,
                                                    fontFamily: 'Cairo',
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Spacer(),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    _categories[index].nameEn,
                                    style: TextStyle(fontSize: 12.sp),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.warning, size: 80),
                  Text(
                    'Not Data',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 24),
                  ),
                ],
              ),
            );
          }
        },
      )
    );
  }
}
