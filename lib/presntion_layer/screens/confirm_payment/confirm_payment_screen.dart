import 'package:diva_project/presntion_layer/home_page_layout.dart';
import 'package:diva_project/presntion_layer/widgets/compnnents.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConfirmPaymentScreen extends StatelessWidget {
  const ConfirmPaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              SizedBox(
                height: 150.h,
              ),
              CircleAvatar(
                radius: 50.r,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.done,
                  size: 60.sp,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 23.h,
              ),
              Text(
                'عمليه الشراء تمت بنجاح',
                style: TextStyle(
                  fontSize: 21.sp,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                'ستصلك رساله عبربريدك الالكتروني ببينات الشحنه',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: const Color(0xff949494),
                ),
              ),
              SizedBox(
                height: 9.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'رقم الشحنه هو',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 10.h,
                  ),
                  Text(
                    '123465',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 35.h,
              ),
              Container(
                width: 380.w,
                height: 42.h,
                decoration: BoxDecoration(
                    color: const Color(0xFfE50263),
                    borderRadius: BorderRadius.circular(
                      15.r,
                    )),
                child: TextButton(
                  onPressed: () {
                    navigateTo(context, const HomePageLayoutScreen());
                  },
                  child: const Text(
                    'الرجوع للرئيسيه',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
