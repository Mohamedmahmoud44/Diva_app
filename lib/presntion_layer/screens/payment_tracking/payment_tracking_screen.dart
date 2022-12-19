import 'package:diva_project/presntion_layer/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_color.dart';
import '../../../core/app_style.dart';
import '../../../core/image_root.dart';
import '../../../models/drawer_model.dart';
import '../../widgets/compnnents.dart';
import '../../widgets/drawer_content.dart';
import '../confirm_payment/confirm_payment_screen.dart';

class PaymentTrackingScreen extends StatelessWidget {
  const PaymentTrackingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
        title: 'متابعه الدفع ',
      ),
      drawer: Drawer(
        backgroundColor: AppColor.whiteColor,
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 80.r,
                    height: 80.r,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: AppColor.pinkColor.withOpacity(0.2)),
                        borderRadius: BorderRadius.circular(80)),
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      // backgroundImage: AssetImage(ImageRoot.divaLogo),
                      child: Image.asset(
                        ImageRoot.divaLogo,
                        width: 110,
                        height: 49,
                      ),
                    ),
                  ),
                  Text(
                    'Diva center',
                    style: bodyStyle2.copyWith(color: AppColor.purpleColor),
                  ),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => DrawerContent(
                drawerModel: drawerList[index],
              ),
              itemCount: drawerList.length,
            )
          ],
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 380.r,
                  height: 58.r,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[200],
                  ),
                  child: Center(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'الاسم الاول',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  width: 380.w,
                  height: 58.h,
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: Colors.grey[200],
                  ),
                  child: Center(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'الاسم الاخير',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  width: 380.w,
                  height: 58.h,
                  padding: EdgeInsets.only(right: 20.w, left: 20.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: Colors.grey[200],
                  ),
                  child: Center(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'اسم الشركه (اختياري)',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  width: 380.w,
                  height: 58.h,
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: Colors.grey[200],
                  ),
                  child: Center(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'رقم المنزل واسم الشارع / الحي',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  width: 380.w,
                  height: 58.h,
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[200],
                  ),
                  child: Center(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'الهاتف ',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'العنوان',
                  style: TextStyle(
                    fontSize: 24.sp,
                    color: Colors.black,
                  ),
                ),
                Container(
                  width: 380.w,
                  height: 58.h,
                  padding: const EdgeInsets.only(right: 7, left: 7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[200],
                  ),
                  child: Center(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.place_sharp,
                          color: AppColor.blackColor,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'المدينه',
                            style: TextStyle(
                              fontSize: 24.sp,
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            width: 170.w,
                            height: 66.h,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey[200],
                            ),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 40.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'الرقم البريدي',
                            style: TextStyle(
                              fontSize: 24.sp,
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            width: 170.w,
                            height: 66.h,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey[200],
                            ),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.w,
                ),
                Container(
                  width: 380.r,
                  height: 52.r,
                  decoration: BoxDecoration(
                    color: const Color(0xFfE50263),
                    borderRadius: BorderRadius.circular(
                      15.r,
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {
                      navigateTo(context, const ConfirmPaymentScreen());
                    },
                    child: const Text(
                      'متابعه',
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
