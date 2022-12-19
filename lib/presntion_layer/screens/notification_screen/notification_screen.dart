import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_color.dart';
import '../../../core/app_style.dart';
import '../../../core/image_root.dart';
import '../../../models/drawer_model.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/drawer_content.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

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
        title: 'اتصل بنا',
      ),
      body:  SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: ListView.separated(
              itemBuilder: (context,index)=>buildNotification(),
              separatorBuilder: (context,index)=> SizedBox(height: 10,),
              itemCount: 8,
            )
          ),
        ) ,
      ),
    );
  }



  Widget buildNotification()=>Container(
    width: 369,
    height: 53,
    child: Column(

      children: [
        Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.brightness_1,
                color: Color(0xffE50263),
                size: 10,
              ),
              SizedBox(width: 6,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 280,

                    child: Text(
                      'تخفيضات اليوم من سنتر ديفا بمناسبه الجمعه البيضا',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 16.sp,
                        color: Color(0xff4A4B4D),
                      ),
                    ),
                  ),
                  Text(
                    'الان',
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 12.sp,
                      color: Color(0xffB6B7B7),
                    ),
                  ),
                ],
              )

            ],
          ),
        )
      ],
    ),
  );
}
