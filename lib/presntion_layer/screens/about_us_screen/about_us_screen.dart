import 'package:diva_project/models/about_us_model.dart';
import 'package:diva_project/presntion_layer/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_color.dart';
import '../../../core/app_style.dart';
import '../../../core/image_root.dart';
import '../../../models/drawer_model.dart';
import '../../widgets/about_us/about_us.dart';
import '../../widgets/components/about_us.dart';
import '../../widgets/drawer_content.dart';

class ABoutUsScreen extends StatelessWidget {
  const ABoutUsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      appBar: CustomAppBar(
        appBar: AppBar(),
        title: 'من نحن ',
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            children: [
              Text(
                'مركز تجميل \n عرائس وميك اب ',
                style: bodyStyle3,
              ),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: aboutUsModeList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => AboutUs(
                  aboutUsModel: aboutUsModeList[index],
                ),
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 8.h,
                  );
                },
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'ماذا \n نقدم من خدمات ',
                style: bodyStyle3.copyWith(color: AppColor.pinkColor),
              ),
              ListView.builder(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => CardView(
                        aboutUsModel: aboutUsModeListTwo[index],
                      ),
                  itemCount: aboutUsModeListTwo.length)
            ],
          ),
        ),
      ),
    );
  }
}
