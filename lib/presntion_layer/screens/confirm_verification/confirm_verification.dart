import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/compnnents.dart';
import '../new_password/new_password.dart';

class ConfirmVerification extends StatelessWidget {
  const ConfirmVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(
                    height: 50.h,
                  ),
                  Text(
                    'لقد تم ارسال رساله الى\n     هاتفك المحمول',
                    style: TextStyle(
                      fontSize: 25.sp,
                      color: const Color(0xff4A4B4D),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 56.r,
                        // height: 56.h,
                        decoration: BoxDecoration(
                            color: const Color(0xFff2F2F2),
                            borderRadius: BorderRadius.circular(10.r)),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   width: 25.w,
                      // ),
                      Container(
                        width: 56.r,
                        // height: 56.h,
                        decoration: BoxDecoration(
                            color: const Color(0xFff2F2F2),
                            borderRadius: BorderRadius.circular(10.r)),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   width: 25.w,
                      // ),
                      Container(
                        width: 56.r,
                        // height: 56.h,
                        decoration: BoxDecoration(
                            color: const Color(0xFff2F2F2),
                            borderRadius: BorderRadius.circular(10.r)),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   width: 25.w,
                      // ),
                      Container(
                        width: 56.r,
                        // height: 56.h,
                        decoration: BoxDecoration(
                            color: const Color(0xFff2F2F2),
                            borderRadius: BorderRadius.circular(10.r)),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Container(
                    width: 380.r,
                    height: 56.r,
                    decoration: BoxDecoration(
                        color: const Color(0xFfE50263),
                        borderRadius: BorderRadius.circular(
                          35.r,
                        )),
                    child: TextButton(
                      onPressed: () {
                        navigateTo(context, const NewPassword());
                      },
                      child: const Text(
                        'التالى',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // SizedBox(
                      //   width: 70.w,
                      // ),
                      Text(
                        'ارسال الرمز مره اخرى؟',
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: 14.sp,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'اضغط هنا',
                          style: TextStyle(
                            color: Color(0xFfE50263),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
