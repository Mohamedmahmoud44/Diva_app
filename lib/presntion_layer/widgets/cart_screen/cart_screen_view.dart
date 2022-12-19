import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_color.dart';
import '../../../core/app_style.dart';
import '../../../models/cart_model.dart';

class CartScreenView extends StatelessWidget {
  final CartModel cartModel;

  const CartScreenView({Key? key, required this.cartModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 166.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              cartModel.img,
              width: 152.25.w,
              height: 145.28.h,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                cartModel.prodName,
                style: bodyStyle3.copyWith(color: AppColor.blackColor),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: AppColor.blackColor)),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {},
                    ),
                    const Text('1'),
                    IconButton(
                      icon: const Icon(
                        Icons.remove,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Text(
                cartModel.prodPrice.toString(),
                style: bodyStyle2.copyWith(
                    fontSize: 16, color: AppColor.pinkColor),
              )
            ],
          ),
          IconButton(
            icon: const Icon(
              Icons.cancel,
              color: AppColor.pinkColor,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
