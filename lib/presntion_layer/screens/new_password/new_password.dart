import 'package:diva_project/presntion_layer/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/compnnents.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    Text(
                      'انشاء كلمه سر جديده',
                      style: TextStyle(
                        fontSize: 30.sp,
                        color: const Color(0xff4A4B4D),
                      ),
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    Container(
                      width: 380.w,
                      height: 56.h,
                      decoration: BoxDecoration(
                        color: const Color(0xFff2F2F2),
                        borderRadius: BorderRadius.circular(
                          35,
                        ),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              35,
                            ),
                          ),
                          hintText: 'كلمه السر',
                          suffixIcon: const Icon(Icons.lock),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 28.h,
                    ),
                    Container(
                      width: 380.w,
                      height: 56.h,
                      decoration: BoxDecoration(
                        color: const Color(0xFff2F2F2),
                        borderRadius: BorderRadius.circular(
                          35,
                        ),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              35,
                            ),
                          ),
                          hintText: 'اعاده كلمه السر',
                          suffixIcon: const Icon(Icons.lock),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 42,
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
                          navigateAndFinish(context, const LoginScreen());
                        },
                        child: const Text(
                          'تغير',
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
        ),
      ),
    );
  }
}
