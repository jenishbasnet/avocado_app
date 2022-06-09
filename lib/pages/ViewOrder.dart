import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../components/k_textfield.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({Key? key}) : super(key: key);
  static const route = './order_details';

  Container imageContainer(double val) {
    return Container(
      margin: EdgeInsets.only(
        left: val,
      ),
      height: 70.h,
      width: 80.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.teal[400]!.withOpacity(0.1),
      ),
      child: Icon(
        Icons.image,
        color: Colors.teal[400],
        size: 55.h,
      ),
    );
  }

  Padding tfHeading(String text) {
    return Padding(
      padding: EdgeInsets.only(
        top: 10.h,
        bottom: 5.h,
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          color: Colors.black54,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //int userId = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Order Details',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            wordSpacing: 2,
            letterSpacing: 1,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.tealAccent[400],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: 30.w, right: 30.w, top: 10.h, bottom: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    imageContainer(0.w),
                    imageContainer(0.w),
                    imageContainer(0.w),
                  ],
                ),
              ),
              imageContainer(30.w),
              Padding(
                padding: EdgeInsets.only(
                  top: 8.h,
                  left: 35.w,
                  right: 35.w,
                ),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      tfHeading('Patiend Name'),
                      KTextField(
                        prefix: Padding(
                          padding:
                              const EdgeInsets.only(left: 10.0, right: 14.0),
                          child: Icon(
                            Icons.person_outline_rounded,
                            size: 20.w,
                            color: Colors.black26,
                          ),
                        ),
                        
                        initialVal: 'samayam bahadur bc',
                      ),
                      tfHeading('Title for medicine'),
                      KTextField(
                        prefix: Padding(
                          padding:
                              const EdgeInsets.only(left: 10.0, right: 14.0),
                          child: Icon(
                            Icons.person_outline_rounded,
                            size: 20.w,
                            color: Colors.black26,
                          ),
                        ),
                        
                        initialVal: 'samayam bahadur bc',
                      ),
                      tfHeading('Signature'),
                      KTextField(
                        prefix: Padding(
                          padding:
                              const EdgeInsets.only(left: 10.0, right: 14.0),
                          child: Icon(
                            Icons.person_outline_rounded,
                            size: 20.w,
                            color: Colors.black26,
                          ),
                        ),
                        
                        initialVal: 'samayam bahadur bc',
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 20.h,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.calendar_today,
                              size: 35.w,
                              color: Colors.tealAccent[400],
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Container(
                              width: 80.w,
                              height: 38.h,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 2.0,
                                  ),
                                ],
                                color: Colors.tealAccent[400],
                              ),
                              child: Center(
                                child: Text(
                                  '2022',
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 80.w,
                              height: 38.h,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 2.0,
                                  ),
                                ],
                                color: Colors.tealAccent[400],
                              ),
                              child: Center(
                                child: Text(
                                  '/02',
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 80.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                color: Colors.teal[400],
                              ),
                              child: Center(
                                child: Text(
                                  '/28',
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 30.h,
                        ),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.tealAccent[400],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8.0,
                              ),
                              child: Text(
                                'Saved',
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
