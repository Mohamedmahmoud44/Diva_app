import 'package:diva_project/core/image_root.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/compnnents.dart';
import '../chat_detalis/chat_details_screen.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: SafeArea(
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => buildUsersItem(context),
          itemCount: 8,
        ),
      ),
    ));
  }

  Widget buildUsersItem(context) => InkWell(
        onTap: () {
          navigateTo(
            context,
            const ChatDetailsScreen(),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 28.r,
                        backgroundImage: AssetImage(ImageRoot.girlLogo),
                      ),
                      CircleAvatar(
                        radius: 6.r,
                        backgroundColor: Colors.white,
                      ),
                      CircleAvatar(
                        radius: 5.r,
                        backgroundColor: Colors.green,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'mona tarek',
                          style: TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'كم سعر فستان السواريه؟',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'منذ 3 دقائق',
                    style: TextStyle(
                      fontSize: 11.sp,
                      color: const Color(0xff7C7D7E),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
