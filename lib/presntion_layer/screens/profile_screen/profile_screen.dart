import 'package:diva_project/core/app_color.dart';
import 'package:diva_project/core/image_root.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CircleAvatar(
                      radius: 50.r,
                      backgroundColor: Colors.white,
                      child: SizedBox(
                        width: 109.r,
                        height: 48.r,
                        child: Image.asset(
                          ImageRoot.divaLogo,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 90.r,
                      height: 26.r,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.camera_alt,
                          color: Colors.grey,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                Text('Diva center',
                    style:
                        bodyStyle2.copyWith(color: AppColor.darkPurpleColor)),
                TextButton(
                  onPressed: () {},
                  child: Text('تسجيل خروج',
                      style:
                          bodyStyle4.copyWith(color: AppColor.darkGreyHeader)),
                ),
                Container(
                  width: 380.w,
                  // height: 54.h,
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: const Color(0xFFF8F8F8)),
                    color: Colors.white,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'الاسم',
                      hintStyle: TextStyle(
                        fontSize: 15.sp,
                        color: const Color(0xFFB6B7B7),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Container(
                  width: 380.w,
                  // height: 54.h,
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    border: Border.all(color: const Color(0xffF8F8F8)),
                    color: Colors.white,
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'البريد الالكترونى',
                      hintStyle: TextStyle(
                        fontSize: 15.sp,
                        color: const Color(0xffB6B7B7),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Container(
                  width: 380.w,
                  // height: 54.h,
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    border: Border.all(color: const Color(0xffF8F8F8)),
                    color: Colors.white,
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: 'رقم الهاتف',
                      hintStyle: TextStyle(
                        fontSize: 15.sp,
                        color: const Color(0xffB6B7B7),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Container(
                  width: 380.w,
                  // height: 54,
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    border: Border.all(color: const Color(0xffF8F8F8)),
                    color: Colors.white,
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'الرقم السري',
                      hintStyle: TextStyle(
                        fontSize: 15.sp,
                        color: const Color(0xffB6B7B7),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Container(
                  width: 380.w,
                  // height: 54.h,
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    border: Border.all(color: const Color(0xffF8F8F8)),
                    color: Colors.white,
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'اعاده كتابه الرقم السري',
                      hintStyle: TextStyle(
                        fontSize: 15.sp,
                        color: const Color(0xffB6B7B7),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  width: 380.r,
                  height: 56.r,
                  decoration: BoxDecoration(
                    color: const Color(0xFfE50263),
                    borderRadius: BorderRadius.circular(
                      15.r,
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'حفظ',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
