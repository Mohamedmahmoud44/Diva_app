import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/compnnents.dart';
import '../confirm_verification/confirm_verification.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Text(
                  'اعاده ارسال كلمه المرور',
                  style: TextStyle(
                    fontSize: 30.sp,
                    color: const Color(0xff4A4B4D),
                  ),
                ),
                Text(
                  'يرجى ادخال رقم هاتفك لتلقي رابط الانشاء\nلانشاء كلمه مرور جديده عبر هاتفك المحمول ',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: const Color(0xff7C7D7E),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: 380.w,
                  height: 56.h,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(
                      35,
                    ),
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          35,
                        ),
                      ),
                      hintText: 'البريد الالكتروني',
                      suffixIcon: const Icon(Icons.email),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: 380.w,
                  height: 56.h,
                  decoration: BoxDecoration(
                      color: const Color(0xFfE50263),
                      borderRadius: BorderRadius.circular(
                        35,
                      )),
                  child: TextButton(
                    onPressed: () {
                      navigateTo(
                        context,
                        const ConfirmVerification(),
                      );
                    },
                    child: const Text(
                      'ارسال',
                      style: TextStyle(
                        color: Colors.white,
                      ),
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
