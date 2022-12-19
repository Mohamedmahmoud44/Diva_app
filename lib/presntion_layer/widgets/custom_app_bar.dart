import 'package:diva_project/presntion_layer/screens/notification_screen/notification_screen.dart';
import 'package:diva_project/presntion_layer/widgets/compnnents.dart';
import 'package:flutter/material.dart';

import '../../core/app_color.dart';
import '../../core/app_style.dart';
import '../../core/icon_root.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final AppBar appBar;

  const CustomAppBar({Key? key, required this.title, required this.appBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(title, style: titleStyle),
      leading: IconButton(
        onPressed: ()
        {
          navigateTo(context, NotificationScreen());
        },
        icon: Icon(
          Icons.notifications,
          color: Color(0xff4A4B4D),
        ),
      ),
      backgroundColor: Colors.white,
      actions: [
        Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const ImageIcon(
                AssetImage(IconRoot.sliderIcon),
                color: AppColor.lightBlackColor,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}

//IconButton(
//           onPressed: () {
//             navigateTo(context, const CartScreen());
//           },
//           icon: const ImageIcon(
//             AssetImage(
//               IconRoot.shopIcon,
//             ),
//             color: AppColor.lightBlackColor,
//           ),
//         ),
//         IconButton(
//           onPressed: () {
//             Navigator.of(context)
//                 .push(MaterialPageRoute(builder: (_) => const CartScreen()));
//           },
//           icon: const ImageIcon(
//             AssetImage(
//               IconRoot.searchIcon,
//             ),
//             color: AppColor.lightBlackColor,
//           ),
//         ),
