import 'package:diva_project/core/app_color.dart';
import 'package:diva_project/models/cart_model.dart';
import 'package:diva_project/presntion_layer/widgets/compnnents.dart';
import 'package:diva_project/presntion_layer/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_style.dart';
import '../../widgets/cart_screen/cart_screen_view.dart';
import '../payment_tracking/payment_tracking_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'السله',
        appBar: AppBar(),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => CartScreenView(
                          cartModel: cartModelList[index],
                        ),
                    separatorBuilder: (context, index) => const Divider(),
                    itemCount: cartModelList.length),
                const Divider(
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'ملخص',
                    style: titleStyle.copyWith(
                      fontSize: 20,
                      color: const Color(0xFF2D2942),
                    ),
                  ),
                ),
                Container(
                  width: 380.r,
                  height: 136.r,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(color: AppColor.darkGreyHeader),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '   المنتجات : 7 ',
                        style: bodyStyle4.copyWith(fontSize: 14),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '   رسوم الشحن  ',
                            style: bodyStyle4.copyWith(fontSize: 14),
                          ),
                          Text(
                            'RR ',
                            style: bodyStyle4.copyWith(fontSize: 14),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '  المجموع  ',
                            style: bodyStyle4.copyWith(fontSize: 14),
                          ),
                          Text(
                            'RR ',
                            style: bodyStyle4.copyWith(fontSize: 14),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
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
                      navigateTo(context, const PaymentTrackingScreen());
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
